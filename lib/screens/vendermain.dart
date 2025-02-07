// // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // import 'venderprofile.dart';
// // // // // // // // import 'VendorOrders.dart';
// // // // // // // // import 'venderComments.dart';
// // // // // // // // import 'package:test/extantion.dart'; // Your localization extension
// // // // // // // // import 'login_screen.dart'; // Correct the import for SignInScreen

// // // // // // // // class VendorMainScreen extends StatefulWidget {
// // // // // // // //   final String userId; // Accept vendorId as a parameter

// // // // // // // //   const VendorMainScreen({Key? key, required this.userId}) : super(key: key);

// // // // // // // //   @override
// // // // // // // //   _VendorMainScreenState createState() => _VendorMainScreenState();
// // // // // // // // }

// // // // // // // // class _VendorMainScreenState extends State<VendorMainScreen> {
// // // // // // // //   int _selectedIndex = 0;

// // // // // // // //   // Global Key for managing Scaffold state across different screens
// // // // // // // //   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

// // // // // // // //   late final List<Widget> _screens = [
// // // // // // // //      VendorOrders(),
// // // // // // // //     VendorProfile(userId: widget.userId), // Pass userId to VendorProfile
// // // // // // // //      VendorComments(),
// // // // // // // //   ];

// // // // // // // //   void _onItemTapped(int index) {
// // // // // // // //     setState(() {
// // // // // // // //       _selectedIndex = index;
// // // // // // // //     });
// // // // // // // //   }

// // // // // // // //   void _changeLocale() {
// // // // // // // //     // Implement any logic for changing locale here
// // // // // // // //   }

// // // // // // // //   List<String> _getTitles(BuildContext context) {
// // // // // // // //     return [
// // // // // // // //       context.t.profile,
// // // // // // // //       context.t.comments,
// // // // // // // //       context.t.orders,

// // // // // // // //     ];
// // // // // // // //   }

// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return Scaffold(
// // // // // // // //       key: _scaffoldKey, // Set the scaffold key here
// // // // // // // //       appBar: AppBar(
// // // // // // // //         title: Text(
// // // // // // // //           _getTitles(context)[_selectedIndex],
// // // // // // // //           style: const TextStyle(
// // // // // // // //             fontWeight: FontWeight.bold,
// // // // // // // //             color: Colors.white,
// // // // // // // //           ),
// // // // // // // //         ),
// // // // // // // //         backgroundColor: Theme.of(context).primaryColor,
// // // // // // // //         actions: [
// // // // // // // //           if (_selectedIndex == 0) ...[
// // // // // // // //             IconButton(
// // // // // // // //               icon: const Icon(Icons.logout),
// // // // // // // //               onPressed: () {
// // // // // // // //                 Navigator.pushReplacement(
// // // // // // // //                   context,
// // // // // // // //                   MaterialPageRoute(
// // // // // // // //                     builder: (context) => SignInScreen(
// // // // // // // //                       changeLocale: _changeLocale, // Pass the function here
// // // // // // // //                     ),
// // // // // // // //                   ),
// // // // // // // //                 );
// // // // // // // //               },
// // // // // // // //               tooltip: context.t.logOut, // Use localization for logout
// // // // // // // //             ),
// // // // // // // //             IconButton(
// // // // // // // //               icon: const Icon(Icons.language),
// // // // // // // //               onPressed: _changeLocale,
// // // // // // // //             ),
// // // // // // // //           ],
// // // // // // // //         ],
// // // // // // // //       ),
// // // // // // // //       body: _screens[_selectedIndex],
// // // // // // // //       bottomNavigationBar: ClipRRect(
// // // // // // // //         borderRadius: const BorderRadius.only(
// // // // // // // //           topLeft: Radius.circular(30),
// // // // // // // //           topRight: Radius.circular(30),
// // // // // // // //         ),
// // // // // // // //         child: BottomNavigationBar(
// // // // // // // //           currentIndex: _selectedIndex,
// // // // // // // //           onTap: _onItemTapped,
// // // // // // // //           backgroundColor: Theme.of(context).primaryColor,
// // // // // // // //           selectedItemColor: const Color.fromARGB(255, 165, 144, 144),
// // // // // // // //           unselectedItemColor: Colors.white,
// // // // // // // //           items: [
// // // // // // // //             BottomNavigationBarItem(
// // // // // // // //               icon: const Icon(Icons.person),
// // // // // // // //               label: context.t.profile,
// // // // // // // //             ),
// // // // // // // //             BottomNavigationBarItem(
// // // // // // // //               icon: const Icon(Icons.list),
// // // // // // // //               label: context.t.orders,
// // // // // // // //             ),
// // // // // // // //             BottomNavigationBarItem(
// // // // // // // //               icon: const Icon(Icons.comment),
// // // // // // // //               label: context.t.comments,
// // // // // // // //             ),
// // // // // // // //           ],
// // // // // // // //         ),
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }
// // // // // // // import 'package:flutter/material.dart';
// // // // // // // import 'venderprofile.dart';
// // // // // // // import 'VendorOrders.dart';
// // // // // // // import 'venderComments.dart';
// // // // // // // import 'package:test/extantion.dart'; // Your localization extension
// // // // // // // import 'login_screen.dart'; // Corrected import for SignInScreen

// // // // // // // class VendorMainScreen extends StatefulWidget {
// // // // // // //   final String userId; // Accept userId as a parameter

// // // // // // //   const VendorMainScreen({Key? key, required this.userId}) : super(key: key);

// // // // // // //   @override
// // // // // // //   _VendorMainScreenState createState() => _VendorMainScreenState();
// // // // // // // }

// // // // // // // class _VendorMainScreenState extends State<VendorMainScreen> {
// // // // // // //   int _selectedIndex = 0;

// // // // // // //   // Global Key for managing Scaffold state across different screens
// // // // // // //   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

// // // // // // //   late final List<Widget> _screens = [
// // // // // // //     VendorOrders(),
// // // // // // //     VendorProfile(userId: widget.userId), // Pass vendorId to VendorProfile
// // // // // // //     VendorComments(),
// // // // // // //   ];

// // // // // // //   void _onItemTapped(int index) {
// // // // // // //     setState(() {
// // // // // // //       _selectedIndex = index;
// // // // // // //     });
// // // // // // //   }

// // // // // // //   void _changeLocale() {
// // // // // // //     // Implement any logic for changing locale here
// // // // // // //   }

// // // // // // //   List<String> _getTitles(BuildContext context) {
// // // // // // //     return [
// // // // // // //       context.t.profile,
// // // // // // //       context.t.comments,
// // // // // // //       context.t.orders,
// // // // // // //     ];
// // // // // // //   }

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return Scaffold(
// // // // // // //       key: _scaffoldKey, // Set the scaffold key here
// // // // // // //       appBar: AppBar(
// // // // // // //         title: Text(
// // // // // // //           _getTitles(context)[_selectedIndex],
// // // // // // //           style: const TextStyle(
// // // // // // //             fontWeight: FontWeight.bold,
// // // // // // //             color: Colors.white,
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //         backgroundColor: Theme.of(context).primaryColor,
// // // // // // //         actions: [
// // // // // // //           if (_selectedIndex == 0) ...[ // Show logout only on profile screen
// // // // // // //             IconButton(
// // // // // // //               icon: const Icon(Icons.logout),
// // // // // // //               onPressed: () {
// // // // // // //                 Navigator.pushReplacement(
// // // // // // //                   context,
// // // // // // //                   MaterialPageRoute(
// // // // // // //                     builder: (context) => SignInScreen(
// // // // // // //                       changeLocale: _changeLocale, // Pass the function here
// // // // // // //                     ),
// // // // // // //                   ),
// // // // // // //                 );
// // // // // // //               },
// // // // // // //               tooltip: context.t.logOut, // Use localization for logout
// // // // // // //             ),
// // // // // // //             IconButton(
// // // // // // //               icon: const Icon(Icons.language),
// // // // // // //               onPressed: _changeLocale,
// // // // // // //             ),
// // // // // // //           ],
// // // // // // //         ],
// // // // // // //       ),
// // // // // // //       body: _screens[_selectedIndex],
// // // // // // //       bottomNavigationBar: ClipRRect(
// // // // // // //         borderRadius: const BorderRadius.only(
// // // // // // //           topLeft: Radius.circular(30),
// // // // // // //           topRight: Radius.circular(30),
// // // // // // //         ),
// // // // // // //         child: BottomNavigationBar(
// // // // // // //           currentIndex: _selectedIndex,
// // // // // // //           onTap: _onItemTapped,
// // // // // // //           backgroundColor: Theme.of(context).primaryColor,
// // // // // // //           selectedItemColor: const Color.fromARGB(255, 165, 144, 144),
// // // // // // //           unselectedItemColor: Colors.white,
// // // // // // //           items: [
// // // // // // //             BottomNavigationBarItem(
// // // // // // //               icon: const Icon(Icons.person),
// // // // // // //               label: context.t.profile,
// // // // // // //             ),
// // // // // // //             BottomNavigationBarItem(
// // // // // // //               icon: const Icon(Icons.list),
// // // // // // //               label: context.t.orders,
// // // // // // //             ),
// // // // // // //             BottomNavigationBarItem(
// // // // // // //               icon: const Icon(Icons.comment),
// // // // // // //               label: context.t.comments,
// // // // // // //             ),
// // // // // // //           ],
// // // // // // //         ),
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }
// // // // // // // vendormainscreen.dart
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'venderprofile.dart';
// // // // // // import 'VendorOrders.dart';
// // // // // // import 'venderComments.dart';
// // // // // // import 'package:test/extantion.dart'; // Your localization extension
// // // // // // import 'login_screen.dart'; // Corrected import for SignInScreen

// // // // // // class VendorMainScreen extends StatefulWidget {
// // // // // //   final String userId; // Accept vendorId as a parameter

// // // // // //   const VendorMainScreen({Key? key, required this.userId}) : super(key: key);

// // // // // //   @override
// // // // // //   _VendorMainScreenState createState() => _VendorMainScreenState();
// // // // // // }

// // // // // // class _VendorMainScreenState extends State<VendorMainScreen> {
// // // // // //   int _selectedIndex = 0;

// // // // // //   // Global Key for managing Scaffold state across different screens
// // // // // //   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

// // // // // //   late final List<Widget> _screens = [
// // // // // //     VendorOrders(),
// // // // // //     VendorProfile(userId: widget.userId), // Pass vendorId to VendorProfile
// // // // // //     VendorComments(),
// // // // // //   ];

// // // // // //   void _onItemTapped(int index) {
// // // // // //     setState(() {
// // // // // //       _selectedIndex = index;
// // // // // //     });
// // // // // //   }

// // // // // //   void _changeLocale() {
// // // // // //     // Implement any logic for changing locale here
// // // // // //   }

// // // // // //   List<String> _getTitles(BuildContext context) {
// // // // // //     return [
// // // // // //       context.t.profile,
// // // // // //       context.t.comments,
// // // // // //       context.t.orders,
// // // // // //     ];
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       key: _scaffoldKey, // Set the scaffold key here
// // // // // //       appBar: AppBar(
// // // // // //         title: Text(
// // // // // //           _getTitles(context)[_selectedIndex],
// // // // // //           style: const TextStyle(
// // // // // //             fontWeight: FontWeight.bold,
// // // // // //             color: Colors.white,
// // // // // //           ),
// // // // // //         ),
// // // // // //         backgroundColor: Theme.of(context).primaryColor,
// // // // // //         actions: [
// // // // // //           if (_selectedIndex == 0) ...[ // Show logout only on profile screen
// // // // // //             IconButton(
// // // // // //               icon: const Icon(Icons.logout),
// // // // // //               onPressed: () {
// // // // // //                 Navigator.pushReplacement(
// // // // // //                   context,
// // // // // //                   MaterialPageRoute(
// // // // // //                     builder: (context) => SignInScreen(
// // // // // //                       changeLocale: _changeLocale, // Pass the function here
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 );
// // // // // //               },
// // // // // //               tooltip: context.t.logOut, // Use localization for logout
// // // // // //             ),
// // // // // //             IconButton(
// // // // // //               icon: const Icon(Icons.language),
// // // // // //               onPressed: _changeLocale,
// // // // // //             ),
// // // // // //           ],
// // // // // //         ],
// // // // // //       ),
// // // // // //       body: _screens[_selectedIndex],
// // // // // //       bottomNavigationBar: ClipRRect(
// // // // // //         borderRadius: const BorderRadius.only(
// // // // // //           topLeft: Radius.circular(30),
// // // // // //           topRight: Radius.circular(30),
// // // // // //         ),
// // // // // //         child: BottomNavigationBar(
// // // // // //           currentIndex: _selectedIndex,
// // // // // //           onTap: _onItemTapped,
// // // // // //           backgroundColor: Theme.of(context).primaryColor,
// // // // // //           selectedItemColor: const Color.fromARGB(255, 165, 144, 144),
// // // // // //           unselectedItemColor: Colors.white,
// // // // // //           items: [
// // // // // //             BottomNavigationBarItem(
// // // // // //               icon: const Icon(Icons.person),
// // // // // //               label: context.t.profile,
// // // // // //             ),
// // // // // //             BottomNavigationBarItem(
// // // // // //               icon: const Icon(Icons.list),
// // // // // //               label: context.t.orders,
// // // // // //             ),
// // // // // //             BottomNavigationBarItem(
// // // // // //               icon: const Icon(Icons.comment),
// // // // // //               label: context.t.comments,
// // // // // //             ),
// // // // // //           ],
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // // import 'package:flutter/material.dart';
// // // // // import 'venderprofile.dart';
// // // // // import 'VendorOrders.dart';
// // // // // import 'venderComments.dart';
// // // // // import 'package:test/extantion.dart'; // Your localization extension
// // // // // import 'login_screen.dart'; // Corrected import for SignInScreen

// // // // // class VendorMainScreen extends StatefulWidget {
// // // // //   final String userId; // Accept vendorId as a parameter

// // // // //   const VendorMainScreen({Key? key, required this.userId}) : super(key: key);

// // // // //   @override
// // // // //   _VendorMainScreenState createState() => _VendorMainScreenState();
// // // // // }

// // // // // class _VendorMainScreenState extends State<VendorMainScreen> {
// // // // //   int _selectedIndex = 0;

// // // // //   // Global Key for managing Scaffold state across different screens
// // // // //   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

// // // // //   late final List<Widget> _screens = [
// // // // //     MissionsScreen(),
// // // // //     VendorProfile( ), // Pass vendorId to VendorProfile
// // // // //     VendorComments(),
// // // // //   ];

// // // // //   void _onItemTapped(int index) {
// // // // //     setState(() {
// // // // //       _selectedIndex = index;
// // // // //     });
// // // // //   }

// // // // //   void _changeLocale() {
// // // // //     // Implement any logic for changing locale here
// // // // //   }

// // // // //   List<String> _getTitles(BuildContext context) {
// // // // //     return [
// // // // //       context.t.profile,
// // // // //       context.t.comments,
// // // // //       context.t.orders,
// // // // //     ];
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       key: _scaffoldKey, // Set the scaffold key here
// // // // //       appBar: AppBar(
// // // // //         title: Text(
// // // // //           _getTitles(context)[_selectedIndex],
// // // // //           style: const TextStyle(
// // // // //             fontWeight: FontWeight.bold,
// // // // //             color: Colors.white,
// // // // //           ),
// // // // //         ),
// // // // //         backgroundColor: Theme.of(context).primaryColor,
// // // // //         actions: [
// // // // //           if (_selectedIndex == 0) ...[ // Show logout only on profile screen
// // // // //             IconButton(
// // // // //               icon: const Icon(Icons.logout),
// // // // //               onPressed: () {
// // // // //                 Navigator.pushReplacement(
// // // // //                   context,
// // // // //                   MaterialPageRoute(
// // // // //                     builder: (context) => SignInScreen(
// // // // //                    //   changeLocale: _changeLocale, // Pass the function here
// // // // //                     ),
// // // // //                   ),
// // // // //                 );
// // // // //               },
// // // // //               tooltip: context.t.logOut, // Use localization for logout
// // // // //             ),
// // // // //             IconButton(
// // // // //               icon: const Icon(Icons.language),
// // // // //               onPressed: _changeLocale,
// // // // //             ),
// // // // //           ],
// // // // //         ],
// // // // //       ),
// // // // //       body: _screens[_selectedIndex],
// // // // //       bottomNavigationBar: ClipRRect(
// // // // //         borderRadius: const BorderRadius.only(
// // // // //           topLeft: Radius.circular(30),
// // // // //           topRight: Radius.circular(30),
// // // // //         ),
// // // // //         child: BottomNavigationBar(
// // // // //           currentIndex: _selectedIndex,
// // // // //           onTap: _onItemTapped,
// // // // //           backgroundColor: Theme.of(context).primaryColor,
// // // // //           selectedItemColor: const Color.fromARGB(255, 165, 144, 144),
// // // // //           unselectedItemColor: Colors.white,
// // // // //           items: [
// // // // //             BottomNavigationBarItem(
// // // // //               icon: const Icon(Icons.person),
// // // // //               label: context.t.profile,
// // // // //             ),
// // // // //             BottomNavigationBarItem(
// // // // //               icon: const Icon(Icons.list),
// // // // //               label: .orders,
// // // // //             ),
// // // // //             BottomNavigationBarItem(
// // // // //               icon: const Icon(Icons.comment),
// // // // //               label: context.t.comments,
// // // // //             ),
// // // // //           ],
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }
// // // // import 'package:flutter/material.dart';
// // // // import 'venderprofile.dart';
// // // // import 'VendorOrders.dart';
// // // // import 'venderComments.dart';
// // // // import 'login_screen.dart'; // Corrected import for SignInScreen

// // // // class VendorMainScreen extends StatefulWidget {
// // // //   final String userId; // Accept vendorId as a parameter

// // // //   const VendorMainScreen({Key? key, required this.userId}) : super(key: key);

// // // //   @override
// // // //   _VendorMainScreenState createState() => _VendorMainScreenState();
// // // // }

// // // // class _VendorMainScreenState extends State<VendorMainScreen> {
// // // //   int _selectedIndex = 0;

// // // //   // Global Key for managing Scaffold state across different screens
// // // //   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

// // // //   late final List<Widget> _screens = [
// // // //     MissionsScreen(),
// // // //     VendorProfile(), // Pass vendorId to VendorProfile
// // // //     VendorComments(),
// // // //   ];

// // // //   void _onItemTapped(int index) {
// // // //     setState(() {
// // // //       _selectedIndex = index;
// // // //     });
// // // //   }

// // // //   void _changeLocale() {
// // // //     // Implement any logic for changing locale here
// // // //   }

// // // //   List<String> _getTitles() {
// // // //     return [
// // // //       'Profile',
// // // //       'Orders',
// // // //       'Comments',
// // // //     ];
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       key: _scaffoldKey, // Set the scaffold key here
// // // //       appBar: AppBar(
// // // //         title: Text(
// // // //           _getTitles()[_selectedIndex],
// // // //           style: const TextStyle(
// // // //             fontWeight: FontWeight.bold,
// // // //             color: Colors.white,
// // // //           ),
// // // //         ),
// // // //         backgroundColor: Theme.of(context).primaryColor,
// // // //         actions: [
// // // //           if (_selectedIndex == 0) ...[ // Show logout only on profile screen
// // // //             IconButton(
// // // //               icon: const Icon(Icons.logout),
// // // //               onPressed: () {
// // // //                 Navigator.pushReplacement(
// // // //                   context,
// // // //                   MaterialPageRoute(
// // // //                     builder: (context) => SignInScreen(
// // // //                       // changeLocale: _changeLocale, // Pass the function here if needed
// // // //                     ),
// // // //                   ),
// // // //                 );
// // // //               },
// // // //               tooltip: 'Log Out', // Use hardcoded string for logout
// // // //             ),
// // // //             IconButton(
// // // //               icon: const Icon(Icons.language),
// // // //               onPressed: _changeLocale,
// // // //             ),
// // // //           ],
// // // //         ],
// // // //       ),
// // // //       body: _screens[_selectedIndex],
// // // //       bottomNavigationBar: ClipRRect(
// // // //         borderRadius: const BorderRadius.only(
// // // //           topLeft: Radius.circular(30),
// // // //           topRight: Radius.circular(30),
// // // //         ),
// // // //         child: BottomNavigationBar(
// // // //           currentIndex: _selectedIndex,
// // // //           onTap: _onItemTapped,
// // // //           backgroundColor: Theme.of(context).primaryColor,
// // // //           selectedItemColor: const Color.fromARGB(255, 165, 144, 144),
// // // //           unselectedItemColor: Colors.white,
// // // //           items: [
// // // //             BottomNavigationBarItem(
// // // //               icon: const Icon(Icons.person),
// // // //               label: 'Profile',
// // // //             ),
// // // //             BottomNavigationBarItem(
// // // //               icon: const Icon(Icons.list),
// // // //               label: 'Orders',
// // // //             ),
// // // //             BottomNavigationBarItem(
// // // //               icon: const Icon(Icons.comment),
// // // //               label: 'Comments',
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // // import 'package:flutter/material.dart';
// // // import 'venderprofile.dart';
// // // import 'VendorOrders.dart';
// // // import 'venderComments.dart';
// // // import 'login_screen.dart'; // Corrected import for SignInScreen
// // // import 'package:http/http.dart' as http; // Add HTTP package for network requests
// // // import 'dart:convert'; // Add JSON package for decoding responses

// // // class VendorMainScreen extends StatefulWidget {
// // //   final String userId; // Accept userId as a parameter

// // //   const VendorMainScreen({Key? key, required this.userId}) : super(key: key);

// // //   @override
// // //   _VendorMainScreenState createState() => _VendorMainScreenState();
// // // }

// // // class _VendorMainScreenState extends State<VendorMainScreen> {
// // //   int _selectedIndex = 0;
// // //   String? _vendorId; // Store the vendorId

// // //   // Global Key for managing Scaffold state across different screens
// // //   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

// // //   // Initialize the screens list with placeholders
// // //   late List<Widget> _screens = [
// // //     Center(child: CircularProgressIndicator()), // Placeholder for VendorProfile screen
// // //     Center(child: CircularProgressIndicator()), // Placeholder for VendorOrders screen
// // //     Center(child: CircularProgressIndicator()), // Placeholder for VendorComments screen
// // //   ];

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _fetchVendorId();
// // //   }

// // //   Future<void> _fetchVendorId() async {
// // //     final response = await http.get(
// // //       Uri.parse('https://192.168.0.109:7127/api/venderProfileFilter?userId=${widget.userId}'),
// // //     );

// // //     if (response.statusCode == 200) {
// // //       final data = jsonDecode(response.body);
// // //       setState(() {
// // //         _vendorId = data['vendorId'];
// // //         // Update the screens list with the actual screens
// // //         _screens = [
// // //       VendorProfile(
// // //                       userId: _userId!,
// // //          vendorId: _vendorId!,
// // // ),
// // //        MissionsScreen  (), // Pass the vendorId to VendorOrders if needed
// // //           VendorComments(), // Pass the vendorId to VendorComments if needed
// // //         ];
// // //       });
// // //     } else {
// // //       // Handle error
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //         SnackBar(content: Text('Failed to fetch vendor ID')),
// // //       );
// // //     }
// // //   }

// // //   void _onItemTapped(int index) {
// // //     setState(() {
// // //       _selectedIndex = index;
// // //     });
// // //   }

// // //   void _changeLocale() {
// // //     // Implement any logic for changing locale here
// // //   }

// // //   List<String> _getTitles() {
// // //     return [
// // //       'Profile',
// // //       'Orders',
// // //       'Comments',
// // //     ];
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       key: _scaffoldKey, // Set the scaffold key here
// // //       appBar: AppBar(
// // //         title: Text(
// // //           _getTitles()[_selectedIndex],
// // //           style: const TextStyle(
// // //             fontWeight: FontWeight.bold,
// // //             color: Colors.white,
// // //           ),
// // //         ),
// // //         backgroundColor: Theme.of(context).primaryColor,
// // //         actions: [
// // //           if (_selectedIndex == 0) ...[
// // //             // Show logout only on profile screen
// // //             IconButton(
// // //               icon: const Icon(Icons.logout),
// // //               onPressed: () {
// // //                 Navigator.pushReplacement(
// // //                   context,
// // //                   MaterialPageRoute(
// // //                     builder: (context) => SignInScreen(),
// // //                   ),
// // //                 );
// // //               },
// // //               tooltip: 'Log Out', // Use hardcoded string for logout
// // //             ),
// // //             IconButton(
// // //               icon: const Icon(Icons.language),
// // //               onPressed: _changeLocale,
// // //             ),
// // //           ],
// // //         ],
// // //       ),
// // //       body: _screens[_selectedIndex],
// // //       bottomNavigationBar: ClipRRect(
// // //         borderRadius: const BorderRadius.only(
// // //           topLeft: Radius.circular(30),
// // //           topRight: Radius.circular(30),
// // //         ),
// // //         child: BottomNavigationBar(
// // //           currentIndex: _selectedIndex,
// // //           onTap: _onItemTapped,
// // //           backgroundColor: Theme.of(context).primaryColor,
// // //           selectedItemColor: const Color.fromARGB(255, 165, 144, 144),
// // //           unselectedItemColor: Colors.white,
// // //           items: const [
// // //             BottomNavigationBarItem(
// // //               icon: Icon(Icons.person),
// // //               label: 'Profile',
// // //             ),
// // //             BottomNavigationBarItem(
// // //               icon: Icon(Icons.list),
// // //               label: 'Orders',
// // //             ),
// // //             BottomNavigationBarItem(
// // //               icon: Icon(Icons.comment),
// // //               label: 'Comments',
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'VenderProfile.dart'; // Corrected import for VendorProfile
// // import 'vendorOrders.dart'; // Corrected import for VendorOrders
// // import 'VenderComments.dart'; // Corrected import for VendorComments
// // import 'login_screen.dart'; // Corrected import for SignInScreen
// // import 'package:http/http.dart' as http; // Add HTTP package for network requests
// // import 'dart:convert'; // Add JSON package for decoding responses

// // class VendorMainScreen extends StatefulWidget {
// //   final String userId; // Accept userId as a parameter

// //   const VendorMainScreen({Key? key, required this.userId}) : super(key: key);

// //   @override
// //   _VendorMainScreenState createState() => _VendorMainScreenState();
// // }

// // class _VendorMainScreenState extends State<VendorMainScreen> {
// //   int _selectedIndex = 0;
// //   String? _vendorId; // Store the vendorId

// //   // Global Key for managing Scaffold state across different screens
// //   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

// //   // Initialize the screens list with placeholders
// //   late List<Widget> _screens = [
// //     Center(child: CircularProgressIndicator()), // Placeholder for VendorProfile screen
// //     Center(child: CircularProgressIndicator()), // Placeholder for VendorOrders screen
// //     Center(child: CircularProgressIndicator()), // Placeholder for VendorComments screen
// //   ];

// //   @override
// //   void initState() {
// //     super.initState();
// //     _fetchVendorId();
// //   }

// //   Future<void> _fetchVendorId() async {
// //     final response = await http.get(
// //       Uri.parse('https://192.168.0.109:7127/api/VenderProfile/filter?userId=${widget.userId}'),
// //     );

// //     if (response.statusCode == 200 || response.statusCode == 201) {
// //       final data = jsonDecode(response.body);
// //       if (data.isNotEmpty) {
// //         setState(() {
// //           // Assuming the data contains a list and you need the first item's userId as vendorId
// //           _vendorId = data[0]['id'];
// //           // Update the screens list with the actual screens
// //           _screens = [
// //             VendorProfile(
// //               userId: widget.userId,
// //               vendorId: _vendorId!,
// //             ),
// //            MissionsScreen(), // Pass the vendorId to VendorOrders if needed
// //             VendorComments(), // Pass the vendorId to VendorComments if needed
// //           ];
// //         });
// //       } else {
// //         // Handle empty response
// //         ScaffoldMessenger.of(context).showSnackBar(
// //           SnackBar(content: Text('No vendor profile found for this user ID')),
// //         );
// //       }
// //     } else {
// //       // Handle error
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(content: Text('Failed to fetch vendor ID')),
// //       );
// //     }
// //   }

// //   void _onItemTapped(int index) {
// //     setState(() {
// //       _selectedIndex = index;
// //     });
// //   }

// //   void _changeLocale() {
// //     // Implement any logic for changing locale here
// //   }

// //   List<String> _getTitles() {
// //     return [
// //       'Profile',
// //       'Orders',
// //       'Comments',
// //     ];
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       key: _scaffoldKey, // Set the scaffold key here
// //       appBar: AppBar(
// //         title: Text(
// //           _getTitles()[_selectedIndex],
// //           style: const TextStyle(
// //             fontWeight: FontWeight.bold,
// //             color: Colors.white,
// //           ),
// //         ),
// //         backgroundColor: Theme.of(context).primaryColor,
// //         actions: [
// //           if (_selectedIndex == 0) ...[
// //             // Show logout only on profile screen
// //             IconButton(
// //               icon: const Icon(Icons.logout),
// //               onPressed: () {
// //                 Navigator.pushReplacement(
// //                   context,
// //                   MaterialPageRoute(
// //                     builder: (context) => SignInScreen(),
// //                   ),
// //                 );
// //               },
// //               tooltip: 'Log Out', // Use hardcoded string for logout
// //             ),
// //             IconButton(
// //               icon: const Icon(Icons.language),
// //               onPressed: _changeLocale,
// //             ),
// //           ],
// //         ],
// //       ),
// //       body: _screens[_selectedIndex],
// //       bottomNavigationBar: ClipRRect(
// //         borderRadius: const BorderRadius.only(
// //           topLeft: Radius.circular(30),
// //           topRight: Radius.circular(30),
// //         ),
// //         child: BottomNavigationBar(
// //           currentIndex: _selectedIndex,
// //           onTap: _onItemTapped,
// //           backgroundColor: Theme.of(context).primaryColor,
// //           selectedItemColor: const Color.fromARGB(255, 165, 144, 144),
// //           unselectedItemColor: Colors.white,
// //           items: const [
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.person),
// //               label: 'Profile',
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.list),
// //               label: 'Orders',
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.comment),
// //               label: 'Comments',
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'VenderProfile.dart'; // Corrected import for VenderProfile
// import 'vendorOrders.dart'; // Corrected import for vendorOrders
// import 'VenderComments.dart'; // Corrected import for VenderComments
// import 'login_screen.dart'; // Corrected import for SignInScreen
// import 'package:http/http.dart' as http; // Add HTTP package for network requests
// import 'dart:convert'; // Add JSON package for decoding responses

// class VendorMainScreen extends StatefulWidget {
//   final String userId; // Accept userId as a parameter

//   const VendorMainScreen({Key? key, required this.userId}) : super(key: key);

//   @override
//   _VendorMainScreenState createState() => _VendorMainScreenState();
// }

// class _VendorMainScreenState extends State<VendorMainScreen> {
//   int _selectedIndex = 0;
//   String? _vendorId; // Store the vendorId
//   String? _categoryId; // Store the categoryId

//   // Global Key for managing Scaffold state across different screens
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   // Initialize the screens list with placeholders
//   late List<Widget> _screens = [
//     Center(child: CircularProgressIndicator()), // Placeholder for VenderProfile screen
//     Center(child: CircularProgressIndicator()), // Placeholder for vendorOrders screen
//     Center(child: CircularProgressIndicator()), // Placeholder for VenderComments screen
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _fetchVendorId();

//   }

//   Future<void> _fetchVendorId() async {
//     final response = await http.get(
//       Uri.parse('https://192.168.0.109:7127/api/VenderProfile/filter?userId=${widget.userId}'),
//     );

//     if (response.statusCode == 200 || response.statusCode == 201) {
//       final data = jsonDecode(response.body);
//       if (data.isNotEmpty) {
//         setState(() {
//           _vendorId = data[0]['id'];
//           _fetchVendorProfile(_vendorId!);
//         });
//       } else {
//         // Handle empty response
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('No vendor profile found for this user ID')),
//         );
//       }
//     } else {
//       // Handle error
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Failed to fetch vendor ID')),
//       );
//     }
//   }

//   Future<void> _fetchVendorProfile(String vendorId) async {
//     final response = await http.get(
//       Uri.parse('https://192.168.0.109:7127/api/VenderProfile/$vendorId'),
//     );

//     if (response.statusCode == 200 || response.statusCode == 201) {
//       final data = jsonDecode(response.body);
//       setState(() {
//         _categoryId = data['categoryId'];
//         // Update the screens list with the actual screens
//         _screens = [
//           VendorProfile(
//             userId: widget.userId,
//             vendorId: _vendorId!,
//           ),
//           MissionsScreen(
//             categoryId: _categoryId!,
//           ),
//           VendorComments(),
//         ];
//       });
//     } else {
//       // Handle error
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Failed to fetch vendor profile')),
//       );
//     }
//   }

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   void _changeLocale() {
//     // Implement any logic for changing locale here
//   }

//   List<String> _getTitles() {
//     return [
//       'Profile',
//       'Orders',
//       'Comments',
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey, // Set the scaffold key here
//       appBar: AppBar(
//         title: Text(
//           _getTitles()[_selectedIndex],
//           style: const TextStyle(
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//         backgroundColor: Theme.of(context).primaryColor,
//         actions: [
//           if (_selectedIndex == 0) ...[
//             // Show logout only on profile screen
//             IconButton(
//               icon: const Icon(Icons.logout),
//               onPressed: () {
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => SignInScreen(),
//                   ),
//                 );
//               },
//               tooltip: 'Log Out', // Use hardcoded string for logout
//             ),
//             IconButton(
//               icon: const Icon(Icons.language),
//               onPressed: _changeLocale,
//             ),
//           ],
//         ],
//       ),
//       body: _screens[_selectedIndex],
//       bottomNavigationBar: ClipRRect(
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(30),
//           topRight: Radius.circular(30),
//         ),
//         child: BottomNavigationBar(
//           currentIndex: _selectedIndex,
//           onTap: _onItemTapped,
//           backgroundColor: Theme.of(context).primaryColor,
//           selectedItemColor: const Color.fromARGB(255, 165, 144, 144),
//           unselectedItemColor: Colors.white,
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: 'Profile',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.list),
//               label: 'Orders',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.comment),
//               label: 'Comments',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'VenderProfile.dart'; // Corrected import for VenderProfile
//import 'vendorOrders.dart'; // Corrected import for vendorOrders
import 'VenderComments.dart'; // Corrected import for VenderComments
import 'login_screen.dart'; // Corrected import for SignInScreen
import 'package:http/http.dart'
    as http; // Add HTTP package for network requests
import 'dart:convert'; // Add JSON package for decoding responses
//import 'MissionsScreen.dart'; // Corrected import for MissionsScreen
import 'VendorOrders.dart';

class VendorMainScreen extends StatefulWidget {
  final String userId; // Accept userId as a parameter

  const VendorMainScreen({Key? key, required this.userId}) : super(key: key);

  @override
  _VendorMainScreenState createState() => _VendorMainScreenState();
}

class _VendorMainScreenState extends State<VendorMainScreen> {
  int _selectedIndex = 0;
  String? _vendorId; // Store the vendorId
  String? _categoryId; // Store the categoryId

  // Global Key for managing Scaffold state across different screens
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // Initialize the screens list with placeholders
  late List<Widget> _screens = [
    Center(
        child:
            CircularProgressIndicator()), // Placeholder for VenderProfile screen
    Center(
        child:
            CircularProgressIndicator()), // Placeholder for vendorOrders screen
    Center(
        child:
            CircularProgressIndicator()), // Placeholder for VenderComments screen
  ];

  @override
  void initState() {
    super.initState();
    _fetchVendorId();
  }

  Future<void> _fetchVendorId() async {
    final response = await http.get(
      Uri.parse(
          'https://192.168.0.109:7127/api/VenderProfile/filter?userId=${widget.userId}'),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body);
      if (data.isNotEmpty) {
        setState(() {
          _vendorId = data[0]['id'];
          _fetchVendorProfile(_vendorId!);
        });
      } else {
        // Handle empty response
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('No vendor profile found for this user ID')),
        );
      }
    } else {
      // Handle error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to fetch vendor ID')),
      );
    }
  }

  Future<void> _fetchVendorProfile(String vendorId) async {
    final response = await http.get(
      Uri.parse('https://192.168.0.109:7127/api/VenderProfile/$vendorId'),
    );
    print(jsonDecode(response.body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body);
      setState(() {
        _categoryId = data['categoryId'];
        // Update the screens list with the actual screens
        _screens = [
          VendorProfile(
            userId: widget.userId,
            vendorId: _vendorId!,
          ),
          MissionsScreen(
            categoryId: _categoryId!,
             vendorId: _vendorId!,
            
          ),
         VendorCommentsScreen( vendorId: _vendorId!,),
        ];
      });
    } else {
      // Handle error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to fetch vendor profile')),
      );
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _changeLocale() {
    // Implement any logic for changing locale here
  }

  List<String> _getTitles() {
    return [
      'Profile',
      'Orders',
      'Comments',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Set the scaffold key here
      appBar: AppBar(
        title: Text(
          _getTitles()[_selectedIndex],
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          if (_selectedIndex == 0) ...[
            // Show logout only on profile screen
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(),
                  ),
                );
              },
              tooltip: 'Log Out', // Use hardcoded string for logout
            ),
            IconButton(
              icon: const Icon(Icons.language),
              onPressed: _changeLocale,
            ),
          ],
        ],
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: const Color.fromARGB(255, 165, 144, 144),
          unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.comment),
              label: 'Comments',
            ),
          ],
        ),
      ),
    );
  }
}

