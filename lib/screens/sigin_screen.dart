
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test/extantion.dart'; // Localization extension
import 'Venderhome.dart'; // Vendor Home Screen
import 'MainScreen.dart'; // Main Screen
import 'UserTypeSelectionScreen.dart'; // Sign Up Screen (you need to create this)

class SignInScreen extends StatefulWidget {
  final Function() changeLocale;

  const SignInScreen({Key? key, required this.changeLocale}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  Future<void> _logIn() async {
    final String email = _emailController.text.trim();
    final String password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      _showErrorDialog(context.t.error, context.t.fill_all_fields);
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      final response = await http.post(
        Uri.parse('https://192.168.0.109:7127/api/Auth/log-in'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'email': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> responseBody = json.decode(response.body);
        final String message = responseBody['message'];
        final String userId = responseBody['userId'];

        if (message.contains('Vendor')) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => VendorHomeScreen()),
          );
        } else if (message.contains('User')) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => MainScreen(userId: userId)),
          );
        } else {
          _showErrorDialog(context.t.error, context.t.unexpected_response);
        }
      } else {
        _showErrorDialog(context.t.login_failed, context.t.invalid_credentials);
      }
    } catch (error) {
      _showErrorDialog(context.t.error, context.t.connection_error);
      print('Login error: $error'); // Debug log
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _showErrorDialog(String title, String content) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.t.ok),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.t.signIn)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png', height: 150), // Logo Image
              const SizedBox(height: 30),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: context.t.email,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: context.t.password,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: _isLoading ? null : _logIn,
                child: _isLoading
                    ? const CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      )
                    : Text(context.t.signIn),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(context.t.notAMember),
                  TextButton(
                    onPressed: () {
                      // Navigate to the sign up page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserTypeSelectionScreen(
                            // Pass the user type, adjust based on the context
                            changeLocale: widget.changeLocale, // Pass the changeLocale function
                          ),
                        ),
                      );
                    },
                    child: Text(context.t.signUpHere),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
