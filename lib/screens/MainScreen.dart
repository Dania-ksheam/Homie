//  import 'package:flutter/material.dart';
// import 'user_home.dart';
// import 'profile_screen.dart';
// import 'orders_screen.dart';
// import 'package:test/extantion.dart'; // Your localization extension
// import 'sigin_screen.dart'; // Correct the import for SignInScreen

// class MainScreen extends StatefulWidget {
//   final String userId; // Accept userId as a parameter

//   const MainScreen({Key? key, required this.userId}) : super(key: key);

//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int _selectedIndex = 0;

//   // Global Key for managing Scaffold state across different screens
//    supportedLocales: AppLocalizations.supportedLocales, // Supported locales
//       localizationsDelegates: [
//         AppLocalizations.delegate, // Delegate for handling translations
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//       ],
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   late final List<Widget> _screens = [
//     UserHomeScreen(),
//     ProfileScreen(userId: widget.userId, onLocaleChange: _changeLocale),
//     OrdersScreen(),
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
//       context.t.home,
//       context.t.profile,
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
//           if (_selectedIndex == 1) ...[
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
//               borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(30),
//                 topRight: Radius.circular(30),
//               ),
//               child: BottomNavigationBar(
//                 currentIndex: _selectedIndex,
//                 onTap: _onItemTapped,
//                 backgroundColor: Theme.of(context).primaryColor,
//                 selectedItemColor: const Color.fromARGB(255, 165, 144, 144),
//                 unselectedItemColor: Colors.white,
//                 items: [
//                   BottomNavigationBarItem(
//                     icon: const Icon(Icons.home),
//                     label: AppLocalizations.of(context).home,
//                   ),
//                   BottomNavigationBarItem(
//                     icon: const Icon(Icons.person),
//                     label: AppLocalizations.of(context).profile,
//                   ),
//                   BottomNavigationBarItem(
//                     icon: const Icon(Icons.list),
//                     label: AppLocalizations.of(context).orders,
//                   ),
//                 ],
//               ),
//             ),
//     );
//   }
// }
 