// // // import 'package:flutter/material.dart';
// // // import 'venderprofile.dart';
// // // import 'VendorOrders.dart';
// // // import 'venderComments.dart';
// // // import 'package:test/extantion.dart'; // Your localization extension
// // // import 'sigin_screen.dart'; // Correct the import for SignInScreen

// // // class VendorMainScreen extends StatefulWidget {
// // //   final String userId; // Accept vendorId as a parameter

// // //   const VendorMainScreen({Key? key, required this.userId}) : super(key: key);

// // //   @override
// // //   _VendorMainScreenState createState() => _VendorMainScreenState();
// // // }

// // // class _VendorMainScreenState extends State<VendorMainScreen> {
// // //   int _selectedIndex = 0;

// // //   // Global Key for managing Scaffold state across different screens
// // //   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

// // //   late final List<Widget> _screens = [
// // //      VendorOrders(),
// // //     VendorProfile(userId: widget.userId), // Pass userId to VendorProfile
// // //      VendorComments(),
// // //   ];


// // //   void _onItemTapped(int index) {
// // //     setState(() {
// // //       _selectedIndex = index;
// // //     });
// // //   }

// // //   void _changeLocale() {
// // //     // Implement any logic for changing locale here
// // //   }

// // //   List<String> _getTitles(BuildContext context) {
// // //     return [
// // //       context.t.profile,
// // //       context.t.comments, 
// // //       context.t.orders,
     
// // //     ];
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       key: _scaffoldKey, // Set the scaffold key here
// // //       appBar: AppBar(
// // //         title: Text(
// // //           _getTitles(context)[_selectedIndex],
// // //           style: const TextStyle(
// // //             fontWeight: FontWeight.bold,
// // //             color: Colors.white,
// // //           ),
// // //         ),
// // //         backgroundColor: Theme.of(context).primaryColor,
// // //         actions: [
// // //           if (_selectedIndex == 0) ...[
// // //             IconButton(
// // //               icon: const Icon(Icons.logout),
// // //               onPressed: () {
// // //                 Navigator.pushReplacement(
// // //                   context,
// // //                   MaterialPageRoute(
// // //                     builder: (context) => SignInScreen(
// // //                       changeLocale: _changeLocale, // Pass the function here
// // //                     ),
// // //                   ),
// // //                 );
// // //               },
// // //               tooltip: context.t.logOut, // Use localization for logout
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
// // //           items: [
// // //             BottomNavigationBarItem(
// // //               icon: const Icon(Icons.person),
// // //               label: context.t.profile,
// // //             ),
// // //             BottomNavigationBarItem(
// // //               icon: const Icon(Icons.list),
// // //               label: context.t.orders,
// // //             ),
// // //             BottomNavigationBarItem(
// // //               icon: const Icon(Icons.comment),
// // //               label: context.t.comments,
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'venderprofile.dart';
// // import 'VendorOrders.dart';
// // import 'venderComments.dart';
// // import 'package:test/extantion.dart'; // Your localization extension
// // import 'sigin_screen.dart'; // Corrected import for SignInScreen

// // class VendorMainScreen extends StatefulWidget {
// //   final String userId; // Accept userId as a parameter

// //   const VendorMainScreen({Key? key, required this.userId}) : super(key: key);

// //   @override
// //   _VendorMainScreenState createState() => _VendorMainScreenState();
// // }

// // class _VendorMainScreenState extends State<VendorMainScreen> {
// //   int _selectedIndex = 0;

// //   // Global Key for managing Scaffold state across different screens
// //   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

// //   late final List<Widget> _screens = [
// //     VendorOrders(),
// //     VendorProfile(userId: widget.userId), // Pass vendorId to VendorProfile
// //     VendorComments(),
// //   ];

// //   void _onItemTapped(int index) {
// //     setState(() {
// //       _selectedIndex = index;
// //     });
// //   }

// //   void _changeLocale() {
// //     // Implement any logic for changing locale here
// //   }

// //   List<String> _getTitles(BuildContext context) {
// //     return [
// //       context.t.profile,
// //       context.t.comments, 
// //       context.t.orders,
// //     ];
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       key: _scaffoldKey, // Set the scaffold key here
// //       appBar: AppBar(
// //         title: Text(
// //           _getTitles(context)[_selectedIndex],
// //           style: const TextStyle(
// //             fontWeight: FontWeight.bold,
// //             color: Colors.white,
// //           ),
// //         ),
// //         backgroundColor: Theme.of(context).primaryColor,
// //         actions: [
// //           if (_selectedIndex == 0) ...[ // Show logout only on profile screen
// //             IconButton(
// //               icon: const Icon(Icons.logout),
// //               onPressed: () {
// //                 Navigator.pushReplacement(
// //                   context,
// //                   MaterialPageRoute(
// //                     builder: (context) => SignInScreen(
// //                       changeLocale: _changeLocale, // Pass the function here
// //                     ),
// //                   ),
// //                 );
// //               },
// //               tooltip: context.t.logOut, // Use localization for logout
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
// //           items: [
// //             BottomNavigationBarItem(
// //               icon: const Icon(Icons.person),
// //               label: context.t.profile,
// //             ),
// //             BottomNavigationBarItem(
// //               icon: const Icon(Icons.list),
// //               label: context.t.orders,
// //             ),
// //             BottomNavigationBarItem(
// //               icon: const Icon(Icons.comment),
// //               label: context.t.comments,
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// // vendormainscreen.dart
// import 'package:flutter/material.dart';
// import 'venderprofile.dart';
// import 'VendorOrders.dart';
// import 'venderComments.dart';
// import 'package:test/extantion.dart'; // Your localization extension
// import 'sigin_screen.dart'; // Corrected import for SignInScreen

// class VendorMainScreen extends StatefulWidget {
//   final String userId; // Accept vendorId as a parameter

//   const VendorMainScreen({Key? key, required this.userId}) : super(key: key);

//   @override
//   _VendorMainScreenState createState() => _VendorMainScreenState();
// }

// class _VendorMainScreenState extends State<VendorMainScreen> {
//   int _selectedIndex = 0;

//   // Global Key for managing Scaffold state across different screens
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   late final List<Widget> _screens = [
//     VendorOrders(),
//     VendorProfile(userId: widget.userId), // Pass vendorId to VendorProfile
//     VendorComments(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   void _changeLocale() {
//     // Implement any logic for changing locale here
//   }

//   List<String> _getTitles(BuildContext context) {
//     return [
//       context.t.profile,
//       context.t.comments, 
//       context.t.orders,
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey, // Set the scaffold key here
//       appBar: AppBar(
//         title: Text(
//           _getTitles(context)[_selectedIndex],
//           style: const TextStyle(
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//         backgroundColor: Theme.of(context).primaryColor,
//         actions: [
//           if (_selectedIndex == 0) ...[ // Show logout only on profile screen
//             IconButton(
//               icon: const Icon(Icons.logout),
//               onPressed: () {
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => SignInScreen(
//                       changeLocale: _changeLocale, // Pass the function here
//                     ),
//                   ),
//                 );
//               },
//               tooltip: context.t.logOut, // Use localization for logout
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
//           items: [
//             BottomNavigationBarItem(
//               icon: const Icon(Icons.person),
//               label: context.t.profile,
//             ),
//             BottomNavigationBarItem(
//               icon: const Icon(Icons.list),
//               label: context.t.orders,
//             ),
//             BottomNavigationBarItem(
//               icon: const Icon(Icons.comment),
//               label: context.t.comments,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'venderprofile.dart';
import 'VendorOrders.dart';
import 'venderComments.dart';
import 'package:test/extantion.dart'; // Your localization extension
import 'sigin_screen.dart'; // Corrected import for SignInScreen

class VendorMainScreen extends StatefulWidget {
  final String userId; // Accept vendorId as a parameter

  const VendorMainScreen({Key? key, required this.userId}) : super(key: key);

  @override
  _VendorMainScreenState createState() => _VendorMainScreenState();
}

class _VendorMainScreenState extends State<VendorMainScreen> {
  int _selectedIndex = 0;

  // Global Key for managing Scaffold state across different screens
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  late final List<Widget> _screens = [
    VendorOrders(),
    VendorProfile( ), // Pass vendorId to VendorProfile
    VendorComments(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _changeLocale() {
    // Implement any logic for changing locale here
  }

  List<String> _getTitles(BuildContext context) {
    return [
      context.t.profile,
      context.t.comments, 
      context.t.orders,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Set the scaffold key here
      appBar: AppBar(
        title: Text(
          _getTitles(context)[_selectedIndex],
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          if (_selectedIndex == 0) ...[ // Show logout only on profile screen
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(
                      changeLocale: _changeLocale, // Pass the function here
                    ),
                  ),
                );
              },
              tooltip: context.t.logOut, // Use localization for logout
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
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: context.t.profile,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.list),
              label: context.t.orders,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.comment),
              label: context.t.comments,
            ),
          ],
        ),
      ),
    );
  }
}
