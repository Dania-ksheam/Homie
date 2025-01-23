// // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // import 'package:flutter_localizations/flutter_localizations.dart';
// // // // // // // // import 'screens/profile_screen.dart';
// // // // // // // // import 'screens/orders_screen.dart';
// // // // // // // // import 'screens/user_home.dart';
// // // // // // // // import 'screens/sigin_screen.dart';
// // // // // // // // import 'theme.dart';
// // // // // // // // import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// // // // // // // // void main() {
// // // // // // // //   runApp(MyApp());
// // // // // // // // }

// // // // // // // // class MyApp extends StatefulWidget {
// // // // // // // //   @override
// // // // // // // //   _MyAppState createState() => _MyAppState();
// // // // // // // // }

// // // // // // // // class _MyAppState extends State<MyApp> {
// // // // // // // //   int _selectedIndex = 0;

// // // // // // // //   // Default locale (Arabic)
// // // // // // // //   Locale locale = const Locale('en', '');

// // // // // // // //   // Function to change the locale dynamically
// // // // // // // //   void _changeLocale() {
// // // // // // // //     setState(() {
// // // // // // // //       locale = (locale.languageCode == 'en') ? const Locale('ar', '') : const Locale('en', '');
// // // // // // // //     });
// // // // // // // //   }

// // // // // // // //   // Screens for each navigation bar item
// // // // // // // //   late final List<Widget> _screens = [
// // // // // // // //     UserHomeScreen(),
// // // // // // // //     ProfileScreen(onLocaleChange: _changeLocale),
// // // // // // // //     OrdersScreen(),
// // // // // // // //   ];

// // // // // // // //   // Handle navigation bar taps
// // // // // // // //   void _onItemTapped(int index) {
// // // // // // // //     setState(() {
// // // // // // // //       _selectedIndex = index;
// // // // // // // //     });
// // // // // // // //   }

// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return MaterialApp(
// // // // // // // //        debugShowCheckedModeBanner: false,
// // // // // // // //       locale: locale, // Set the global locale
// // // // // // // //       theme: appTheme, // Use custom theme
// // // // // // // //       localizationsDelegates: const [
// // // // // // // //         AppLocalizations.delegate, // Generated localization delegate
// // // // // // // //         GlobalMaterialLocalizations.delegate,
// // // // // // // //         GlobalWidgetsLocalizations.delegate,
// // // // // // // //       ],
// // // // // // // //       supportedLocales: const [
// // // // // // // //         Locale('en', ''), // English
// // // // // // // //         Locale('ar', ''), // Arabic
// // // // // // // //       ],
// // // // // // // //       home: Builder(
// // // // // // // //         builder: (context) {
// // // // // // // //           return Scaffold(
// // // // // // // //             appBar: PreferredSize(
// // // // // // // //               preferredSize: const Size.fromHeight(55),
// // // // // // // //               child: ClipRRect(
// // // // // // // //                 borderRadius: const BorderRadius.only(
// // // // // // // //                   bottomLeft: Radius.circular(30),
// // // // // // // //                   bottomRight: Radius.circular(30),
// // // // // // // //                 ),
// // // // // // // //                 child: AppBar(
// // // // // // // //                   title: Text(
// // // // // // // //                     _getTitles(context)[_selectedIndex],
// // // // // // // //                     style: const TextStyle(
// // // // // // // //                       fontWeight: FontWeight.bold,
// // // // // // // //                       color: Colors.white,
// // // // // // // //                     ),
// // // // // // // //                   ),
// // // // // // // //                   backgroundColor: Theme.of(context).primaryColor,
// // // // // // // //                   actions: [
// // // // // // // //                     if (_selectedIndex == 1) ...[
// // // // // // // //                       IconButton(
// // // // // // // //                         icon: const Icon(Icons.logout),
// // // // // // // //                         onPressed: () {
// // // // // // // //                           Navigator.pushReplacement(
// // // // // // // //                             context,
// // // // // // // //                             MaterialPageRoute(
// // // // // // // //                               builder: (context) => const SignUpScreen(userType: 'Guest'),
// // // // // // // //                             ),
// // // // // // // //                           );
// // // // // // // //                         },
// // // // // // // //                         tooltip: 'Log Out',
// // // // // // // //                       ),
// // // // // // // //                       IconButton(
// // // // // // // //                         icon: const Icon(Icons.language),
// // // // // // // //                         onPressed: _changeLocale,
// // // // // // // //                       ),
// // // // // // // //                     ],
// // // // // // // //                   ],
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //             ),
// // // // // // // //            body: Column(
// // // // // // // //             children: [
// // // // // // // //             //     // Logo Widget
// // // // // // // //                Padding(
// // // // // // // //               padding: const EdgeInsets.all(20.0),
// // // // // // // //                    child: Container(
// // // // // // // //                    width: double.infinity,
// // // // // // // //                     height: 150,
// // // // // // // //                     decoration: BoxDecoration(
// // // // // // // //                      color: Colors.white,
// // // // // // // //                      borderRadius: BorderRadius.circular(15),
// // // // // // // //                      boxShadow: [
// // // // // // // //                      BoxShadow(
// // // // // // // //                          color: Colors.black.withOpacity(0.1),
// // // // // // // //                       spreadRadius: 1,
// // // // // // // //                          blurRadius: 10,
// // // // // // // //                           offset: const Offset(0, 4),
// // // // // // // //                          ),
// // // // // // // //                      ],
// // // // // // // //                      ),
// // // // // // // //                      child: Center(
// // // // // // // //                        child: Image.asset(
// // // // // // // //                        'images/Homie_logo.png',
// // // // // // // //                         height: 120,
// // // // // // // //                         width: 120,
// // // // // // // //                        ),
// // // // // // // //                     ),
// // // // // // // //                  ),
// // // // // // // //                 ),
// // // // // // // //                 // Main content area
// // // // // // // //                Expanded(child: _screens[_selectedIndex]),
// // // // // // // //                ],
// // // // // // // //              ),

// // // // // // // //             bottomNavigationBar: ClipRRect(
// // // // // // // //               borderRadius: const BorderRadius.only(
// // // // // // // //                 topLeft: Radius.circular(30),
// // // // // // // //                 topRight: Radius.circular(30),
// // // // // // // //               ),
// // // // // // // //               child: BottomNavigationBar(
// // // // // // // //                 currentIndex: _selectedIndex,
// // // // // // // //                 onTap: _onItemTapped,
// // // // // // // //                 backgroundColor: Theme.of(context).primaryColor,
// // // // // // // //                 selectedItemColor: const Color.fromARGB(255, 165, 144, 144),
// // // // // // // //                 unselectedItemColor: Colors.white,
// // // // // // // //                 items: [
// // // // // // // //                   BottomNavigationBarItem(
// // // // // // // //                     icon: const Icon(Icons.home),
// // // // // // // //                     label: AppLocalizations.of(context).home,
// // // // // // // //                   ),
// // // // // // // //                   BottomNavigationBarItem(
// // // // // // // //                     icon: const Icon(Icons.person),
// // // // // // // //                     label: AppLocalizations.of(context).profile,
// // // // // // // //                   ),
// // // // // // // //                   BottomNavigationBarItem(
// // // // // // // //                     icon: const Icon(Icons.list),
// // // // // // // //                     label: AppLocalizations.of(context).orders,
// // // // // // // //                   ),
// // // // // // // //                 ],
// // // // // // // //               ),
// // // // // // // //             ),
// // // // // // // //           );
// // // // // // // //         },
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }

// // // // // // // //   // Get localized titles for each screen
// // // // // // // //   List<String> _getTitles(BuildContext context) {
// // // // // // // //     final localizations = AppLocalizations.of(context);
// // // // // // // //     return [
// // // // // // // //       localizations.home,
// // // // // // // //       localizations.profile,
// // // // // // // //       localizations.orders,
// // // // // // // //     ];
// // // // // // // //   }
// // // // // // // // }
// // // // // // // import 'package:flutter/material.dart';
// // // // // // // import 'screens/profile_screen.dart';
// // // // // // // import 'screens/orders_screen.dart';
// // // // // // // import 'screens/user_home.dart';
// // // // // // // import 'screens/SplashScreen.dart'; // Ensure this file exists
// // // // // // // import 'theme.dart';
// // // // // // // import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// // // // // // // import 'package:flutter_localizations/flutter_localizations.dart';
// // // // // // // import 'dart:io';

// // // // // // // void main() {
// // // // // // //   HttpOverrides.global = MyHttpOverrides();
// // // // // // //   runApp(MyApp());
// // // // // // // }

// // // // // // // class MyHttpOverrides extends HttpOverrides {
// // // // // // //   @override
// // // // // // //   HttpClient createHttpClient(SecurityContext? context) {
// // // // // // //     // Disable certificate validation (only for local development)
// // // // // // //     return super.createHttpClient(context)
// // // // // // //       ..badCertificateCallback =
// // // // // // //           (X509Certificate cert, String host, int port) => true;
// // // // // // //   }
// // // // // // // }

// // // // // // // class MyApp extends StatefulWidget {
// // // // // // //   @override
// // // // // // //   _MyAppState createState() => _MyAppState();
// // // // // // // }

// // // // // // // class _MyAppState extends State<MyApp> {
// // // // // // //   int _selectedIndex = 0;

// // // // // // //   // Default locale (Arabic)
// // // // // // //   Locale locale = const Locale('en', '');

// // // // // // //   // Function to change the locale dynamically
// // // // // // //   void _changeLocale() {
// // // // // // //     setState(() {
// // // // // // //       locale = (locale.languageCode == 'en')
// // // // // // //           ? const Locale('ar', '')
// // // // // // //           : const Locale('en', '');
// // // // // // //     });
// // // // // // //   }

// // // // // // //   // Screens for each navigation bar item
// // // // // // //   late final List<Widget> _screens = [
// // // // // // //     UserHomeScreen(),
// // // // // // //     ProfileScreen(onLocaleChange: _changeLocale),
// // // // // // //     OrdersScreen(),
// // // // // // //   ];

// // // // // // //   // Handle navigation bar taps
// // // // // // //   void _onItemTapped(int index) {
// // // // // // //     setState(() {
// // // // // // //       _selectedIndex = index;
// // // // // // //     // });
// // // // // // //   }

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return MaterialApp(
// // // // // // //       debugShowCheckedModeBanner: false,
// // // // // // //       locale: locale, // Set the global locale
// // // // // // //       theme: appTheme, // Use custom theme
// // // // // // //       localizationsDelegates: const [
// // // // // // //         AppLocalizations.delegate, // Generated localization delegate
// // // // // // //         GlobalMaterialLocalizations.delegate,
// // // // // // //         GlobalWidgetsLocalizations.delegate,
// // // // // // //       ],
// // // // // // //       supportedLocales: const [
// // // // // // //         Locale('en', ''), // English
// // // // // // //         Locale('ar', ''), // Arabic
// // // // // // //       ],
// // // // // // //       home: Builder(
// // // // // // //         builder: (context) {
// // // // // // //           return Scaffold(
// // // // // // //             appBar: PreferredSize(
// // // // // // //               preferredSize: const Size.fromHeight(55),
// // // // // // //               child: ClipRRect(
// // // // // // //                 borderRadius: const BorderRadius.only(
// // // // // // //                   bottomLeft: Radius.circular(30),
// // // // // // //                   bottomRight: Radius.circular(30),
// // // // // // //                 ),
// // // // // // //                 child: AppBar(
// // // // // // //                   title: Text(
// // // // // // //                     _getTitles(context)[_selectedIndex],
// // // // // // //                     style: const TextStyle(
// // // // // // //                       fontWeight: FontWeight.bold,
// // // // // // //                       color: Colors.white,
// // // // // // //                     ),
// // // // // // //                   ),
// // // // // // //                   backgroundColor: Theme.of(context).primaryColor,
// // // // // // //                   actions: [
// // // // // // //                     if (_selectedIndex == 1) ...[
// // // // // // //                       IconButton(
// // // // // // //                         icon: const Icon(Icons.logout),
// // // // // // //                         onPressed: () {
// // // // // // //                           Navigator.pushReplacement(
// // // // // // //                             context,
// // // // // // //                             MaterialPageRoute(
// // // // // // //                               builder: (context) => SplashScreen(), // Pass SplashScreen correctly
// // // // // // //                             ),
// // // // // // //                           );
// // // // // // //                         },
// // // // // // //                         tooltip: 'Log Out',
// // // // // // //                       ),
// // // // // // //                       IconButton(
// // // // // // //                         icon: const Icon(Icons.language),
// // // // // // //                         onPressed: _changeLocale,
// // // // // // //                       ),
// // // // // // //                     ],
// // // // // // //                   ],
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //             ),
// // // // // // //             body: Column(
// // // // // // //               children: [
// // // // // // //                 Padding(
// // // // // // //                   padding: const EdgeInsets.all(20.0),
// // // // // // //                   child: Container(
// // // // // // //                     width: double.infinity,
// // // // // // //                     height: 150,
// // // // // // //                     decoration: BoxDecoration(
// // // // // // //                       color: Colors.white,
// // // // // // //                       borderRadius: BorderRadius.circular(15),
// // // // // // //                       boxShadow: [
// // // // // // //                         BoxShadow(
// // // // // // //                           color: Colors.black.withOpacity(0.1),
// // // // // // //                           spreadRadius: 1,
// // // // // // //                           blurRadius: 10,
// // // // // // //                           offset: const Offset(0, 4),
// // // // // // //                         ),
// // // // // // //                       ],
// // // // // // //                     ),
// // // // // // //                     child: Center(
// // // // // // //                       child: Image.asset(
// // // // // // //                         'images/Homie_logo.png',
// // // // // // //                         height: 120,
// // // // // // //                         width: 120,
// // // // // // //                       ),
// // // // // // //                     ),
// // // // // // //                   ),
// // // // // // //                 ),
// // // // // // //                 Expanded(child: _screens[_selectedIndex]),
// // // // // // //               ],
// // // // // // //             ),
// // // // // // //             bottomNavigationBar: ClipRRect(
// // // // // // //               borderRadius: const BorderRadius.only(
// // // // // // //                 topLeft: Radius.circular(30),
// // // // // // //                 topRight: Radius.circular(30),
// // // // // // //               ),
// // // // // // //               child: BottomNavigationBar(
// // // // // // //                 currentIndex: _selectedIndex,
// // // // // // //                 onTap: _onItemTapped,
// // // // // // //                 backgroundColor: Theme.of(context).primaryColor,
// // // // // // //                 selectedItemColor: const Color.fromARGB(255, 165, 144, 144),
// // // // // // //                 unselectedItemColor: Colors.white,
// // // // // // //                 items: [
// // // // // // //                   BottomNavigationBarItem(
// // // // // // //                     icon: const Icon(Icons.home),
// // // // // // //                     label: AppLocalizations.of(context).home,
// // // // // // //                   ),
// // // // // // //                   BottomNavigationBarItem(
// // // // // // //                     icon: const Icon(Icons.person),
// // // // // // //                     label: AppLocalizations.of(context).profile,
// // // // // // //                   ),
// // // // // // //                   BottomNavigationBarItem(
// // // // // // //                     icon: const Icon(Icons.list),
// // // // // // //                     label: AppLocalizations.of(context).orders,
// // // // // // //                   ),
// // // // // // //                 ],
// // // // // // //               ),
// // // // // // //             ),
// // // // // // //           );
// // // // // // //         },
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }

// // // // // // //   List<String> _getTitles(BuildContext context) {
// // // // // // //     final localizations = AppLocalizations.of(context);
// // // // // // //     return [
// // // // // // //       localizations.home,
// // // // // // //       localizations.profile,
// // // // // // //       localizations.orders,
// // // // // // //     ];
// // // // // // //   }
// // // // // // // }
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'screens/profile_screen.dart';
// // // // // // import 'screens/orders_screen.dart';
// // // // // // import 'screens/user_home.dart';
// // // // // // import 'screens/splash_screen.dart'; // Ensure this file exists
// // // // // // import 'theme.dart';
// // // // // // import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// // // // // // import 'package:flutter_localizations/flutter_localizations.dart';
// // // // // // import 'dart:io';

// // // // // // void main() {
// // // // // //   HttpOverrides.global = MyHttpOverrides();
// // // // // //   runApp(MyApp());
// // // // // // }

// // // // // // class MyHttpOverrides extends HttpOverrides {
// // // // // //   @override
// // // // // //   HttpClient createHttpClient(SecurityContext? context) {
// // // // // //     // Disable certificate validation (only for local development)
// // // // // //     return super.createHttpClient(context)
// // // // // //       ..badCertificateCallback =
// // // // // //           (X509Certificate cert, String host, int port) => true;
// // // // // //   }
// // // // // // }

// // // // // // class MyApp extends StatefulWidget {
// // // // // //   @override
// // // // // //   _MyAppState createState() => _MyAppState();
// // // // // // }

// // // // // // class _MyAppState extends State<MyApp> {
// // // // // //   int _selectedIndex = 0;

// // // // // //   // Default locale (Arabic)
// // // // // //   Locale locale = const Locale('en', '');

// // // // // //   // Function to change the locale dynamically
// // // // // //   void _changeLocale() {
// // // // // //     setState(() {
// // // // // //       locale = (locale.languageCode == 'en')
// // // // // //           ? const Locale('ar', '')
// // // // // //           : const Locale('en', '');
// // // // // //     });
// // // // // //   }

// // // // // //   // Screens for each navigation bar item
// // // // // //   late final List<Widget> _screens = [
// // // // // //     UserHomeScreen(),
// // // // // //     ProfileScreen(onLocaleChange: _changeLocale),
// // // // // //     OrdersScreen(),
// // // // // //   ];

// // // // // //   // Handle navigation bar taps
// // // // // //   void _onItemTapped(int index) {
// // // // // //     setState(() {
// // // // // //       _selectedIndex = index;
// // // // // //     });
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return MaterialApp(
// // // // // //       debugShowCheckedModeBanner: false,
// // // // // //       locale: locale, // Set the global locale
// // // // // //       theme: appTheme, // Use custom theme
// // // // // //       localizationsDelegates: const [
// // // // // //         AppLocalizations.delegate, // Generated localization delegate
// // // // // //         GlobalMaterialLocalizations.delegate,
// // // // // //         GlobalWidgetsLocalizations.delegate,
// // // // // //       ],
// // // // // //       supportedLocales: const [
// // // // // //         Locale('en', ''), // English
// // // // // //         Locale('ar', ''), // Arabic
// // // // // //       ],
// // // // // //       home: Builder(
// // // // // //         builder: (context) {
// // // // // //           return Scaffold(
// // // // // //             appBar: PreferredSize(
// // // // // //               preferredSize: const Size.fromHeight(55),
// // // // // //               child: ClipRRect(
// // // // // //                 borderRadius: const BorderRadius.only(
// // // // // //                   bottomLeft: Radius.circular(30),
// // // // // //                   bottomRight: Radius.circular(30),
// // // // // //                 ),
// // // // // //                 child: AppBar(
// // // // // //                   title: Text(
// // // // // //                     _getTitles(context)[_selectedIndex],
// // // // // //                     style: const TextStyle(
// // // // // //                       fontWeight: FontWeight.bold,
// // // // // //                       color: Colors.white,
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                   backgroundColor: Theme.of(context).primaryColor,
// // // // // //                   actions: [
// // // // // //                     if (_selectedIndex == 1) ...[
// // // // // //                       IconButton(
// // // // // //                         icon: const Icon(Icons.logout),
// // // // // //                         onPressed: () {
// // // // // //                           Navigator.pushReplacement(
// // // // // //                             context,
// // // // // //                             MaterialPageRoute(
// // // // // //                               builder: (context) => SplashScreen(), // Pass SplashScreen correctly
// // // // // //                             ),
// // // // // //                           );
// // // // // //                         },
// // // // // //                         tooltip: 'Log Out',
// // // // // //                       ),
// // // // // //                       IconButton(
// // // // // //                         icon: const Icon(Icons.language),
// // // // // //                         onPressed: _changeLocale,
// // // // // //                       ),
// // // // // //                     ],
// // // // // //                   ],
// // // // // //                 ),
// // // // // //               ),
// // // // // //             ),
// // // // // //             body: Column(
// // // // // //               children: [
// // // // // //                 Padding(
// // // // // //                   padding: const EdgeInsets.all(20.0),
// // // // // //                   child: Container(
// // // // // //                     width: double.infinity,
// // // // // //                     height: 150,
// // // // // //                     decoration: BoxDecoration(
// // // // // //                       color: Colors.white,
// // // // // //                       borderRadius: BorderRadius.circular(15),
// // // // // //                       boxShadow: [
// // // // // //                         BoxShadow(
// // // // // //                           color: Colors.black.withOpacity(0.1),
// // // // // //                           spreadRadius: 1,
// // // // // //                           blurRadius: 10,
// // // // // //                           offset: const Offset(0, 4),
// // // // // //                         ),
// // // // // //                       ],
// // // // // //                     ),
// // // // // //                     child: Center(
// // // // // //                       child: Image.asset(
// // // // // //                         'images/Homie_logo.png',
// // // // // //                         height: 120,
// // // // // //                         width: 120,
// // // // // //                       ),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 Expanded(child: _screens[_selectedIndex]),
// // // // // //               ],
// // // // // //             ),
// // // // // //             bottomNavigationBar: ClipRRect(
// // // // // //               borderRadius: const BorderRadius.only(
// // // // // //                 topLeft: Radius.circular(30),
// // // // // //                 topRight: Radius.circular(30),
// // // // // //               ),
// // // // // //               child: BottomNavigationBar(
// // // // // //                 currentIndex: _selectedIndex,
// // // // // //                 onTap: _onItemTapped,
// // // // // //                 backgroundColor: Theme.of(context).primaryColor,
// // // // // //                 selectedItemColor: const Color.fromARGB(255, 165, 144, 144),
// // // // // //                 unselectedItemColor: Colors.white,
// // // // // //                 items: [
// // // // // //                   BottomNavigationBarItem(
// // // // // //                     icon: const Icon(Icons.home),
// // // // // //                     label: AppLocalizations.of(context)?.home ?? 'Home',
// // // // // //                   ),
// // // // // //                   BottomNavigationBarItem(
// // // // // //                     icon: const Icon(Icons.person),
// // // // // //                     label: AppLocalizations.of(context)?.profile ?? 'Profile',
// // // // // //                   ),
// // // // // //                   BottomNavigationBarItem(
// // // // // //                     icon: const Icon(Icons.list),
// // // // // //                     label: AppLocalizations.of(context)?.orders ?? 'Orders',
// // // // // //                   ),
// // // // // //                 ],
// // // // // //               ),
// // // // // //             ),
// // // // // //           );
// // // // // //         },
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   List<String> _getTitles(BuildContext context) {
// // // // // //     final localizations = AppLocalizations.of(context);
// // // // // //     return [
// // // // // //       localizations.home ?? 'Home',
// // // // // //       localizations.profile ?? 'Profile',
// // // // // //       localizations.orders  'Orders',
// // // // // //     ];
// // // // // //   }
// // // // // // }
// // // // // import 'package:flutter/material.dart';
// // // // // import 'screens/profile_screen.dart';
// // // // // import 'screens/orders_screen.dart';
// // // // // import 'screens/user_home.dart';
// // // // // import 'screens/splashscreen.dart'; // Ensure this file exists
// // // // // import 'theme.dart';
// // // // // import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// // // // // import 'package:flutter_localizations/flutter_localizations.dart';
// // // // // import 'dart:io';

// // // // // void main() {
// // // // //   HttpOverrides.global = MyHttpOverrides();
// // // // //   runApp(MyApp());
// // // // // }

// // // // // class MyHttpOverrides extends HttpOverrides {
// // // // //   @override
// // // // //   HttpClient createHttpClient(SecurityContext? context) {
// // // // //     // Disable certificate validation (only for local development)
// // // // //     return super.createHttpClient(context)
// // // // //       ..badCertificateCallback =
// // // // //           (X509Certificate cert, String host, int port) => true;
// // // // //   }
// // // // // }

// // // // // class MyApp extends StatefulWidget {
// // // // //   @override
// // // // //   _MyAppState createState() => _MyAppState();
// // // // // }

// // // // // class _MyAppState extends State<MyApp> {
// // // // //   int _selectedIndex = 0;

// // // // //   // Default locale (Arabic)
// // // // //   Locale locale = const Locale('en', '');

// // // // //   // Function to change the locale dynamically
// // // // //   void _changeLocale() {
// // // // //     setState(() {
// // // // //       locale = (locale.languageCode == 'en')
// // // // //           ? const Locale('ar', '')
// // // // //           : const Locale('en', '');
// // // // //     });
// // // // //   }

// // // // //   // Screens for each navigation bar item
// // // // //   // late final List<Widget> _screens = [
// // // // //   //   UserHomeScreen(),
// // // // //   //  // ProfileScreen(onLocaleChange: _changeLocale),
// // // // //   //   OrdersScreen(),
// // // // //   // ];

// // // // //   // Handle navigation bar taps
// // // // //   void _onItemTapped(int index) {
// // // // //     setState(() {
// // // // //       _selectedIndex = index;
// // // // //     });
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return MaterialApp(
// // // // //       debugShowCheckedModeBanner: false,
// // // // //       locale: locale, // Set the global locale
// // // // //       theme: appTheme, // Use custom theme
// // // // //       localizationsDelegates: const [
// // // // //         AppLocalizations.delegate, // Generated localization delegate
// // // // //         GlobalMaterialLocalizations.delegate,
// // // // //         GlobalWidgetsLocalizations.delegate,
// // // // //       ],
// // // // //       supportedLocales: const [
// // // // //         Locale('en', ''), // English
// // // // //         Locale('ar', ''), // Arabic
// // // // //       ],
// // // // //       home: Builder(
// // // // //         builder: (context) {
// // // // //           return Scaffold(
// // // // //             appBar: PreferredSize(
// // // // //               preferredSize: const Size.fromHeight(55),
// // // // //               child: ClipRRect(
// // // // //                 borderRadius: const BorderRadius.only(
// // // // //                   bottomLeft: Radius.circular(30),
// // // // //                   bottomRight: Radius.circular(30),
// // // // //                 ),
// // // // //                 child: AppBar(
// // // // //                   title: Text(
// // // // //                     _getTitles(context)[_selectedIndex],
// // // // //                     style: const TextStyle(
// // // // //                       fontWeight: FontWeight.bold,
// // // // //                       color: Colors.white,
// // // // //                     ),
// // // // //                   ),
// // // // //                   backgroundColor: Theme.of(context).primaryColor,
// // // // //                   actions: [
// // // // //                     if (_selectedIndex == 1) ...[
// // // // //                       IconButton(
// // // // //                         icon: const Icon(Icons.logout),
// // // // //                         onPressed: () {
// // // // //                           Navigator.pushReplacement(
// // // // //                             context,
// // // // //                             MaterialPageRoute(
// // // // //                               builder: (context) => SplashScreen(), // Pass SplashScreen correctly
// // // // //                             ),
// // // // //                           );
// // // // //                         },
// // // // //                         tooltip: 'Log Out',
// // // // //                       ),
// // // // //                       IconButton(
// // // // //                         icon: const Icon(Icons.language),
// // // // //                         onPressed: _changeLocale,
// // // // //                       ),
// // // // //                     ],
// // // // //                   ],
// // // // //                 ),
// // // // //               ),
// // // // //             ),
// // // // //             body: Column(
// // // // //               children: [
// // // // //                 Padding(
// // // // //                   padding: const EdgeInsets.all(20.0),
// // // // //                   child: Container(
// // // // //                     width: double.infinity,
// // // // //                     height: 150,
// // // // //                     decoration: BoxDecoration(
// // // // //                       color: Colors.white,
// // // // //                       borderRadius: BorderRadius.circular(15),
// // // // //                       boxShadow: [
// // // // //                         BoxShadow(
// // // // //                           color: Colors.black.withOpacity(0.1),
// // // // //                           spreadRadius: 1,
// // // // //                           blurRadius: 10,
// // // // //                           offset: const Offset(0, 4),
// // // // //                         ),
// // // // //                       ],
// // // // //                     ),
// // // // //                     child: Center(
// // // // //                       child: Image.asset(
// // // // //                         'images/Homie_logo.png',
// // // // //                         height: 120,
// // // // //                         width: 120,
// // // // //                       ),
// // // // //                     ),
// // // // //                   ),
// // // // //                 ),
// // // // //               //  Expanded(child: _screens[_selectedIndex]),
// // // // //               ],
// // // // //             ),
// // // // //             bottomNavigationBar: ClipRRect(
// // // // //               borderRadius: const BorderRadius.only(
// // // // //                 topLeft: Radius.circular(30),
// // // // //                 topRight: Radius.circular(30),
// // // // //               ),
// // // // //               child: BottomNavigationBar(
// // // // //                 currentIndex: _selectedIndex,
// // // // //                 onTap: _onItemTapped,
// // // // //                 backgroundColor: Theme.of(context).primaryColor,
// // // // //                 selectedItemColor: const Color.fromARGB(255, 165, 144, 144),
// // // // //                 unselectedItemColor: Colors.white,
// // // // //                 items: [
// // // // //                   BottomNavigationBarItem(
// // // // //                     icon: const Icon(Icons.home),
// // // // //                     label: AppLocalizations.of(context)?.home ?? 'Home',
// // // // //                   ),
// // // // //                   BottomNavigationBarItem(
// // // // //                     icon: const Icon(Icons.person),
// // // // //                     label: AppLocalizations.of(context)?.profile ?? 'Profile',
// // // // //                   ),
// // // // //                   BottomNavigationBarItem(
// // // // //                     icon: const Icon(Icons.list),
// // // // //                     label: AppLocalizations.of(context)?.orders ?? 'Orders',
// // // // //                   ),
// // // // //                 ],
// // // // //               ),
// // // // //             ),
// // // // //           );
// // // // //         },
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   List<String> _getTitles(BuildContext context) {
// // // // //     final localizations = AppLocalizations.of(context);
// // // // //     return [
// // // // //       localizations?.home ?? 'Home',
// // // // //       localizations?.profile ?? 'Profile',
// // // // //       localizations?.orders ?? 'Orders',
// // // // //     ];
// // // // //   }
// // // // // }
// // // // import 'package:flutter/material.dart';
// // // // import 'screens/profile_screen.dart';
// // // // import 'screens/orders_screen.dart';
// // // // import 'screens/user_home.dart';
// // // // import 'screens/splashscreen.dart'; // Ensure this file exists
// // // // import 'theme.dart';
// // // // import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// // // // import 'package:flutter_localizations/flutter_localizations.dart';
// // // // import 'dart:io';

// // // // void main() {
// // // //   HttpOverrides.global = MyHttpOverrides();
// // // //   runApp(MyApp());
// // // // }

// // // // class MyHttpOverrides extends HttpOverrides {
// // // //   @override
// // // //   HttpClient createHttpClient(SecurityContext? context) {
// // // //     // Disable certificate validation (only for local development)
// // // //     return super.createHttpClient(context)
// // // //       ..badCertificateCallback =
// // // //           (X509Certificate cert, String host, int port) => true;
// // // //   }
// // // // }

// // // // class MyApp extends StatefulWidget {
// // // //   @override
// // // //   _MyAppState createState() => _MyAppState();
// // // // }

// // // // class _MyAppState extends State<MyApp> {
// // // //   int _selectedIndex = 0;

// // // //   // Default locale (Arabic)
// // // //   Locale locale = const Locale('en', '');

// // // //   // Function to change the locale dynamically
// // // //   void _changeLocale() {
// // // //     setState(() {
// // // //       locale = (locale.languageCode == 'en')
// // // //           ? const Locale('ar', '')
// // // //           : const Locale('en', '');
// // // //     });
// // // //   }

// // // //   // Screens for each navigation bar item
// // // //   late final List<Widget> _screens = [
// // // //     UserHomeScreen(),
// // // //     ProfileScreen(
// // // //       onLocaleChange: _changeLocale,
// // // //       userId: '',
// // // //     ),
// // // //     OrdersScreen(),
// // // //   ];

// // // //   // Handle navigation bar taps
// // // //   void _onItemTapped(int index) {
// // // //     setState(() {
// // // //       _selectedIndex = index;
// // // //     });
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return MaterialApp(
// // // //       debugShowCheckedModeBanner: false,
// // // //       locale: locale, // Set the global locale
// // // //       theme: appTheme, // Use custom theme
// // // //       localizationsDelegates: const [
// // // //         AppLocalizations.delegate, // Generated localization delegate
// // // //         GlobalMaterialLocalizations.delegate,
// // // //         GlobalWidgetsLocalizations.delegate,
// // // //       ],
// // // //       supportedLocales: const [
// // // //         Locale('en', ''), // English
// // // //         Locale('ar', ''), // Arabic
// // // //       ],
// // // //       home: Builder(
// // // //         builder: (context) {
// // // //           return Scaffold(
// // // //             appBar: PreferredSize(
// // // //               preferredSize: const Size.fromHeight(55),
// // // //               child: ClipRRect(
// // // //                 borderRadius: const BorderRadius.only(
// // // //                   bottomLeft: Radius.circular(30),
// // // //                   bottomRight: Radius.circular(30),
// // // //                 ),
// // // //                 child: AppBar(
// // // //                   title: Text(
// // // //                     _getTitles(context)[_selectedIndex],
// // // //                     style: const TextStyle(
// // // //                       fontWeight: FontWeight.bold,
// // // //                       color: Colors.white,
// // // //                     ),
// // // //                   ),
// // // //                   backgroundColor: Theme.of(context).primaryColor,
// // // //                   actions: [
// // // //                     if (_selectedIndex == 1) ...[
// // // //                       IconButton(
// // // //                         icon: const Icon(Icons.logout),
// // // //                         onPressed: () {
// // // //                           Navigator.pushReplacement(
// // // //                             context,
// // // //                             MaterialPageRoute(
// // // //                               builder: (context) =>
// // // //                                   SplashScreen(), // Pass SplashScreen correctly
// // // //                             ),
// // // //                           );
// // // //                         },
// // // //                         tooltip: 'Log Out',
// // // //                       ),
// // // //                       IconButton(
// // // //                         icon: const Icon(Icons.language),
// // // //                         onPressed: _changeLocale,
// // // //                       ),
// // // //                     ],
// // // //                   ],
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //             body: Column(
// // // //               children: [
// // // //                 Padding(
// // // //                   padding: const EdgeInsets.all(20.0),
// // // //                   child: Container(
// // // //                     width: double.infinity,
// // // //                     height: 150,
// // // //                     decoration: BoxDecoration(
// // // //                       color: Colors.white,
// // // //                       borderRadius: BorderRadius.circular(15),
// // // //                       boxShadow: [
// // // //                         BoxShadow(
// // // //                           color: Colors.black.withOpacity(0.1),
// // // //                           spreadRadius: 1,
// // // //                           blurRadius: 10,
// // // //                           offset: const Offset(0, 4),
// // // //                         ),
// // // //                       ],
// // // //                     ),
// // // //                     child: Center(
// // // //                       child: Image.asset(
// // // //                         'images/Homie_logo.png',
// // // //                         height: 120,
// // // //                         width: 120,
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                 ),
// // // //                 Expanded(child: _screens[_selectedIndex]),
// // // //               ],
// // // //             ),
// // // //             bottomNavigationBar: ClipRRect(
// // // //               borderRadius: const BorderRadius.only(
// // // //                 topLeft: Radius.circular(30),
// // // //                 topRight: Radius.circular(30),
// // // //               ),
// // // //               child: BottomNavigationBar(
// // // //                 currentIndex: _selectedIndex,
// // // //                 onTap: _onItemTapped,
// // // //                 backgroundColor: Theme.of(context).primaryColor,
// // // //                 selectedItemColor: const Color.fromARGB(255, 165, 144, 144),
// // // //                 unselectedItemColor: Colors.white,
// // // //                 items: [
// // // //                   BottomNavigationBarItem(
// // // //                     icon: const Icon(Icons.home),
// // // //                     label: AppLocalizations.of(context)?.home ?? 'Home',
// // // //                   ),
// // // //                   BottomNavigationBarItem(
// // // //                     icon: const Icon(Icons.person),
// // // //                     label: AppLocalizations.of(context)?.profile ?? 'Profile',
// // // //                   ),
// // // //                   BottomNavigationBarItem(
// // // //                     icon: const Icon(Icons.list),
// // // //                     label: AppLocalizations.of(context)?.orders ?? 'Orders',
// // // //                   ),
// // // //                 ],
// // // //               ),
// // // //             ),
// // // //           );
// // // //         },
// // // //       ),
// // // //     );
// // // //   }

// // // //   List<String> _getTitles(BuildContext context) {
// // // //     final localizations = AppLocalizations.of(context);
// // // //     return [
// // // //       localizations?.home ?? 'Home',
// // // //       localizations?.profile ?? 'Profile',
// // // //       localizations?.orders ?? 'Orders',
// // // //     ];
// // // //   }
// // // // }
// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_localizations/flutter_localizations.dart';
// // // import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// // // import 'screens/splashscreen.dart'; // Ensure this file exists
// // // import 'theme.dart';
// // // import 'dart:io';

// // // // Entry point of the app
// // // void main() {
// // //   HttpOverrides.global = MyHttpOverrides(); // Handle HTTP overrides for local development
// // //   runApp(const MyApp());
// // // }

// // // // Custom HttpOverrides to bypass SSL for development
// // // class MyHttpOverrides extends HttpOverrides {
// // //   @override
// // //   HttpClient createHttpClient(SecurityContext? context) {
// // //     return super.createHttpClient(context)
// // //       ..badCertificateCallback =
// // //           (X509Certificate cert, String host, int port) => true;
// // //   }
// // // }

// // // // Main Application Widget
// // // class MyApp extends StatelessWidget {
// // //   const MyApp({Key? key}) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       debugShowCheckedModeBanner: false, // Disable debug banner
// // //       theme: appTheme, // Use the custom theme
// // //       localizationsDelegates: const [
// // //         AppLocalizations.delegate, // Generated localization delegate
// // //         GlobalMaterialLocalizations.delegate,
// // //         GlobalWidgetsLocalizations.delegate,
// // //       ],
// // //       supportedLocales: const [
// // //         Locale('en', ''), // English
// // //         Locale('ar', ''), // Arabic
// // //       ],
// // //       home:  SplashScreen(), // Start with the SplashScreen
// // //     );
// // //   }
// // // }
// // // import 'package:flutter/material.dart';
// // // import 'screens/profile_screen.dart';
// // // import 'screens/orders_screen.dart';
// // // import 'screens/user_home.dart';
// // // import 'screens/sigin_screen.dart';
// // // import 'theme.dart';
// // // import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// // // import 'package:flutter_localizations/flutter_localizations.dart';
// // // import 'dart:io';

// // // void main() {
// // //   HttpOverrides.global = MyHttpOverrides();
// // //   runApp(MyApp());
// // // }

// // // class MyHttpOverrides extends HttpOverrides {
// // //   @override
// // //   HttpClient createHttpClient(SecurityContext? context) {
// // //     // Disable certificate validation (only for local development)
// // //     return super.createHttpClient(context)
// // //       ..badCertificateCallback =
// // //           (X509Certificate cert, String host, int port) => true;
// // //   }
// // // }

// // // class MyApp extends StatefulWidget {
// // //   @override
// // //   _MyAppState createState() => _MyAppState();
// // // }

// // // class _MyAppState extends State<MyApp> {
// // //   int _selectedIndex = 0;

// // //   // Default locale (Arabic)
// // //   Locale locale = const Locale('en', '');

// // //   // Function to change the locale dynamically
// // //   void _changeLocale() {
// // //     setState(() {
// // //       locale = (locale.languageCode == 'en')
// // //           ? const Locale('ar', '')
// // //           : const Locale('en', '');
// // //     });
// // //   }

// // //   // Screens for each navigation bar item
// // //   late final List<Widget> _screens = [
// // //     UserHomeScreen(),
// // //     ProfileScreen(onLocaleChange: _changeLocale),
// // //     OrdersScreen(),
// // //   ];

// // //   // Handle navigation bar taps
// // //   void _onItemTapped(int index) {
// // //     setState(() {
// // //       _selectedIndex = index;
// // //     });
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       debugShowCheckedModeBanner: false,
// // //       locale: locale, // Set the global locale
// // //       theme: appTheme, // Use custom theme
// // //       localizationsDelegates: const [
// // //         AppLocalizations.delegate, // Generated localization delegate
// // //         GlobalMaterialLocalizations.delegate,
// // //         GlobalWidgetsLocalizations.delegate,
// // //       ],
// // //       supportedLocales: const [
// // //         Locale('en', ''), // English
// // //         Locale('ar', ''), // Arabic
// // //       ],
// // //       home: Builder(
// // //         builder: (context) {
// // //           return Scaffold(
// // //             appBar: PreferredSize(
// // //               preferredSize: const Size.fromHeight(55),
// // //               child: ClipRRect(
// // //                 borderRadius: const BorderRadius.only(
// // //                   bottomLeft: Radius.circular(30),
// // //                   bottomRight: Radius.circular(30),
// // //                 ),
// // //                 child: AppBar(
// // //                   title: Text(
// // //                     _getTitles(context)[_selectedIndex],
// // //                     style: const TextStyle(
// // //                       fontWeight: FontWeight.bold,
// // //                       color: Colors.white,
// // //                     ),
// // //                   ),
// // //                   backgroundColor: Theme.of(context).primaryColor,
// // //                   actions: [
// // //                     if (_selectedIndex == 1) ...[
// // //                       IconButton(
// // //                         icon: const Icon(Icons.logout),
// // //                         onPressed: () {
// // //                           Navigator.pushReplacement(
// // //                             context,
// // //                             MaterialPageRoute(
// // //                               builder: (context) => SignInScreen(
// // //                                 userType: 'Guest',
// // //                                 changeLocale:
// // //                                     _changeLocale, // Pass the function here
// // //                               ),
// // //                             ),
// // //                           );
// // //                         },
// // //                         tooltip: 'Log Out',
// // //                       ),
// // //                       IconButton(
// // //                         icon: const Icon(Icons.language),
// // //                         onPressed: _changeLocale,
// // //                       ),
// // //                     ],
// // //                   ],
// // //                 ),
// // //               ),
// // //             ),
// // //             body: Column(
// // //               children: [
// // //                 Padding(
// // //                   padding: const EdgeInsets.all(20.0),
// // //                   child: Container(
// // //                     width: double.infinity,
// // //                     height: 150,
// // //                     decoration: BoxDecoration(
// // //                       color: Colors.white,
// // //                       borderRadius: BorderRadius.circular(15),
// // //                       boxShadow: [
// // //                         BoxShadow(
// // //                           color: Colors.black.withOpacity(0.1),
// // //                           spreadRadius: 1,
// // //                           blurRadius: 10,
// // //                           offset: const Offset(0, 4),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                     child: Center(
// // //                       child: Image.asset(
// // //                         'images/Homie_logo.png',
// // //                         height: 120,
// // //                         width: 120,
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 Expanded(child: _screens[_selectedIndex]),
// // //               ],
// // //             ),
// // //             bottomNavigationBar: ClipRRect(
// // //               borderRadius: const BorderRadius.only(
// // //                 topLeft: Radius.circular(30),
// // //                 topRight: Radius.circular(30),
// // //               ),
// // //               child: BottomNavigationBar(
// // //                 currentIndex: _selectedIndex,
// // //                 onTap: _onItemTapped,
// // //                 backgroundColor: Theme.of(context).primaryColor,
// // //                 selectedItemColor: const Color.fromARGB(255, 165, 144, 144),
// // //                 unselectedItemColor: Colors.white,
// // //                 items: [
// // //                   BottomNavigationBarItem(
// // //                     icon: const Icon(Icons.home),
// // //                     label: AppLocalizations.of(context).home,
// // //                   ),
// // //                   BottomNavigationBarItem(
// // //                     icon: const Icon(Icons.person),
// // //                     label: AppLocalizations.of(context).profile,
// // //                   ),
// // //                   BottomNavigationBarItem(
// // //                     icon: const Icon(Icons.list),
// // //                     label: AppLocalizations.of(context).orders,
// // //                   ),
// // //                 ],
// // //               ),
// // //             ),
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }

// // //   List<String> _getTitles(BuildContext context) {
// // //     final localizations = AppLocalizations.of(context);
// // //     return [
// // //       localizations.home,
// // //       localizations.profile,
// // //       localizations.orders,
// // //     ];
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:test/screens/SplashScreen.dart'; // Import splash screen

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: SplashScreen(), // Start with SplashScreen
// //     );
// //   }
// // }

// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:test/screens/SplashScreen.dart';
// import 'package:test/theme.dart';  // Import your them

// void main() {
//   // Override HTTP client to disable certificate validation (only for local development)
//   HttpOverrides.global = MyHttpOverrides();
//   runApp(MyApp());
// }

// class MyHttpOverrides extends HttpOverrides {
//   @override
//   HttpClient createHttpClient(SecurityContext? context) {
//     // Disable certificate validation (only for local development)
//     return super.createHttpClient(context)
//       ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SplashScreen(),
//       supportedLocales: AppLocalizations.supportedLocales, // Supported locales
//       localizationsDelegates: [
//         AppLocalizations.delegate, // Delegate for handling translations
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//       ],
//        theme: appTheme,
//     );
//   }
// }
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Import for localization
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:test/screens/SplashScreen.dart';
import 'package:test/theme.dart';  // Import your theme

void main() {
  // Override HTTP client to disable certificate validation (only for local development)
  HttpOverrides.global = MyHttpOverrides();
  runApp(MyApp());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    // Disable certificate validation (only for local development)
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();

  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.changeLocale(newLocale);
  }
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en'); // Default locale is English

  void changeLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: _locale,
      supportedLocales: const [Locale('en'), Locale('ar')],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      theme: appTheme,
      home: SplashScreen(),
    );
  }
}
