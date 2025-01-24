
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test/extantion.dart';

class SignUpScreen extends StatefulWidget {
  final String userType;
  final VoidCallback changeLocale; // Function to change language

  const SignUpScreen({
    Key? key,
    required this.userType,
    required this.changeLocale,
  }) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _experienceController = TextEditingController();

  String _selectedCategory = "Electrician";
  String _selectedGender = "Male";
  String? _selectedAge;
  String? _avatarPath;

  // Backend URL
  final String backendUrl = "https://192.168.0.109:7127/api/User"; // Replace with your backend URL

  @override
  Widget build(BuildContext context) {
    final isServiceProvider = widget.userType == context.t.serviceProvider;

    return Scaffold(
      appBar: AppBar(
        title: Text("${context.t.signUp} - ${widget.userType}"),
        actions: [
          IconButton(
            icon: const Icon(Icons.language),
            onPressed: widget.changeLocale, // Call the passed language change function
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              // Name Input
              _buildTextField(
                controller: _nameController,
                label: context.t.username,
                validatorMessage: context.t.userNameRequired,
              ),
              const SizedBox(height: 20),

              // Email Input
              _buildTextField(
                controller: _emailController,
                label: context.t.email,
                keyboardType: TextInputType.emailAddress,
                validatorMessage: context.t.emailRequired,
                validator: (value) =>
                    value != null && value.contains('@') ? null : context.t.emailRequired,
              ),
              const SizedBox(height: 20),

              // Password Input
              _buildTextField(
                controller: _passwordController,
                label: context.t.password,
                isPassword: true,
                validatorMessage: context.t.passwordRequired,
              ),
              const SizedBox(height: 20),

              // Confirm Password Input
              _buildTextField(
                controller: _confirmPasswordController,
                label: context.t.confirmPassword,
                isPassword: true,
                validator: (value) {
                  if (value != _passwordController.text) {
                    return context.t.passwordMismatch;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // Address Input
              _buildTextField(
                controller: _addressController,
                label: context.t.address,
                validatorMessage: context.t.addressRequired,
              ),
              const SizedBox(height: 20),

              // Phone Input with Libyan Country Code
              Row(
                children: [
                  Container(
                    width: 80,
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Text(
                      "00218",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: _buildTextField(
                      controller: _phoneController,
                      label: context.t.phoneNumber,
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty || value.length < 8) {
                          return context.t.phoneNumberInvalid;
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Age Selection Dropdown
              DropdownButtonFormField<String>(
                value: _selectedAge,
                onChanged: (value) {
                  setState(() {
                    _selectedAge = value!;
                  });
                },
                items: List.generate(
                  82, // Generate ages from 18 to 99
                  (index) => (18 + index).toString(),
                ).map((age) {
                  return DropdownMenuItem<String>(
                    value: age,
                    child: Text(age),
                  );
                }).toList(),
                decoration: InputDecoration(labelText: context.t.age),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return context.t.age;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // Gender Selection
              Text(context.t.gender, style: const TextStyle(fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Radio<String>(
                    value: "Male",
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                  ),
                  Text(context.t.male),
                  Radio<String>(
                    value: "Female",
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                  ),
                  Text(context.t.female),
                ],
              ),
              const SizedBox(height: 20),

              // Service Provider Fields
              if (isServiceProvider) ...[
                _buildTextField(
                  controller: _bioController,
                  label: context.t.bio,
                  validatorMessage: context.t.allFieldsRequired,
                ),
                const SizedBox(height: 20),

                _buildTextField(
                  controller: _experienceController,
                  label: context.t.experience,
                  keyboardType: TextInputType.number,
                  validatorMessage: context.t.allFieldsRequired,
                ),
                const SizedBox(height: 20),

                DropdownButtonFormField<String>(
                  value: _selectedCategory,
                  onChanged: (value) {
                    setState(() {
                      _selectedCategory = value!;
                    });
                  },
                  items: [
                    context.t.electrician,
                    context.t.cleaning,
                    context.t.plumbing,
                    context.t.teaching,
                  ]
                      .map((category) => DropdownMenuItem<String>(
                            value: category,
                            child: Text(category),
                          ))
                      .toList(),
                  decoration: InputDecoration(labelText: context.t.category),
                ),
                const SizedBox(height: 20),
              ],

              // Submit Button
              ElevatedButton(
                onPressed: _submitForm,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: Text(context.t.signUp),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper to build text fields
  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    String? validatorMessage,
    TextInputType keyboardType = TextInputType.text,
    bool isPassword = false,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
      keyboardType: keyboardType,
      obscureText: isPassword,
      validator: validator ?? 
          (value) {
            if (value == null || value.isEmpty) {
              return validatorMessage;
            }
            return null;
          },
    );
  }

  // Form submission
  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      final userDetails = {
        "name": _nameController.text,
        "email": _emailController.text,
        "phone": "00218${_phoneController.text}",
        "address": _addressController.text,
        "age": _selectedAge,
        "gender": _selectedGender,
        "category": widget.userType == context.t.serviceProvider ? _selectedCategory : null,
        "bio": _bioController.text,
        "experience": _experienceController.text,
        "avatar": _avatarPath,
      };

      // Send data to backend
      try {
        final response = await http.post(
          Uri.parse(backendUrl),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(userDetails),
        );

        if (response.statusCode == 200) {
          // Handle successful sign-up
          print("Sign-up successful!");
        } else {
          // Handle error
          print("Failed to sign up: ${response.body}");
        }
      } catch (error) {
        print("Error connecting to the backend: $error");
      }
    }
  }
}
