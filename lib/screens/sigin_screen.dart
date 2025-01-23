// // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // import 'package:http/http.dart' as http;
// // // // // // // // // import 'dart:convert'; // For encoding data into JSON
// // // // // // // // // import 'package:test/extantion.dart'; // Replace 'test' with your actual project name
// // // // // // // // // import 'profile_screen.dart';
// // // // // // // // // import 'UserTypeSelectionScreen.dart';

// // // // // // // // // class SignInScreen extends StatefulWidget {
// // // // // // // // //   final String userType;
// // // // // // // // //   final Function() changeLocale;

// // // // // // // // //   SignInScreen({
// // // // // // // // //     Key? key,
// // // // // // // // //     required this.userType,
// // // // // // // // //     required this.changeLocale,
// // // // // // // // //   }) : super(key: key);

// // // // // // // // //   @override
// // // // // // // // //   _SignInScreenState createState() => _SignInScreenState();
// // // // // // // // // }

// // // // // // // // // class _SignInScreenState extends State<SignInScreen> {
// // // // // // // // //   final TextEditingController _emailController = TextEditingController();
// // // // // // // // //   final TextEditingController _passwordController = TextEditingController();
// // // // // // // // //   bool _isPasswordVisible = false; // State variable for password visibility

// // // // // // // // //   // Function to handle Sign In
// // // // // // // // //   Future<void> _signIn(BuildContext context) async {
// // // // // // // // //     final email = _emailController.text;
// // // // // // // // //     final password = _passwordController.text;

// // // // // // // // //     // Ensure email and password are not empty
// // // // // // // // //     if (email.isEmpty || password.isEmpty) {
// // // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // //         SnackBar(content: Text("Email and Password cannot be empty.")),
// // // // // // // // //       );
// // // // // // // // //       return;
// // // // // // // // //     }

// // // // // // // // //     final Map<String, dynamic> requestBody = {
// // // // // // // // //       'email': email,
// // // // // // // // //       'password': password,
// // // // // // // // //     };

// // // // // // // // //     try {
// // // // // // // // //       // Send HTTP POST request for login
// // // // // // // // //       final response = await http.post(
// // // // // // // // //         Uri.parse('https://192.168.0.109:7127/api/Auth/log-in'),
// // // // // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // // // // //         body: json.encode(requestBody),
// // // // // // // // //       );

// // // // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // //         final Map<String, dynamic> responseBody = json.decode(response.body);
// // // // // // // // //         final userId =
// // // // // // // // //             responseBody['id']; // Assuming the response contains the user ID

// // // // // // // // //         ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // //           SnackBar(content: Text("Login successful")),
// // // // // // // // //         );

// // // // // // // // //         // Navigate to the ProfileScreen with the userId
// // // // // // // // //         Navigator.pushReplacement(
// // // // // // // // //           context,
// // // // // // // // //           MaterialPageRoute(
// // // // // // // // //             builder: (context) => ProfileScreen(
// // // // // // // // //               userId: userId, // Pass userId to ProfileScreen
// // // // // // // // //               onLocaleChange: widget.changeLocale,
// // // // // // // // //             ),
// // // // // // // // //           ),
// // // // // // // // //         );
// // // // // // // // //       } else {
// // // // // // // // //         // Handle invalid credentials
// // // // // // // // //         ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // //           SnackBar(content: Text("Invalid credentials. Please try again.")),
// // // // // // // // //         );
// // // // // // // // //       }
// // // // // // // // //     } catch (e) {
// // // // // // // // //       // Handle network or server errors
// // // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // //         SnackBar(content: Text("Error occurred: $e")),
// // // // // // // // //       );
// // // // // // // // //     }
// // // // // // // // //   }

// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Scaffold(
// // // // // // // // //       appBar: AppBar(
// // // // // // // // //         title: Text(context.t.sign_in), // Localized "Sign In"
// // // // // // // // //         actions: [
// // // // // // // // //           IconButton(
// // // // // // // // //             icon: const Icon(Icons.language),
// // // // // // // // //             onPressed: widget.changeLocale, // Trigger locale change
// // // // // // // // //           ),
// // // // // // // // //         ],
// // // // // // // // //       ),
// // // // // // // // //       body: Padding(
// // // // // // // // //         padding: const EdgeInsets.all(16.0),
// // // // // // // // //         child: SingleChildScrollView(
// // // // // // // // //           child: Column(
// // // // // // // // //             children: [
// // // // // // // // //               // Logo Section
// // // // // // // // //               Image.asset(
// // // // // // // // //                 'images/Homie_logo.png', // Ensure this path is correct
// // // // // // // // //                 height: 400.0,
// // // // // // // // //                 width: 300,
// // // // // // // // //               ),
// // // // // // // // //               const SizedBox(height: 20),

// // // // // // // // //               // Email Field
// // // // // // // // //               TextField(
// // // // // // // // //                 controller: _emailController,
// // // // // // // // //                 decoration: InputDecoration(
// // // // // // // // //                   labelText: context.t.email, // Localized "Email"
// // // // // // // // //                   border: const OutlineInputBorder(),
// // // // // // // // //                 ),
// // // // // // // // //               ),
// // // // // // // // //               const SizedBox(height: 20),

// // // // // // // // //               // Password Field with Toggle Visibility
// // // // // // // // //               TextField(
// // // // // // // // //                 controller: _passwordController,
// // // // // // // // //                 obscureText: !_isPasswordVisible,
// // // // // // // // //                 decoration: InputDecoration(
// // // // // // // // //                   labelText: context.t.password, // Localized "Password"
// // // // // // // // //                   border: const OutlineInputBorder(),
// // // // // // // // //                   suffixIcon: IconButton(
// // // // // // // // //                     icon: Icon(
// // // // // // // // //                       _isPasswordVisible
// // // // // // // // //                           ? Icons.visibility
// // // // // // // // //                           : Icons.visibility_off,
// // // // // // // // //                     ),
// // // // // // // // //                     onPressed: () {
// // // // // // // // //                       setState(() {
// // // // // // // // //                         _isPasswordVisible = !_isPasswordVisible;
// // // // // // // // //                       });
// // // // // // // // //                     },
// // // // // // // // //                   ),
// // // // // // // // //                 ),
// // // // // // // // //               ),
// // // // // // // // //               const SizedBox(height: 40),

// // // // // // // // //               // Sign In Button
// // // // // // // // //               ElevatedButton(
// // // // // // // // //                 onPressed: () => _signIn(context),
// // // // // // // // //                 child: Text(context.t.sign_in), // Localized "Sign In"
// // // // // // // // //               ),

// // // // // // // // //               const SizedBox(height: 20),

// // // // // // // // //               // Non-Member Section
// // // // // // // // //               Row(
// // // // // // // // //                 mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // //                 children: [
// // // // // // // // //                   Text(context.t.notAMember), // Localized "Not a member?"
// // // // // // // // //                   TextButton(
// // // // // // // // //                     onPressed: () {
// // // // // // // // //                       // Navigate to the sign-up screen
// // // // // // // // //                       Navigator.pushReplacement(
// // // // // // // // //                         context,
// // // // // // // // //                         MaterialPageRoute(
// // // // // // // // //                           builder: (context) => UserTypeSelectionScreen(
// // // // // // // // //                             changeLocale: widget.changeLocale,
// // // // // // // // //                           ),
// // // // // // // // //                         ),
// // // // // // // // //                       );
// // // // // // // // //                     },
// // // // // // // // //                     child:
// // // // // // // // //                         Text(context.t.signUpHere), // Localized "Sign up here"
// // // // // // // // //                   ),
// // // // // // // // //                 ],
// // // // // // // // //               ),
// // // // // // // // //             ],
// // // // // // // // //           ),
// // // // // // // // //         ),
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }
// // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // import 'package:http/http.dart' as http;
// // // // // // // // // import 'dart:convert'; // For encoding data into JSON
// // // // // // // // // import 'package:test/extantion.dart';
// // // // // // // // // import 'profile_screen.dart';
// // // // // // // // // import 'UserTypeSelectionScreen.dart';

// // // // // // // // // class SignInScreen extends StatefulWidget {
// // // // // // // // //   final String userType;
// // // // // // // // //   final Function() changeLocale;

// // // // // // // // //   SignInScreen({
// // // // // // // // //     Key? key,
// // // // // // // // //     required this.userType,
// // // // // // // // //     required this.changeLocale,
// // // // // // // // //   }) : super(key: key);

// // // // // // // // //   @override
// // // // // // // // //   _SignInScreenState createState() => _SignInScreenState();
// // // // // // // // // }

// // // // // // // // // class _SignInScreenState extends State<SignInScreen> {
// // // // // // // // //   final TextEditingController _emailController = TextEditingController();
// // // // // // // // //   final TextEditingController _passwordController = TextEditingController();
// // // // // // // // //   bool _isPasswordVisible = false; // State variable for password visibility

// // // // // // // // //   // Function to handle Sign In
// // // // // // // // //   Future<void> _signIn(BuildContext context) async {
// // // // // // // // //     final email = _emailController.text;
// // // // // // // // //     final password = _passwordController.text;

// // // // // // // // //     // Ensure email and password are not empty
// // // // // // // // //     if (email.isEmpty || password.isEmpty) {
// // // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // //         SnackBar(content: Text("Email and Password cannot be empty.")),
// // // // // // // // //       );
// // // // // // // // //       return;
// // // // // // // // //     }

// // // // // // // // //     final Map<String, dynamic> requestBody = {
// // // // // // // // //       'email': email,
// // // // // // // // //       'password': password,
// // // // // // // // //     };

// // // // // // // // //     try {
// // // // // // // // //       // Send HTTP POST request for login
// // // // // // // // //       final response = await http.post(
// // // // // // // // //         Uri.parse('https://192.168.0.109:7127/api/Auth/log-in'),
// // // // // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // // // // //         body: json.encode(requestBody),
// // // // // // // // //       );

// // // // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // //         final Map<String, dynamic> responseBody = json.decode(response.body);
// // // // // // // // //         final userId = responseBody['id'];  // Assuming the response contains the user ID

// // // // // // // // //         ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // //           SnackBar(content: Text("Login successful")),
// // // // // // // // //         );

// // // // // // // // //         // Navigate to the ProfileScreen with the userId
// // // // // // // // //         Navigator.pushReplacement(
// // // // // // // // //           context,
// // // // // // // // //           MaterialPageRoute(
// // // // // // // // //             builder: (context) => ProfileScreen(
// // // // // // // // //               userId: userId,  // Pass userId to ProfileScreen
// // // // // // // // //               onLocaleChange: widget.changeLocale,
// // // // // // // // //             ),
// // // // // // // // //           ),
// // // // // // // // //         );
// // // // // // // // //       } else {
// // // // // // // // //         // Handle invalid credentials
// // // // // // // // //         ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // //           SnackBar(content: Text("Invalid credentials. Please try again.")),
// // // // // // // // //         );
// // // // // // // // //       }
// // // // // // // // //     } catch (e) {
// // // // // // // // //       // Handle network or server errors
// // // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // //         SnackBar(content: Text("Error occurred: $e")),
// // // // // // // // //       );
// // // // // // // // //     }
// // // // // // // // //   }

// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Scaffold(
// // // // // // // // //       appBar: AppBar(
// // // // // // // // //         title: Text(context.t.sign_in), // Localized "Sign In"
// // // // // // // // //         actions: [
// // // // // // // // //           IconButton(
// // // // // // // // //             icon: const Icon(Icons.language),
// // // // // // // // //             onPressed: widget.changeLocale, // Trigger locale change
// // // // // // // // //           ),
// // // // // // // // //         ],
// // // // // // // // //       ),
// // // // // // // // //       body: Padding(
// // // // // // // // //         padding: const EdgeInsets.all(16.0),
// // // // // // // // //         child: SingleChildScrollView(
// // // // // // // // //           child: Column(
// // // // // // // // //             children: [
// // // // // // // // //               // Logo Section
// // // // // // // // //               Image.asset(
// // // // // // // // //                 'images/Homie_logo.png', // Ensure this path is correct
// // // // // // // // //                 height: 400.0,
// // // // // // // // //                 width: 300,
// // // // // // // // //               ),
// // // // // // // // //               const SizedBox(height: 20),

// // // // // // // // //               // Email Field
// // // // // // // // //               TextField(
// // // // // // // // //                 controller: _emailController,
// // // // // // // // //                 decoration: InputDecoration(
// // // // // // // // //                   labelText: context.t.email, // Localized "Email"
// // // // // // // // //                   border: const OutlineInputBorder(),
// // // // // // // // //                 ),
// // // // // // // // //               ),
// // // // // // // // //               const SizedBox(height: 20),

// // // // // // // // //               // Password Field with Toggle Visibility
// // // // // // // // //               TextField(
// // // // // // // // //                 controller: _passwordController,
// // // // // // // // //                 obscureText: !_isPasswordVisible,
// // // // // // // // //                 decoration: InputDecoration(
// // // // // // // // //                   labelText: context.t.password, // Localized "Password"
// // // // // // // // //                   border: const OutlineInputBorder(),
// // // // // // // // //                   suffixIcon: IconButton(
// // // // // // // // //                     icon: Icon(
// // // // // // // // //                       _isPasswordVisible
// // // // // // // // //                           ? Icons.visibility
// // // // // // // // //                           : Icons.visibility_off,
// // // // // // // // //                     ),
// // // // // // // // //                     onPressed: () {
// // // // // // // // //                       setState(() {
// // // // // // // // //                         _isPasswordVisible = !_isPasswordVisible;
// // // // // // // // //                       });
// // // // // // // // //                     },
// // // // // // // // //                   ),
// // // // // // // // //                 ),
// // // // // // // // //               ),
// // // // // // // // //               const SizedBox(height: 40),

// // // // // // // // //               // Sign In Button
// // // // // // // // //               ElevatedButton(
// // // // // // // // //                 onPressed: () => _signIn(context),
// // // // // // // // //                 child: Text(context.t.sign_in), // Localized "Sign In"
// // // // // // // // //               ),

// // // // // // // // //               const SizedBox(height: 20),

// // // // // // // // //               // Non-Member Section
// // // // // // // // //               Row(
// // // // // // // // //                 mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // //                 children: [
// // // // // // // // //                   Text(context.t.notAMember), // Localized "Not a member?"
// // // // // // // // //                   TextButton(
// // // // // // // // //                     onPressed: () {
// // // // // // // // //                       // Navigate to the sign-up screen
// // // // // // // // //                       Navigator.pushReplacement(
// // // // // // // // //                         context,
// // // // // // // // //                         MaterialPageRoute(
// // // // // // // // //                           builder: (context) => UserTypeSelectionScreen(
// // // // // // // // //                             changeLocale: widget.changeLocale,
// // // // // // // // //                           ),
// // // // // // // // //                         ),
// // // // // // // // //                       );
// // // // // // // // //                     },
// // // // // // // // //                     child: Text(context.t.signUpHere), // Localized "Sign up here"
// // // // // // // // //                   ),
// // // // // // // // //                 ],
// // // // // // // // //               ),
// // // // // // // // //             ],
// // // // // // // // //           ),
// // // // // // // // //         ),
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }
// // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // import 'package:http/http.dart' as http;
// // // // // // // // import 'dart:convert'; // For encoding/decoding JSON
// // // // // // // // import 'profile_screen.dart';
// // // // // // // // import 'UserTypeSelectionScreen.dart';

// // // // // // // // class SignInScreen extends StatefulWidget {
// // // // // // // //   final String userType;
// // // // // // // //   final Function() changeLocale;

// // // // // // // //   SignInScreen({
// // // // // // // //     Key? key,
// // // // // // // //     required this.userType,
// // // // // // // //     required this.changeLocale,
// // // // // // // //   }) : super(key: key);

// // // // // // // //   @override
// // // // // // // //   _SignInScreenState createState() => _SignInScreenState();
// // // // // // // // }

// // // // // // // // class _SignInScreenState extends State<SignInScreen> {
// // // // // // // //   final TextEditingController _emailController = TextEditingController();
// // // // // // // //   final TextEditingController _passwordController = TextEditingController();
// // // // // // // //   bool _isPasswordVisible = false;

// // // // // // // //   // Function to handle Sign In
// // // // // // // //   Future<void> _signIn(BuildContext context) async {
// // // // // // // //     final email = _emailController.text.trim();
// // // // // // // //     final password = _passwordController.text.trim();

// // // // // // // //     if (email.isEmpty || password.isEmpty) {
// // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // //         const SnackBar(content: Text("Email and Password cannot be empty.")),
// // // // // // // //       );
// // // // // // // //       return;
// // // // // // // //     }

// // // // // // // //     final requestBody = {
// // // // // // // //       'email': email,
// // // // // // // //       'password': password,
// // // // // // // //     };

// // // // // // // //     try {
// // // // // // // //       final response = await http.post(
// // // // // // // //         Uri.parse('https://192.168.0.109:7127/api/Auth/log-in'),
// // // // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // // // //         body: json.encode(requestBody),
// // // // // // // //       );

// // // // // // // //       // Ensure the server responded successfully
// // // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // //         // Ensure the response contains valid JSON
// // // // // // // //         if (response.headers['content-type']?.contains('application/json') ==
// // // // // // // //             true) {
// // // // // // // //           final responseBody = json.decode(response.body);
// // // // // // // //           final userId = responseBody['id']; // Assuming 'id' is returned

// // // // // // // //           // Navigate to ProfileScreen
// // // // // // // //           ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // //             const SnackBar(content: Text("Login successful")),
// // // // // // // //           );

// // // // // // // //           Navigator.pushReplacement(
// // // // // // // //             context,
// // // // // // // //             MaterialPageRoute(
// // // // // // // //               builder: (context) => ProfileScreen(
// // // // // // // //                 userId: userId,
// // // // // // // //                 onLocaleChange: widget.changeLocale,
// // // // // // // //               ),
// // // // // // // //             ),
// // // // // // // //           );
// // // // // // // //         } else {
// // // // // // // //           // Handle invalid content type
// // // // // // // //           ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // //             SnackBar(
// // // // // // // //                 content: Text("Unexpected response format: ${response.body}")),
// // // // // // // //           );
// // // // // // // //         }
// // // // // // // //       } else {
// // // // // // // //         // Handle error responses
// // // // // // // //         final errorResponse = json.decode(response.body);
// // // // // // // //         final errorMessage = errorResponse['message'] ?? "Invalid credentials.";
// // // // // // // //         ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // //           SnackBar(content: Text(errorMessage)),
// // // // // // // //         );
// // // // // // // //       }
// // // // // // // //     } catch (e) {
// // // // // // // //       // Handle exceptions (e.g., network or decoding errors)
// // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // //         SnackBar(content: Text("An error occurred: $e")),
// // // // // // // //       );
// // // // // // // //     }
// // // // // // // //   }

// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return Scaffold(
// // // // // // // //       appBar: AppBar(
// // // // // // // //         title: Text('Sign In'), // Adjust this for localization
// // // // // // // //         actions: [
// // // // // // // //           IconButton(
// // // // // // // //             icon: const Icon(Icons.language),
// // // // // // // //             onPressed: widget.changeLocale,
// // // // // // // //           ),
// // // // // // // //         ],
// // // // // // // //       ),
// // // // // // // //       body: Padding(
// // // // // // // //         padding: const EdgeInsets.all(16.0),
// // // // // // // //         child: SingleChildScrollView(
// // // // // // // //           child: Column(
// // // // // // // //             children: [
// // // // // // // //               Image.asset(
// // // // // // // //                 'images/Homie_logo.png', // Ensure this path is correct
// // // // // // // //                 height: 400.0,
// // // // // // // //                 width: 300.0,
// // // // // // // //               ),
// // // // // // // //               const SizedBox(height: 20),

// // // // // // // //               // Email Field
// // // // // // // //               TextField(
// // // // // // // //                 controller: _emailController,
// // // // // // // //                 decoration: const InputDecoration(
// // // // // // // //                   labelText: "Email",
// // // // // // // //                   border: OutlineInputBorder(),
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //               const SizedBox(height: 20),

// // // // // // // //               // Password Field with Visibility Toggle
// // // // // // // //               TextField(
// // // // // // // //                 controller: _passwordController,
// // // // // // // //                 obscureText: !_isPasswordVisible,
// // // // // // // //                 decoration: InputDecoration(
// // // // // // // //                   labelText: "Password",
// // // // // // // //                   border: const OutlineInputBorder(),
// // // // // // // //                   suffixIcon: IconButton(
// // // // // // // //                     icon: Icon(
// // // // // // // //                       _isPasswordVisible
// // // // // // // //                           ? Icons.visibility
// // // // // // // //                           : Icons.visibility_off,
// // // // // // // //                     ),
// // // // // // // //                     onPressed: () {
// // // // // // // //                       setState(() {
// // // // // // // //                         _isPasswordVisible = !_isPasswordVisible;
// // // // // // // //                       });
// // // // // // // //                     },
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //               const SizedBox(height: 40),

// // // // // // // //               // Sign In Button
// // // // // // // //               ElevatedButton(
// // // // // // // //                 onPressed: () => _signIn(context),
// // // // // // // //                 child: const Text("Sign In"),
// // // // // // // //               ),

// // // // // // // //               const SizedBox(height: 20),

// // // // // // // //               // Non-Member Section
// // // // // // // //               Row(
// // // // // // // //                 mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // //                 children: [
// // // // // // // //                   const Text("Not a member?"),
// // // // // // // //                   TextButton(
// // // // // // // //                     onPressed: () {
// // // // // // // //                       Navigator.pushReplacement(
// // // // // // // //                         context,
// // // // // // // //                         MaterialPageRoute(
// // // // // // // //                           builder: (context) => UserTypeSelectionScreen(
// // // // // // // //                             changeLocale: widget.changeLocale,
// // // // // // // //                           ),
// // // // // // // //                         ),
// // // // // // // //                       );
// // // // // // // //                     },
// // // // // // // //                     child: const Text("Sign up here"),
// // // // // // // //                   ),
// // // // // // // //                 ],
// // // // // // // //               ),
// // // // // // // //             ],
// // // // // // // //           ),
// // // // // // // //         ),
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }
// // // // // // // import 'package:flutter/material.dart';
// // // // // // // import 'package:http/http.dart' as http;
// // // // // // // import 'dart:convert'; // For encoding/decoding JSON
// // // // // // // import 'user_home.dart';
// // // // // // // import 'Venderhome.dart';
// // // // // // // import 'UserTypeSelectionScreen.dart';

// // // // // // // class SignInScreen extends StatefulWidget {
// // // // // // //   final Function() changeLocale;

// // // // // // //   const SignInScreen({
// // // // // // //     Key? key,
// // // // // // //     required this.changeLocale,
// // // // // // //   }) : super(key: key);

// // // // // // //   @override
// // // // // // //   _SignInScreenState createState() => _SignInScreenState();
// // // // // // // }

// // // // // // // class _SignInScreenState extends State<SignInScreen> {
// // // // // // //   final TextEditingController _emailController = TextEditingController();
// // // // // // //   final TextEditingController _passwordController = TextEditingController();
// // // // // // //   bool _isPasswordVisible = false;

// // // // // // //   // Function to handle Sign In
// // // // // // //   Future<void> _signIn(BuildContext context) async {
// // // // // // //     final email = _emailController.text.trim(); // Get the entered email
// // // // // // //     final password = _passwordController.text.trim(); // Get the entered password

// // // // // // //     // Validate inputs
// // // // // // //     if (email.isEmpty || password.isEmpty) {
// // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // //         const SnackBar(content: Text("Email and Password cannot be empty.")),
// // // // // // //       );
// // // // // // //       return;
// // // // // // //     }

// // // // // // //     // Prepare request body
// // // // // // //     final requestBody = {
// // // // // // //       'email': email,
// // // // // // //       'password': password,
// // // // // // //     };

// // // // // // //     try {
// // // // // // //       // Call the sign-in API
// // // // // // //       final response = await http.post(
// // // // // // //         Uri.parse('https://192.168.0.109:7127/api/Auth/log-in'),
// // // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // // //         body: json.encode(requestBody),
// // // // // // //       );

// // // // // // //       // Handle the API response
// // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // //         final responseBody = json.decode(response.body);

// // // // // // //         // If user type is "User"
// // // // // // //         if (responseBody['message'] == "Welcome User!") {
// // // // // // //           Navigator.pushReplacement(
// // // // // // //             context,
// // // // // // //             MaterialPageRoute(
// // // // // // //               builder: (context) => UserHome(
// // // // // // //                 email: email, // Pass the email
// // // // // // //               ),
// // // // // // //             ),
// // // // // // //           );
// // // // // // //         } 
// // // // // // //         // If user type is "Vendor"
// // // // // // //         else if (responseBody['message'] == "Welcome Vendor!") {
// // // // // // //           Navigator.pushReplacement(
// // // // // // //             context,
// // // // // // //             MaterialPageRoute(
// // // // // // //               builder: (context) => VendorHomeScreen (
// // // // // // //              //   email: email, // Pass the email
// // // // // // //               ),
// // // // // // //             ),
// // // // // // //           );
// // // // // // //         } else {
// // // // // // //           ScaffoldMessenger.of(context).showSnackBar(
// // // // // // //             const SnackBar(content: Text("Unexpected response from server.")),
// // // // // // //           );
// // // // // // //         }
// // // // // // //       } else {
// // // // // // //         ScaffoldMessenger.of(context).showSnackBar(
// // // // // // //           SnackBar(content: Text("Error: ${response.statusCode}")),
// // // // // // //         );
// // // // // // //       }
// // // // // // //     } catch (e) {
// // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // //         SnackBar(content: Text("An error occurred: $e")),
// // // // // // //       );
// // // // // // //     }
// // // // // // //   }

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return Scaffold(
// // // // // // //       appBar: AppBar(
// // // // // // //         title: const Text('Sign In'),
// // // // // // //         actions: [
// // // // // // //           IconButton(
// // // // // // //             icon: const Icon(Icons.language),
// // // // // // //             onPressed: widget.changeLocale,
// // // // // // //           ),
// // // // // // //         ],
// // // // // // //       ),
// // // // // // //       body: Padding(
// // // // // // //         padding: const EdgeInsets.all(16.0),
// // // // // // //         child: SingleChildScrollView(
// // // // // // //           child: Column(
// // // // // // //             children: [
// // // // // // //               Image.asset(
// // // // // // //                 'images/Homie_logo.png',
// // // // // // //                 height: 400.0,
// // // // // // //                 width: 300.0,
// // // // // // //               ),
// // // // // // //               const SizedBox(height: 20),
// // // // // // //               TextField(
// // // // // // //                 controller: _emailController,
// // // // // // //                 decoration: const InputDecoration(
// // // // // // //                   labelText: "Email",
// // // // // // //                   border: OutlineInputBorder(),
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //               const SizedBox(height: 20),
// // // // // // //               TextField(
// // // // // // //                 controller: _passwordController,
// // // // // // //                 obscureText: !_isPasswordVisible,
// // // // // // //                 decoration: InputDecoration(
// // // // // // //                   labelText: "Password",
// // // // // // //                   border: const OutlineInputBorder(),
// // // // // // //                   suffixIcon: IconButton(
// // // // // // //                     icon: Icon(
// // // // // // //                       _isPasswordVisible
// // // // // // //                           ? Icons.visibility
// // // // // // //                           : Icons.visibility_off,
// // // // // // //                     ),
// // // // // // //                     onPressed: () {
// // // // // // //                       setState(() {
// // // // // // //                         _isPasswordVisible = !_isPasswordVisible;
// // // // // // //                       });
// // // // // // //                     },
// // // // // // //                   ),
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //               const SizedBox(height: 40),
// // // // // // //               ElevatedButton(
// // // // // // //                 onPressed: () => _signIn(context),
// // // // // // //                 child: const Text("Sign In"),
// // // // // // //               ),
// // // // // // //               const SizedBox(height: 20),
// // // // // // //               Row(
// // // // // // //                 mainAxisAlignment: MainAxisAlignment.center,
// // // // // // //                 children: [
// // // // // // //                   const Text("Not a member?"),
// // // // // // //                   TextButton(
// // // // // // //                     onPressed: () {
// // // // // // //                       Navigator.pushReplacement(
// // // // // // //                         context,
// // // // // // //                         MaterialPageRoute(
// // // // // // //                           builder: (context) => UserTypeSelectionScreen(
// // // // // // //                             changeLocale: widget.changeLocale,
// // // // // // //                           ),
// // // // // // //                         ),
// // // // // // //                       );
// // // // // // //                     },
// // // // // // //                     child: const Text("Sign up here"),
// // // // // // //                   ),
// // // // // // //                 ],
// // // // // // //               ),
// // // // // // //             ],
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }
// // // // // // import 'dart:convert'; // For JSON encoding/decoding
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:http/http.dart' as http; // For HTTP requests
// // // // // // import 'package:test/extantion.dart'; // Your localization extension
// // // // // // import 'UserTypeSelectionScreen.dart';

// // // // // // class SignInScreen extends StatefulWidget {
// // // // // //   final String userType;
// // // // // //   final Function() changeLocale;

// // // // // //   const SignInScreen({
// // // // // //     Key? key,
// // // // // //     required this.userType,
// // // // // //     required this.changeLocale,
// // // // // //   }) : super(key: key);

// // // // // //   @override
// // // // // //   _SignInScreenState createState() => _SignInScreenState();
// // // // // // }

// // // // // // class _SignInScreenState extends State<SignInScreen> {
// // // // // //   final TextEditingController _emailController = TextEditingController();
// // // // // //   final TextEditingController _passwordController = TextEditingController();

// // // // // //   // For showing loading state during login
// // // // // //   bool _isLoading = false;

// // // // // //   Future<void> _logIn() async {
// // // // // //     final String email = _emailController.text.trim();
// // // // // //     final String password = _passwordController.text.trim();

// // // // // //     if (email.isEmpty || password.isEmpty) {
// // // // // //       // You can show a message to the user if fields are empty
// // // // // //       return;
// // // // // //     }

// // // // // //     setState(() {
// // // // // //       _isLoading = true; // Show loading state
// // // // // //     });

// // // // // //     try {
// // // // // //       final response = await http.post(
// // // // // //         Uri.parse('https://192.168.0.109:7127/api/Auth/log-in'),
// // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // //         body: json.encode({
// // // // // //           'email': email,
// // // // // //           'password': password,
// // // // // //         }),
// // // // // //       );

// // // // // //       if (response.statusCode == 200) {
// // // // // //         // Successfully logged in
// // // // // //         final data = json.decode(response.body);
// // // // // //         final String userId = data['userId']; // Retrieve user ID from response
// // // // // //         final String message = data['message'];

// // // // // //         // Show success message or navigate based on user type
// // // // // //         if (message.contains('Vendor')) {
// // // // // //           // Navigate to vendor screen or do further logic
// // // // // //         } else {
// // // // // //           // Navigate to user screen or do further logic
// // // // // //         }
// // // // // //       } else {
// // // // // //         // Handle login failure
// // // // // //         final errorMessage = response.body;
// // // // // //         _showErrorDialog(errorMessage);
// // // // // //       }
// // // // // //     } catch (e) {
// // // // // //       _showErrorDialog('An error occurred. Please try again later.');
// // // // // //     } finally {
// // // // // //       setState(() {
// // // // // //         _isLoading = false; // Hide loading state
// // // // // //       });
// // // // // //     }
// // // // // //   }

// // // // // //   void _showErrorDialog(String message) {
// // // // // //     showDialog(
// // // // // //       context: context,
// // // // // //       builder: (ctx) => AlertDialog(
// // // // // //         title: Text(context.t.error), // Localized "Error"
// // // // // //         content: Text(message),
// // // // // //         actions: [
// // // // // //           TextButton(
// // // // // //             onPressed: () {
// // // // // //               Navigator.of(ctx).pop();
// // // // // //             },
// // // // // //             child: Text(context.t.ok), // Localized "OK"
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       appBar: AppBar(
// // // // // //         title: Text(context.t.signIn), // Localized "Sign In"
// // // // // //         actions: [
// // // // // //           IconButton(
// // // // // //             icon: const Icon(Icons.language),
// // // // // //             onPressed: widget.changeLocale, // Trigger locale change
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //       body: Padding(
// // // // // //         padding: const EdgeInsets.all(16.0),
// // // // // //         child: SingleChildScrollView(
// // // // // //           child: Column(
// // // // // //             children: [
// // // // // //               // Logo Section
// // // // // //               Image.asset(
// // // // // //                 'images/Homie_logo.png', // Ensure this path is correct
// // // // // //                 height: 120.0,
// // // // // //               ),
// // // // // //               const SizedBox(height: 20),

// // // // // //               // Welcome Message
// // // // // //               Column(
// // // // // //                 children: [
// // // // // //                   Text(
// // // // // //                     context.t.welcome, // Localized "Welcome"
// // // // // //                     style: const TextStyle(
// // // // // //                       fontSize: 22,
// // // // // //                       fontWeight: FontWeight.bold,
// // // // // //                     ),
// // // // // //                     textAlign: TextAlign.center,
// // // // // //                   ),
// // // // // //                   Text(
// // // // // //                     context.t.toHomie, // Localized "to Homie"
// // // // // //                     style: const TextStyle(
// // // // // //                       fontSize: 22,
// // // // // //                       fontWeight: FontWeight.bold,
// // // // // //                     ),
// // // // // //                     textAlign: TextAlign.center,
// // // // // //                   ),
// // // // // //                 ],
// // // // // //               ),
// // // // // //               const SizedBox(height: 40),

// // // // // //               // Email Field
// // // // // //               TextField(
// // // // // //                 controller: _emailController,
// // // // // //                 decoration: InputDecoration(
// // // // // //                   labelText: context.t.email, // Localized "Email"
// // // // // //                   border: const OutlineInputBorder(),
// // // // // //                 ),
// // // // // //               ),
// // // // // //               const SizedBox(height: 20),

// // // // // //               // Password Field
// // // // // //               TextField(
// // // // // //                 controller: _passwordController,
// // // // // //                 obscureText: true,
// // // // // //                 decoration: InputDecoration(
// // // // // //                   labelText: context.t.password, // Localized "Password"
// // // // // //                   border: const OutlineInputBorder(),
// // // // // //                 ),
// // // // // //               ),
// // // // // //               const SizedBox(height: 40),

// // // // // //               // Sign In Button
// // // // // //               ElevatedButton(
// // // // // //                 onPressed: _isLoading ? null : _logIn,
// // // // // //                 child: _isLoading
// // // // // //                     ? const CircularProgressIndicator() // Show loading spinner
// // // // // //                     : Text(context.t.signIn), // Localized "Sign In"
// // // // // //               ),

// // // // // //               const SizedBox(height: 20),

// // // // // //               // Non-Member Section
// // // // // //               Row(
// // // // // //                 mainAxisAlignment: MainAxisAlignment.center,
// // // // // //                 children: [
// // // // // //                   Text(context.t.notAMember), // Localized "Not a member?"
// // // // // //                   TextButton(
// // // // // //                     onPressed: () {
// // // // // //                       Navigator.pushReplacement(
// // // // // //                         context,
// // // // // //                         MaterialPageRoute(
// // // // // //                           builder: (context) => UserTypeSelectionScreen(
// // // // // //                             changeLocale: widget.changeLocale, // Pass the locale change function
// // // // // //                           ),
// // // // // //                         ),
// // // // // //                       );
// // // // // //                     },
// // // // // //                     child: Text(context.t.signUpHere), // Localized "Sign up here"
// // // // // //                   ),
// // // // // //                 ],
// // // // // //               ),
// // // // // //             ],
// // // // // //           ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // // import 'dart:convert'; // For JSON encoding/decoding
// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:http/http.dart' as http; // For HTTP requests
// // // // // import 'package:test/extantion.dart'; // Your localization extension
// // // // // import 'UserTypeSelectionScreen.dart';
// // // // // import 'Venderhome.dart'; // Add Vendor home screen import
// // // // // import 'MainScreen.dart'; // Add MainScreen for regular users

// // // // // class SignInScreen extends StatefulWidget {
// // // // //   final String userType;
// // // // //   final Function() changeLocale;

// // // // //   const SignInScreen({
// // // // //     Key? key,
// // // // //     required this.userType,
// // // // //     required this.changeLocale,
// // // // //   }) : super(key: key);

// // // // //   @override
// // // // //   _SignInScreenState createState() => _SignInScreenState();
// // // // // }

// // // // // class _SignInScreenState extends State<SignInScreen> {
// // // // //   final TextEditingController _emailController = TextEditingController();
// // // // //   final TextEditingController _passwordController = TextEditingController();

// // // // //   bool _isLoading = false;

// // // // //   Future<void> _logIn() async {
// // // // //     final String email = _emailController.text.trim();
// // // // //     final String password = _passwordController.text.trim();

// // // // //     if (email.isEmpty || password.isEmpty) {
// // // // //       return;
// // // // //     }

// // // // //     setState(() {
// // // // //       _isLoading = true;
// // // // //     });

// // // // //     try {
// // // // //       final response = await http.post(
// // // // //         Uri.parse('https://192.168.0.109:7127/api/Auth/log-in'),
// // // // //         headers: {'Content-Type': 'application/json'},
// // // // //         body: json.encode({
// // // // //           'email': email,
// // // // //           'password': password,
// // // // //         }),
// // // // //       );

// // // // //       if (response.statusCode == 200) {
// // // // //         final data = json.decode(response.body);
// // // // //         final String userId = data['userId'];
// // // // //         final String message = data['message'];

// // // // //         // Show success message or navigate based on user type
// // // // //         if (message.contains('Welcome Vendor!')) {
// // // // //           // Navigate to Vendor Home Screen
// // // // //           Navigator.pushReplacement(
// // // // //             context,
// // // // //             MaterialPageRoute(
// // // // //               builder: (context) => VendorHomeScreen(userId: userId), // Vendor screen
// // // // //             ),
// // // // //           );
// // // // //         } else if (message.contains('Welcome User!')) {
// // // // //           // Navigate to Main Screen (with bottom navigation)
// // // // //           Navigator.pushReplacement(
// // // // //             context,
// // // // //             MaterialPageRoute(
// // // // //               builder: (context) => MainScreen(userId: userId), // Main screen for regular users
// // // // //             ),
// // // // //           );
// // // // //         }
// // // // //       } else {
// // // // //         final errorMessage = response.body;
// // // // //         _showErrorDialog(errorMessage);
// // // // //       }
// // // // //     } catch (e) {
// // // // //       _showErrorDialog('An error occurred. Please try again later.');
// // // // //     } finally {
// // // // //       setState(() {
// // // // //         _isLoading = false;
// // // // //       });
// // // // //     }
// // // // //   }

// // // // //   void _showErrorDialog(String message) {
// // // // //     showDialog(
// // // // //       context: context,
// // // // //       builder: (ctx) => AlertDialog(
// // // // //         title: Text(context.t.error), // Localized "Error"
// // // // //         content: Text(message),
// // // // //         actions: [
// // // // //           TextButton(
// // // // //             onPressed: () {
// // // // //               Navigator.of(ctx).pop();
// // // // //             },
// // // // //             child: Text(context.t.ok), // Localized "OK"
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: Text(context.t.signIn), // Localized "Sign In"
// // // // //         actions: [
// // // // //           IconButton(
// // // // //             icon: const Icon(Icons.language),
// // // // //             onPressed: widget.changeLocale,
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //       body: Padding(
// // // // //         padding: const EdgeInsets.all(16.0),
// // // // //         child: SingleChildScrollView(
// // // // //           child: Column(
// // // // //             children: [
// // // // //               // Logo Section
// // // // //               Image.asset(
// // // // //                 'images/Homie_logo.png', // Ensure this path is correct
// // // // //                 height: 120.0,
// // // // //               ),
// // // // //               const SizedBox(height: 20),

// // // // //               // Welcome Message
// // // // //               Column(
// // // // //                 children: [
// // // // //                   Text(
// // // // //                     context.t.welcome, // Localized "Welcome"
// // // // //                     style: const TextStyle(
// // // // //                       fontSize: 22,
// // // // //                       fontWeight: FontWeight.bold,
// // // // //                     ),
// // // // //                     textAlign: TextAlign.center,
// // // // //                   ),
// // // // //                   Text(
// // // // //                     context.t.toHomie, // Localized "to Homie"
// // // // //                     style: const TextStyle(
// // // // //                       fontSize: 22,
// // // // //                       fontWeight: FontWeight.bold,
// // // // //                     ),
// // // // //                     textAlign: TextAlign.center,
// // // // //                   ),
// // // // //                 ],
// // // // //               ),
// // // // //               const SizedBox(height: 40),

// // // // //               // Email Field
// // // // //               TextField(
// // // // //                 controller: _emailController,
// // // // //                 decoration: InputDecoration(
// // // // //                   labelText: context.t.email, // Localized "Email"
// // // // //                   border: const OutlineInputBorder(),
// // // // //                 ),
// // // // //               ),
// // // // //               const SizedBox(height: 20),

// // // // //               // Password Field
// // // // //               TextField(
// // // // //                 controller: _passwordController,
// // // // //                 obscureText: true,
// // // // //                 decoration: InputDecoration(
// // // // //                   labelText: context.t.password, // Localized "Password"
// // // // //                   border: const OutlineInputBorder(),
// // // // //                 ),
// // // // //               ),
// // // // //               const SizedBox(height: 40),

// // // // //               // Sign In Button
// // // // //               ElevatedButton(
// // // // //                 onPressed: _isLoading ? null : _logIn,
// // // // //                 child: _isLoading
// // // // //                     ? const CircularProgressIndicator()
// // // // //                     : Text(context.t.signIn), // Localized "Sign In"
// // // // //               ),

// // // // //               const SizedBox(height: 20),

// // // // //               // Non-Member Section
// // // // //               Row(
// // // // //                 mainAxisAlignment: MainAxisAlignment.center,
// // // // //                 children: [
// // // // //                   Text(context.t.notAMember), // Localized "Not a member?"
// // // // //                   TextButton(
// // // // //                     onPressed: () {
// // // // //                       Navigator.pushReplacement(
// // // // //                         context,
// // // // //                         MaterialPageRoute(
// // // // //                           builder: (context) => UserTypeSelectionScreen(
// // // // //                             changeLocale: widget.changeLocale, // Pass the locale change function
// // // // //                           ),
// // // // //                         ),
// // // // //                       );
// // // // //                     },
// // // // //                     child: Text(context.t.signUpHere), // Localized "Sign up here"
// // // // //                   ),
// // // // //                 ],
// // // // //               ),
// // // // //             ],
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }
// // // // import 'dart:convert';
// // // // import 'package:flutter/material.dart';
// // // // import 'package:http/http.dart' as http; // For HTTP requests
// // // // import 'package:test/extantion.dart'; // Your localization extension
// // // // import 'Venderhome.dart'; // Import Vendor Home Screen
// // // // import 'MainScreen.dart'; // Import Main Screen
// // // // import 'UserTypeSelectionScreen.dart';

// // // // class SignInScreen extends StatefulWidget {
// // // //   final Function() changeLocale;

// // // //   const SignInScreen({Key? key, required this.changeLocale}) : super(key: key);

// // // //   @override
// // // //   _SignInScreenState createState() => _SignInScreenState();
// // // // }

// // // // class _SignInScreenState extends State<SignInScreen> {
// // // //   final TextEditingController _emailController = TextEditingController();
// // // //   final TextEditingController _passwordController = TextEditingController();
// // // //   bool _isLoading = false;

// // // //   Future<void> _logIn() async {
// // // //     final String email = _emailController.text.trim();
// // // //     final String password = _passwordController.text.trim();

// // // //     if (email.isEmpty || password.isEmpty) {
// // // //       // Show message to user if fields are empty
// // // //       return;
// // // //     }

// // // //     setState(() {
// // // //       _isLoading = true; // Show loading state
// // // //     });

// // // //     try {
// // // //       final response = await http.post(
// // // //         Uri.parse('https://192.168.0.109:7127/api/Auth/log-in'),
// // // //         headers: {'Content-Type': 'application/json'},
// // // //         body: json.encode({
// // // //           'email': email,
// // // //           'password': password,
// // // //         }),
// // // //       );

// // // //       if (response.statusCode == 200) {
// // // //         final data = json.decode(response.body);
// // // //         final String userId = data['userId']; // Retrieve user ID from response
// // // //         final String message = data['message'];

// // // //         // Navigate based on the message
// // // //         if (message.contains('Vendor')) {
// // // //           Navigator.pushReplacement(
// // // //             context,
// // // //             MaterialPageRoute(builder: (context) => VendorHomeScreen()), // Vendor home screen
// // // //           );
// // // //         } else if (message.contains('User')) {
// // // //           Navigator.pushReplacement(
// // // //             context,
// // // //             MaterialPageRoute(
// // // //               builder: (context) => MainScreen(userId: userId), // Navigate to main screen
// // // //             ),
// // // //           );
// // // //         }
// // // //       } else {
// // // //         final errorMessage = response.body;
// // // //         _showErrorDialog(errorMessage);
// // // //       }
// // // //     } catch (e) {
// // // //       _showErrorDialog('An error occurred. Please try again later.');
// // // //     } finally {
// // // //       setState(() {
// // // //         _isLoading = false; // Hide loading state
// // // //       });
// // // //     }
// // // //   }

// // // //   void _showErrorDialog(String message) {
// // // //     showDialog(
// // // //       context: context,
// // // //       builder: (ctx) => AlertDialog(
// // // //         title: Text(context.t.error), // Localized "Error"
// // // //         content: Text(message),
// // // //         actions: [
// // // //           TextButton(
// // // //             onPressed: () {
// // // //               Navigator.of(ctx).pop();
// // // //             },
// // // //             child: Text(context.t.ok), // Localized "OK"
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: Text(context.t.signIn), // Localized "Sign In"
// // // //         actions: [
// // // //           IconButton(
// // // //             icon: const Icon(Icons.language),
// // // //             onPressed: widget.changeLocale, // Trigger locale change
// // // //           ),
// // // //         ],
// // // //       ),
// // // //       body: Padding(
// // // //         padding: const EdgeInsets.all(16.0),
// // // //         child: SingleChildScrollView(
// // // //           child: Column(
// // // //             children: [
// // // //               // Logo Section
// // // //               Image.asset(
// // // //                 'images/Homie_logo.png',
// // // //                 height: 120.0,
// // // //               ),
// // // //               const SizedBox(height: 20),

// // // //               // Welcome Message
// // // //               Column(
// // // //                 children: [
// // // //                   Text(
// // // //                     context.t.welcome,
// // // //                     style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
// // // //                     textAlign: TextAlign.center,
// // // //                   ),
// // // //                   Text(
// // // //                     context.t.toHomie,
// // // //                     style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
// // // //                     textAlign: TextAlign.center,
// // // //                   ),
// // // //                 ],
// // // //               ),
// // // //               const SizedBox(height: 40),

// // // //               // Email Field
// // // //               TextField(
// // // //                 controller: _emailController,
// // // //                 decoration: InputDecoration(
// // // //                   labelText: context.t.email,
// // // //                   border: const OutlineInputBorder(),
// // // //                 ),
// // // //               ),
// // // //               const SizedBox(height: 20),

// // // //               // Password Field
// // // //               TextField(
// // // //                 controller: _passwordController,
// // // //                 obscureText: true,
// // // //                 decoration: InputDecoration(
// // // //                   labelText: context.t.password,
// // // //                   border: const OutlineInputBorder(),
// // // //                 ),
// // // //               ),
// // // //               const SizedBox(height: 40),

// // // //               // Sign In Button
// // // //               ElevatedButton(
// // // //                 onPressed: _isLoading ? null : _logIn,
// // // //                 child: _isLoading
// // // //                     ? const CircularProgressIndicator()
// // // //                     : Text(context.t.signIn), // Localized "Sign In"
// // // //               ),

// // // //               const SizedBox(height: 20),

// // // //               // Non-Member Section
// // // //               Row(
// // // //                 mainAxisAlignment: MainAxisAlignment.center,
// // // //                 children: [
// // // //                   Text(context.t.notAMember),
// // // //                   TextButton(
// // // //                     onPressed: () {
// // // //                       Navigator.pushReplacement(
// // // //                         context,
// // // //                         MaterialPageRoute(
// // // //                           builder: (context) => UserTypeSelectionScreen(
// // // //                             changeLocale: widget.changeLocale,
// // // //                           ),
// // // //                         ),
// // // //                       );
// // // //                     },
// // // //                     child: Text(context.t.signUpHere),
// // // //                   ),
// // // //                 ],
// // // //               ),
// // // //             ],
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // // import 'dart:convert';
// // // import 'package:flutter/material.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'package:test/extantion.dart'; // Your localization extension
// // // import 'Venderhome.dart'; // Vendor Home Screen
// // // import 'MainScreen.dart'; // Main Screen
// // // //import 'UserTypeSelectionScreen.dart';

// // // class SignInScreen extends StatefulWidget {
// // //   final Function() changeLocale;

// // //   const SignInScreen({Key? key, required this.changeLocale}) : super(key: key);

// // //   @override
// // //   _SignInScreenState createState() => _SignInScreenState();
// // // }

// // // class _SignInScreenState extends State<SignInScreen> {
// // //   final TextEditingController _emailController = TextEditingController();
// // //   final TextEditingController _passwordController = TextEditingController();
// // //   bool _isLoading = false;

// // //   Future<void> _logIn() async {
// // //     final String email = _emailController.text.trim();
// // //     final String password = _passwordController.text.trim();

// // //     if (email.isEmpty || password.isEmpty) {
// // //       return;
// // //     }

// // //     setState(() {
// // //       _isLoading = true;
// // //     });

// // //     try {
// // //       final response = await http.post(
// // //         Uri.parse('https://192.168.0.109:7127/api/Auth/log-in'),
// // //         headers: {'Content-Type': 'application/json'},
// // //         body: json.encode({
// // //           'email': email,
// // //           'password': password,
// // //         }),
// // //       );

// // //       if (response.statusCode == 200) {
// // //         final Map<String, dynamic> responseBody = json.decode(response.body);
// // //         final String message = responseBody['message'];

// // //         if (message.contains('Vendor')) {
// // //           Navigator.pushReplacement(
// // //             context,
// // //             MaterialPageRoute(builder: (context) => VendorHomeScreen()),
// // //           );
// // //         } else if (message.contains('User')) {
// // //           Navigator.pushReplacement(
// // //             context,
// // //             MaterialPageRoute(builder: (context) => MainScreen(userId: email)), // Pass userId as parameter
// // //           );
// // //         }
// // //       } else {
// // //         // Show error message if login fails
// // //         showDialog(
// // //           context: context,
// // //           builder: (context) => AlertDialog(
// // //             title: Text(context.t.login_failed),
// // //             content: Text(context.t.invalid_credentials),
// // //             actions: [
// // //               TextButton(
// // //                 onPressed: () => Navigator.pop(context),
// // //                 child: Text(context.t.ok),
// // //               ),
// // //             ],
// // //           ),
// // //         );
// // //       }
// // //     } catch (error) {
// // //       print(error);
// // //       // Show error message if the request fails
// // //       showDialog(
// // //         context: context,
// // //         builder: (context) => AlertDialog(
// // //           title: Text(context.t.error),
// // //           content: Text(context.t.connection_error),
// // //           actions: [
// // //             TextButton(
// // //               onPressed: () => Navigator.pop(context),
// // //               child: Text(context.t.ok),
// // //             ),
// // //           ],
// // //         ),
// // //       );
// // //     }

// // //     setState(() {
// // //       _isLoading = false;
// // //     });
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(title: Text(context.t.signIn)),
// // //       body: Padding(
// // //         padding: const EdgeInsets.all(16.0),
// // //         child: Column(
// // //           mainAxisAlignment: MainAxisAlignment.center,
// // //           crossAxisAlignment: CrossAxisAlignment.start,
// // //           children: [
// // //             TextField(
// // //               controller: _emailController,
// // //               decoration: InputDecoration(
// // //                 labelText: context.t.email,
// // //               ),
// // //             ),
// // //             const SizedBox(height: 20),
// // //             TextField(
// // //               controller: _passwordController,
// // //               obscureText: true,
// // //               decoration: InputDecoration(
// // //                 labelText: context.t.password,
// // //               ),
// // //             ),
// // //             const SizedBox(height: 40),
// // //             ElevatedButton(
// // //               onPressed: _isLoading ? null : _logIn,
// // //               child: _isLoading
// // //                   ? CircularProgressIndicator()
// // //                   : Text(context.t.signIn),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'dart:convert';
// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;
// // import 'package:test/extantion.dart'; // Your localization extension
// // import 'Venderhome.dart'; // Vendor Home Screen
// // import 'MainScreen.dart'; // Main Screen

// // class SignInScreen extends StatefulWidget {
// //   final Function() changeLocale;

// //   const SignInScreen({Key? key, required this.changeLocale}) : super(key: key);

// //   @override
// //   _SignInScreenState createState() => _SignInScreenState();
// // }

// // class _SignInScreenState extends State<SignInScreen> {
// //   final TextEditingController _emailController = TextEditingController();
// //   final TextEditingController _passwordController = TextEditingController();
// //   bool _isLoading = false;

// //   Future<void> _logIn() async {
// //     final String email = _emailController.text.trim();
// //     final String password = _passwordController.text.trim();

// //     if (email.isEmpty || password.isEmpty) {
// //       return;
// //     }

// //     setState(() {
// //       _isLoading = true;
// //     });

// //     try {
// //       final response = await http.post(
// //         Uri.parse('https://192.168.0.109:7127/api/Auth/log-in'),
// //         headers: {'Content-Type': 'application/json'},
// //         body: json.encode({
// //           'email': email,
// //           'password': password,
// //         }),
// //       );

// //       if (response.statusCode == 200 || response.statusCode == 201 ) {
// //         final Map<String, dynamic> responseBody = json.decode(response.body);
// //         final String message = responseBody['message'];

// //         if (message.contains('Vendor')) {
// //           Navigator.pushReplacement(
// //             context,
// //             MaterialPageRoute(builder: (context) => VendorHomeScreen()),
// //           );
// //         } else if (message.contains('User')) {
// //           Navigator.pushReplacement(
// //             context,
// //             MaterialPageRoute(builder: (context) => MainScreen(userId: email)),
// //           );
// //         }
// //       } else {
// //         _showErrorDialog(context.t.login_failed, context.t.invalid_credentials);
// //       }
// //     } catch (error) {
// //       print(error);
// //       _showErrorDialog(context.t.error, context.t.connection_error);
// //     }

// //     setState(() {
// //       _isLoading = false;
// //     });
// //   }

// //   void _showErrorDialog(String title, String content) {
// //     showDialog(
// //       context: context,
// //       builder: (context) => AlertDialog(
// //         title: Text(title),
// //         content: Text(content),
// //         actions: [
// //           TextButton(
// //             onPressed: () => Navigator.pop(context),
// //             child: Text(context.t.ok),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: Text(context.t.signIn)),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             TextField(
// //               controller: _emailController,
// //               decoration: InputDecoration(
// //                 labelText: context.t.email,
// //               ),
// //             ),
// //             const SizedBox(height: 20),
// //             TextField(
// //               controller: _passwordController,
// //               obscureText: true,
// //               decoration: InputDecoration(
// //                 labelText: context.t.password,
// //               ),
// //             ),
// //             const SizedBox(height: 40),
// //             ElevatedButton(
// //               onPressed: _isLoading ? null : _logIn,
// //               child: _isLoading
// //                   ? CircularProgressIndicator()
// //                   : Text(context.t.signIn),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:test/extantion.dart'; // Localization extension
// import 'Venderhome.dart'; // Vendor Home Screen
// import 'MainScreen.dart'; // Main Screen

// class SignInScreen extends StatefulWidget {
//   final Function() changeLocale;

//   const SignInScreen({Key? key, required this.changeLocale}) : super(key: key);

//   @override
//   _SignInScreenState createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   bool _isLoading = false;

//   Future<void> _logIn() async {
//     final String email = _emailController.text.trim();
//     final String password = _passwordController.text.trim();

//     if (email.isEmpty || password.isEmpty) {
//       _showErrorDialog(context.t.error, context.t.fill_all_fields);
//       return;
//     }

//     setState(() {
//       _isLoading = true;
//     });

//     try {
//       final response = await http.post(
//         Uri.parse('https://192.168.0.109:7127/api/Auth/log-in'),
//         headers: {'Content-Type': 'application/json'},
//         body: json.encode({
//           'email': email,
//           'password': password,
//         }),
//       );

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         final Map<String, dynamic> responseBody = json.decode(response.body);
//         final String message = responseBody['message'];
//         final String userId = responseBody['userId'];

//         if (message.contains('Vendor')) {
//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(builder: (context) => VendorHomeScreen()),
//           );
//         } else if (message.contains('User')) {
//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(builder: (context) => MainScreen(userId: userId)),
//           );
//         } else {
//           _showErrorDialog(context.t.error, context.t.unexpected_response);
//         }
//       } else {
//         _showErrorDialog(context.t.login_failed, context.t.invalid_credentials);
//       }
//     } catch (error) {
//       _showErrorDialog(context.t.error, context.t.connection_error);
//       print('Login error: $error'); // Debug log
//     } finally {
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }

//   void _showErrorDialog(String title, String content) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text(title),
//         content: Text(content),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: Text(context.t.ok),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(context.t.signIn)),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextField(
//               controller: _emailController,
//               decoration: InputDecoration(
//                 labelText: context.t.email,
//               ),
//             ),
//             const SizedBox(height: 20),
//             TextField(
//               controller: _passwordController,
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: context.t.password,
//               ),
//             ),
//             const SizedBox(height: 40),
//             ElevatedButton(
//               onPressed: _isLoading ? null : _logIn,
//               child: _isLoading
//                   ? const CircularProgressIndicator(
//                       valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
//                     )
//                   : Text(context.t.signIn),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
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
