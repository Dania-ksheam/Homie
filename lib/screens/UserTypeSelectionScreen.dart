// import 'package:flutter/material.dart';
// import 'package:test/extantion.dart'; // Ensure extension is imported for localization

// class UserTypeSelectionScreen extends StatelessWidget {
//   const UserTypeSelectionScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(context.t.selectUserType),  // Localization for AppBar title
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.language),
//             onPressed: () {
//               // Implement locale change functionality here
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // Logo
//               Image.asset(
//                 'images/Homie_logo.png',  // Ensure this path is correct
//                 height: 120.0,
//               ),
//               const SizedBox(height: 20),

//               // Welcome message
//               Column(
//                 children: [
//                   Text(
//                     context.t.welcome,  // "Welcome"
//                     style: const TextStyle(
//                         fontSize: 40, fontWeight: FontWeight.bold),
//                     textAlign: TextAlign.center,
//                   ),
//                   Text(
//                     context.t.toHomie,  // "to Homie"
//                     style: const TextStyle(
//                         fontSize: 40, fontWeight: FontWeight.bold),
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 10),

//               // Small description text
//               Text(
//                 context.t.yourOneStopSolution,  // "Your One Stop Solution for Home Needs"
//                 style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 40),

//               // Client Button
//               ElevatedButton(
//                 onPressed: () {
//                   // Navigate to client-specific screen
//                 },
//                 child: Column(
//                   children: [
//                     Text(context.t.iAmClient),  // "I am a Client"
//                     Text(
//                       context.t.findTrustedProfessionals,  // "Find trusted professionals for home services"
//                       style: const TextStyle(fontSize: 12),
//                       textAlign: TextAlign.center,
//                     ),
//                   ],
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   minimumSize: Size(double.infinity, 60), // Full width button
//                 ),
//               ),
//               const SizedBox(height: 20),

//               // Service Provider Button
//               ElevatedButton(
//                 onPressed: () {
//                   // Navigate to service provider-specific screen
//                 },
//                 child: Column(
//                   children: [
//                     Text(context.t.iAmServiceProvider),  // "I am a Service Provider"
//                     Text(
//                       context.t.joinAndGrowNetwork,  // "Join us and offer your service to a growing network"
//                       style: const TextStyle(fontSize: 12),
//                       textAlign: TextAlign.center,
//                     ),
//                   ],
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   minimumSize: Size(double.infinity, 60), // Full width button
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:test/extantion.dart'; // Import localization extension

// class UserTypeSelectionScreen extends StatelessWidget {
//   final Function() changeLocale;

//   const UserTypeSelectionScreen({Key? key, required this.changeLocale})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(context.t.selectUserType), // Localized title
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.language),
//             onPressed: changeLocale, // Call the changeLocale function
//           ),
//         ], // Added missing comma here
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // Bigger Logo
//               Image.asset(
//                 'images/Homie_logo.png', // Ensure the path is correct
//                 height: 180.0, // Increased size for the logo
//               ),
//               const SizedBox(height: 20),

//               // Welcome Text with a nice size
//               Column(
//                 children: [
//                   Text(
//                     context.t.welcome, // Localized "Welcome"
//                     style: const TextStyle(
//                         fontSize: 26, fontWeight: FontWeight.bold),
//                     textAlign: TextAlign.center,
//                   ),
//                   Text(
//                     context.t.toHomie, // Localized "to Homie"
//                     style: const TextStyle(
//                         fontSize: 26, fontWeight: FontWeight.bold),
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(height: 20),
//                   Text(
//                     context.t.yourOneStopSolution, // Localized description
//                     style: const TextStyle(
//                         fontSize: 14, fontWeight: FontWeight.normal),
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 40),

//               // "I am a Client" Button with larger size and description inside the button
//               ElevatedButton(
//                 onPressed: () {
//                   // Handle navigation or functionality for Client
//                 },
//                 style: ElevatedButton.styleFrom(
//                   minimumSize: const Size(double.infinity, 60), // Larger button
//                   padding: const EdgeInsets.symmetric(vertical: 15),
//                 ),
//                 child: Column(
//                   children: [
//                     Text(
//                       context.t.iAmClient, // Localized text
//                       style: const TextStyle(fontSize: 20),
//                     ),
//                     const SizedBox(height: 8),
//                     Text(
//                       context.t.findTrustedProfessionals, // Localized description
//                       style: const TextStyle(fontSize: 12),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),

//               // "I am a Service Provider" Button with larger size and description inside the button
//               ElevatedButton(
//                 onPressed: () {
//                   // Handle navigation or functionality for Service Provider
//                 },
//                 style: ElevatedButton.styleFrom(
//                   minimumSize: const Size(double.infinity, 60), // Larger button
//                   padding: const EdgeInsets.symmetric(vertical: 15),
//                 ),
//                 child: Column(
//                   children: [
//                     Text(
//                       context.t.iAmServiceProvider, // Localized text
//                       style: const TextStyle(fontSize: 20),
//                     ),
//                     const SizedBox(height: 8),
//                     Text(
//                       context.t.joinAndGrowNetwork, // Localized description
//                       style: const TextStyle(fontSize: 12),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
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
