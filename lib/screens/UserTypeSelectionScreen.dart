
import 'package:flutter/material.dart';
import 'SignUpScreen.dart'; // Ensure this file exists
import 'package:test/extantion.dart'; // Ensure this file exists

class UserTypeSelectionScreen extends StatelessWidget {
  final Function() changeLocale;

  const UserTypeSelectionScreen({
    Key? key,
    required this.changeLocale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(context.t.selectLanguage), // Localized title
        actions: [
          IconButton(
            icon: const Icon(Icons.language),
            onPressed: changeLocale, // Handle language change
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo
            Image.asset(
              'images/Homie_logo.png', // Ensure this path is correct
              height: 120.0,
            ),
            const SizedBox(height: 20),

           // Welcome message
            Text(
              context.t.welcomeToHomie, // Localized "Welcome to Homie"
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              context.t.yourOneStepSolution, // Localized tagline
              style: const TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),

            // Client Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(
                      userType: "Client",
                      changeLocale: changeLocale, // Pass changeLocale function
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 60),
              ),
              child: Text(context.t.client), // Localized "I am a Client"
            ),
            const SizedBox(height: 20),

            // Service Provider Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(
                      userType: "Service Provider",
                      changeLocale: changeLocale, // Pass changeLocale function
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 60),
              ),
              child: Text(context.t.serviceProvider), // Localized "I am a Service Provider"
            ),
          ],
        ),
      ),
    );
  }
}
