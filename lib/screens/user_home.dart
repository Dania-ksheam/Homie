// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Correct localization import
// // // // // // import 'Template .dart';
// // // // // // class UserHomeScreen extends StatelessWidget {
// // // // // //   const UserHomeScreen({super.key});

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       body: SingleChildScrollView(
// // // // // //         child: Padding(
// // // // // //           padding: const EdgeInsets.all(8.0),
// // // // // //           child: Column(
// // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //             children: <Widget>[
// // // // // //               // Top Rated Section
// // // // // //               Text(
// // // // // //                 AppLocalizations.of(context).top_rated,
// // // // // //                 style: const TextStyle(
// // // // // //                   fontSize: 28,
// // // // // //                   fontWeight: FontWeight.bold,
// // // // // //                 ),
// // // // // //               ),
// // // // // //               const SizedBox(height: 10),
// // // // // //               SizedBox(
// // // // // //                 height: 180,
// // // // // //                 child: ListView.builder(
// // // // // //                   scrollDirection: Axis.horizontal,
// // // // // //                   itemCount: 5,
// // // // // //                   itemBuilder: (context, index) {
// // // // // //                     return buildTopRatedCard(
// // // // // //                       imagePath: 'images/top_rated_${index + 1}.jpg',
// // // // // //                       label: '${AppLocalizations.of(context).top_rated} ${index + 1}',
// // // // // //                     );
// // // // // //                   },
// // // // // //                 ),
// // // // // //               ),
// // // // // //               const SizedBox(height: 30),

// // // // // //               // Category Section
// // // // // //               Text(
// // // // // //                 AppLocalizations.of(context).category,
// // // // // //                 style: const TextStyle(
// // // // // //                   fontSize: 28,
// // // // // //                   fontWeight: FontWeight.bold,
// // // // // //                 ),
// // // // // //               ),
// // // // // //               const SizedBox(height: 30),

// // // // // //               // First Row (2 Images side by side)
// // // // // //               Row(
// // // // // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // //                 children: <Widget>[
// // // // // //                   buildCategoryCard(
// // // // // //                     context: context,
// // // // // //                     imagePath: 'images/Teaching.jpg',
// // // // // //                     label: AppLocalizations.of(context).teaching,
// // // // // //                   ),
// // // // // //                   buildCategoryCard(
// // // // // //                     context: context,
// // // // // //                     imagePath: 'images/Cleaning.jpg',
// // // // // //                     label: AppLocalizations.of(context).cleaning,
// // // // // //                   ),
// // // // // //                 ],
// // // // // //               ),
// // // // // //               const SizedBox(height: 30),

// // // // // //               // Second Row (2 Images side by side)
// // // // // //               Row(
// // // // // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // //                 children: <Widget>[
// // // // // //                   buildCategoryCard(
// // // // // //                     context: context,
// // // // // //                     imagePath: 'images/plumper.jpg',
// // // // // //                     label: AppLocalizations.of(context).plumbing,
// // // // // //                   ),
// // // // // //                   buildCategoryCard(
// // // // // //                     context: context,
// // // // // //                     imagePath: 'images/electrion.jpg',
// // // // // //                     label: AppLocalizations.of(context).electrician,
// // // // // //                   ),
// // // // // //                 ],
// // // // // //               ),
// // // // // //             ],
// // // // // //           ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   // Helper function to build a category card
// // // // // //   Widget buildCategoryCard({
// // // // // //     required BuildContext context,
// // // // // //     required String imagePath,
// // // // // //     required String label,
// // // // // //   }) {
// // // // // //     return InkWell(
// // // // // //       onTap: () {
// // // // // //         Navigator.push(
// // // // // //           context,
// // // // // //           MaterialPageRoute(
// // // // // //             builder: (context) => Template(categoryName: label),
// // // // // //           ),
// // // // // //         );
// // // // // //       },
// // // // // //       child: Stack(
// // // // // //         alignment: Alignment.center,
// // // // // //         children: [
// // // // // //           Container(
// // // // // //             width: 180,
// // // // // //             height: 180,
// // // // // //             decoration: BoxDecoration(
// // // // // //               image: DecorationImage(
// // // // // //                 image: AssetImage(imagePath),
// // // // // //                 fit: BoxFit.cover,
// // // // // //               ),
// // // // // //               borderRadius: BorderRadius.circular(20),
// // // // // //             ),
// // // // // //           ),
// // // // // //           Container(
// // // // // //             width: 180,
// // // // // //             height: 180,
// // // // // //             decoration: BoxDecoration(
// // // // // //               color: Colors.grey.withOpacity(0.5),
// // // // // //               borderRadius: BorderRadius.circular(20),
// // // // // //             ),
// // // // // //             child: Center(
// // // // // //               child: Text(
// // // // // //                 label,
// // // // // //                 style: const TextStyle(
// // // // // //                   color: Colors.white,
// // // // // //                   fontSize: 18,
// // // // // //                   fontWeight: FontWeight.bold,
// // // // // //                 ),
// // // // // //               ),
// // // // // //             ),
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   // Helper function to build a Top Rated card
// // // // // //   Widget buildTopRatedCard({required String imagePath, required String label}) {
// // // // // //     return Container(
// // // // // //       width: 150,
// // // // // //       margin: const EdgeInsets.only(right: 10),
// // // // // //       decoration: BoxDecoration(
// // // // // //         image: DecorationImage(
// // // // // //           image: AssetImage(imagePath),
// // // // // //           fit: BoxFit.cover,
// // // // // //         ),
// // // // // //         borderRadius: BorderRadius.circular(15),
// // // // // //       ),
// // // // // //       child: Container(
// // // // // //         decoration: BoxDecoration(
// // // // // //           color: Colors.black.withOpacity(0.4),
// // // // // //           borderRadius: BorderRadius.circular(15),
// // // // // //         ),
// // // // // //         child: Center(
// // // // // //           child: Text(
// // // // // //             label,
// // // // // //             style: const TextStyle(
// // // // // //               color: Colors.white,
// // // // // //               fontSize: 16,
// // // // // //               fontWeight: FontWeight.bold,
// // // // // //             ),
// // // // // //           ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // // Placeholder for CategoryTemplateScreen
// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:test/extantion.dart';
// // // // // import 'Template .dart';

// // // // // class UserHomeScreen extends StatelessWidget {
// // // // //   const UserHomeScreen({super.key});

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       body: SingleChildScrollView(
// // // // //         child: Padding(
// // // // //           padding: const EdgeInsets.all(8.0),
// // // // //           child: Column(
// // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // //             children: <Widget>[
// // // // //               // Top Rated Section
// // // // //               Text(
// // // // //                 context.t.top_rated,
// // // // //                 style: const TextStyle(
// // // // //                   fontSize: 28,
// // // // //                   fontWeight: FontWeight.bold,
// // // // //                 ),
// // // // //               ),
// // // // //               const SizedBox(height: 10),
// // // // //               SizedBox(
// // // // //                 height: 180,
// // // // //                 child: ListView.builder(
// // // // //                   scrollDirection: Axis.horizontal,
// // // // //                   itemCount: 5,
// // // // //                   itemBuilder: (context, index) {
// // // // //                     return buildTopRatedCard(
// // // // //                       imagePath: 'images/top_rated_${index + 1}.jpg',
// // // // //                       label: '${context.t.top_rated} ${index + 1}',
// // // // //                     );
// // // // //                   },
// // // // //                 ),
// // // // //               ),
// // // // //               const SizedBox(height: 30),

// // // // //               // Category Section
// // // // //               Text(
// // // // //                 context.t.category,
// // // // //                 style: const TextStyle(
// // // // //                   fontSize: 28,
// // // // //                   fontWeight: FontWeight.bold,
// // // // //                 ),
// // // // //               ),
// // // // //               const SizedBox(height: 30),

// // // // //               // First Row (2 Images side by side)
// // // // //               Row(
// // // // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // //                 children: <Widget>[
// // // // //                   buildCategoryCard(
// // // // //                     context: context,
// // // // //                     imagePath: 'images/Teaching.jpg',
// // // // //                     label: context.t.teaching,
// // // // //                   ),
// // // // //                   buildCategoryCard(
// // // // //                     context: context,
// // // // //                     imagePath: 'images/Cleaning.jpg',
// // // // //                     label: context.t.cleaning,
// // // // //                   ),
// // // // //                 ],
// // // // //               ),
// // // // //               const SizedBox(height: 30),

// // // // //               // Second Row (2 Images side by side)
// // // // //               Row(
// // // // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // //                 children: <Widget>[
// // // // //                   buildCategoryCard(
// // // // //                     context: context,
// // // // //                     imagePath: 'images/plumber.jpg',
// // // // //                     label: context.t.plumbing,
// // // // //                   ),
// // // // //                   buildCategoryCard(
// // // // //                     context: context,
// // // // //                     imagePath: 'images/electrician.jpg',
// // // // //                     label: context.t.electrician,
// // // // //                   ),
// // // // //                 ],
// // // // //               ),
// // // // //             ],
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   // Helper function to build a category card
// // // // //   Widget buildCategoryCard({
// // // // //     required BuildContext context,
// // // // //     required String imagePath,
// // // // //     required String label,
// // // // //   }) {
// // // // //     return InkWell(
// // // // //       onTap: () {
// // // // //         Navigator.push(
// // // // //           context,
// // // // //           MaterialPageRoute(
// // // // //             builder: (context) => Template(categoryName: label),
// // // // //           ),
// // // // //         );
// // // // //       },
// // // // //       child: Stack(
// // // // //         alignment: Alignment.center,
// // // // //         children: [
// // // // //           Container(
// // // // //             width: 180,
// // // // //             height: 180,
// // // // //             decoration: BoxDecoration(
// // // // //               image: DecorationImage(
// // // // //                 image: AssetImage(imagePath),
// // // // //                 fit: BoxFit.cover,
// // // // //               ),
// // // // //               borderRadius: BorderRadius.circular(20),
// // // // //             ),
// // // // //           ),
// // // // //           Container(
// // // // //             width: 180,
// // // // //             height: 180,
// // // // //             decoration: BoxDecoration(
// // // // //               color: Colors.grey.withOpacity(0.5),
// // // // //               borderRadius: BorderRadius.circular(20),
// // // // //             ),
// // // // //             child: Center(
// // // // //               child: Text(
// // // // //                 label,
// // // // //                 style: const TextStyle(
// // // // //                   color: Colors.white,
// // // // //                   fontSize: 18,
// // // // //                   fontWeight: FontWeight.bold,
// // // // //                 ),
// // // // //               ),
// // // // //             ),
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   // Helper function to build a Top Rated card
// // // // //   Widget buildTopRatedCard({required String imagePath, required String label}) {
// // // // //     return Container(
// // // // //       width: 150,
// // // // //       margin: const EdgeInsets.only(right: 10),
// // // // //       decoration: BoxDecoration(
// // // // //         image: DecorationImage(
// // // // //           image: AssetImage(imagePath),
// // // // //           fit: BoxFit.cover,
// // // // //         ),
// // // // //         borderRadius: BorderRadius.circular(15),
// // // // //       ),
// // // // //       child: Container(
// // // // //         decoration: BoxDecoration(
// // // // //           color: Colors.black.withOpacity(0.4),
// // // // //           borderRadius: BorderRadius.circular(15),
// // // // //         ),
// // // // //         child: Center(
// // // // //           child: Text(
// // // // //             label,
// // // // //             style: const TextStyle(
// // // // //               color: Colors.white,
// // // // //               fontSize: 16,
// // // // //               fontWeight: FontWeight.bold,
// // // // //             ),
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }
// // // // import 'package:flutter/material.dart';
// // // // //import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// // // // import 'template .dart'; // Import the template file
// // // // import 'package:test/extantion.dart';

// // // // class UserHomeScreen extends StatelessWidget {
// // // //   const UserHomeScreen({super.key});

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       body: SingleChildScrollView(
// // // //         child: Padding(
// // // //           padding: const EdgeInsets.all(8.0),
// // // //           child: Column(
// // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // //             children: <Widget>[
// // // //               // Top Rated Section
// // // //               Text(
// // // //                 context.t.top_rated,
// // // //                 style: const TextStyle(
// // // //                   fontSize: 28,
// // // //                   fontWeight: FontWeight.bold,
// // // //                 ),
// // // //               ),
// // // //               const SizedBox(height: 10),
// // // //               SizedBox(
// // // //                 height: 180,
// // // //                 child: ListView.builder(
// // // //                   scrollDirection: Axis.horizontal,
// // // //                   itemCount: 5,
// // // //                   itemBuilder: (context, index) {
// // // //                     return buildTopRatedCard(
// // // //                       imagePath: 'images/top_rated_${index + 1}.jpg',
// // // //                       label: '${context.t.top_rated} ${index + 1}',
// // // //                     );
// // // //                   },
// // // //                 ),
// // // //               ),
// // // //               const SizedBox(height: 30),

// // // //               // Category Section
// // // //               Text(
// // // //                 context.t.category,
// // // //                 style: const TextStyle(
// // // //                   fontSize: 28,
// // // //                   fontWeight: FontWeight.bold,
// // // //                 ),
// // // //               ),
// // // //               const SizedBox(height: 30),

// // // //               // First Row (2 Images side by side)
// // // //               Row(
// // // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // //                 children: <Widget>[
// // // //                   buildCategoryCard(
// // // //                     context: context,
// // // //                     imagePath: 'images/Teaching.jpg',
// // // //                     label: context.t.teaching,
// // // //                   ),
// // // //                   buildCategoryCard(
// // // //                     context: context,
// // // //                     imagePath: 'images/Cleaning.jpg',
// // // //                     label: context.t.cleaning,
// // // //                   ),
// // // //                 ],
// // // //               ),
// // // //               const SizedBox(height: 30),

// // // //               // Second Row (2 Images side by side)
// // // //               Row(
// // // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // //                 children: <Widget>[
// // // //                   buildCategoryCard(
// // // //                     context: context,
// // // //                     imagePath: 'images/plumber.jpg',
// // // //                     label: context.t.plumbing,
// // // //                   ),
// // // //                   buildCategoryCard(
// // // //                     context: context,
// // // //                     imagePath: 'images/electrician.jpg',
// // // //                     label: context.t.electrician,
// // // //                   ),
// // // //                 ],
// // // //               ),
// // // //             ],
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   // Helper function to build a category card
// // // //   Widget buildCategoryCard({
// // // //     required BuildContext context,
// // // //     required String imagePath,
// // // //     required String label,
// // // //   }) {
// // // //     return InkWell(
// // // //       onTap: () {
// // // //         Navigator.push(
// // // //           context,
// // // //           MaterialPageRoute(
// // // //             builder: (context) => Template(categoryName: label),
// // // //           ),
// // // //         );
// // // //       },
// // // //       child: Stack(
// // // //         alignment: Alignment.center,
// // // //         children: [
// // // //           Container(
// // // //             width: 180,
// // // //             height: 180,
// // // //             decoration: BoxDecoration(
// // // //               image: DecorationImage(
// // // //                 image: AssetImage(imagePath),
// // // //                 fit: BoxFit.cover,
// // // //               ),
// // // //               borderRadius: BorderRadius.circular(20),
// // // //             ),
// // // //           ),
// // // //           Container(
// // // //             width: 180,
// // // //             height: 180,
// // // //             decoration: BoxDecoration(
// // // //               color: Colors.grey.withOpacity(0.5),
// // // //               borderRadius: BorderRadius.circular(20),
// // // //             ),
// // // //             child: Center(
// // // //               child: Text(
// // // //                 label,
// // // //                 style: const TextStyle(
// // // //                   color: Colors.white,
// // // //                   fontSize: 18,
// // // //                   fontWeight: FontWeight.bold,
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   // Helper function to build a Top Rated card
// // // //   Widget buildTopRatedCard({required String imagePath, required String label}) {
// // // //     return Container(
// // // //       width: 150,
// // // //       margin: const EdgeInsets.only(right: 10),
// // // //       decoration: BoxDecoration(
// // // //         image: DecorationImage(
// // // //           image: AssetImage(imagePath),
// // // //           fit: BoxFit.cover,
// // // //         ),
// // // //         borderRadius: BorderRadius.circular(15),
// // // //       ),
// // // //       child: Container(
// // // //         decoration: BoxDecoration(
// // // //           color: Colors.black.withOpacity(0.4),
// // // //           borderRadius: BorderRadius.circular(15),
// // // //         ),
// // // //         child: Center(
// // // //           child: Text(
// // // //             label,
// // // //             style: const TextStyle(
// // // //               color: Colors.white,
// // // //               fontSize: 16,
// // // //               fontWeight: FontWeight.bold,
// // // //             ),
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // import 'package:flutter/material.dart';
// // // import 'package:test/extantion.dart';

// // // class UserHomeScreen extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: Padding(
// // //         padding: const EdgeInsets.all(20.0),
// // //         child: Column(
// // //           children: [
// // //             // Welcome Section
// // //             Container(
// // //               width: double.infinity,
// // //               height: 150,
// // //               decoration: BoxDecoration(
// // //                 color: Colors.white,
// // //                 borderRadius: BorderRadius.circular(15),
// // //                 boxShadow: [
// // //                   BoxShadow(
// // //                     color: Colors.black.withOpacity(0.1),
// // //                     spreadRadius: 1,
// // //                     blurRadius: 10,
// // //                     offset: const Offset(0, 4),
// // //                   ),
// // //                 ],
// // //               ),
// // //               child: Center(
// // //                 child: Image.asset(
// // //                   'images/Homie_logo.png', // Replace with the correct image asset path
// // //                   height: 120,
// // //                   width: 120,
// // //                 ),
// // //               ),
// // //             ),
// // //             const SizedBox(height: 20),
// // //             // Welcome Text
// // //           //   Text(
// // //           //  //   AppLocalizations.of(context)?.welcomeMessage ?? 'Welcome!',
// // //           //     style: const TextStyle(
// // //           //       fontSize: 24,
// // //           //       fontWeight: FontWeight.bold,
// // //           //       color: Colors.black,
// // //           //     ),
// // //           //   ),
// // //             const SizedBox(height: 20),
// // //             //Button Section (e.g., Services, Book Appointment, etc.)
// // //             ElevatedButton(
// // //               onPressed: () {
// // //                 // Add your navigation logic here
// // //              },

// // //           child: Text(context.t.services),

// // //               style: ElevatedButton.styleFrom(
// // //                 padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
// // //                // primary: Theme.of(context).primaryColor,
// // //                 shape: RoundedRectangleBorder(
// // //                   borderRadius: BorderRadius.circular(30),
// // //                 ),
// // //               ),
// // //             ),
// // //             const SizedBox(height: 10),
// // //            // ElevatedButton(
// // //              // onPressed: () {
// // //                 // Add your navigation logic here
// // //              // },
// // //              // child: Text(AppLocalizations.of(context)?.bookAppointment ?? 'Book Appointment'),

// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:test/extantion.dart';//mport 'package:test/screens/services_screen.dart'; // Replace with your actual path

// // //import 'package:your_project_name/ext/localization_extension.dart'; // Path to your extension file

// // class UserHomeScreen extends StatelessWidget {
// //   const UserHomeScreen({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(
// //           context.t.home ?? 'Home',
// //           style: const TextStyle(
// //             fontWeight: FontWeight.bold,
// //             color: Colors.white,
// //           ),
// //         ),
// //         backgroundColor: Theme.of(context).primaryColor,
// //         centerTitle: true,
// //       ),
// //       body: SingleChildScrollView(
// //         child: Padding(
// //           padding: const EdgeInsets.all(20.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.stretch,
// //             children: [
// //               // Welcome Message
// //               Text(
// //                 context.t.welcomeMessage ?? 'Welcome!',
// //                 style: const TextStyle(
// //                   fontSize: 24,
// //                   fontWeight: FontWeight.bold,
// //                   color: Colors.black,
// //                 ),
// //               ),
// //               const SizedBox(height: 10),

// //               // Subtitle
// //               Text(
// //                 context.t.selectOption ?? 'Select an option below:',
// //                 style: const TextStyle(
// //                   fontSize: 16,
// //                   color: Colors.black54,
// //                 ),
// //               ),
// //               const SizedBox(height: 20),

// //               // Services Button
// //               ElevatedButton(
// //                 onPressed: () {
// //                   Navigator.push(
// //                     context,
// //                     MaterialPageRoute(builder: (context) => const ServicesScreen()),
// //                   );
// //                 },
// //                 style: ElevatedButton.styleFrom(
// //                   backgroundColor: Theme.of(context).primaryColor,
// //                   padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(30),
// //                   ),
// //                 ),
// //                 child: Text(
// //                   context.t.services ?? 'Services',
// //                   style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
// //                 ),
// //               ),
// //               const SizedBox(height: 20),

// //               // Book Appointment Button
// //               ElevatedButton(
// //                 onPressed: () {
// //                   // Implement booking logic here
// //                 },
// //                 style: ElevatedButton.styleFrom(
// //                   backgroundColor: Theme.of(context).primaryColor,
// //                   padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(30),
// //                   ),
// //                 ),
// //                 child: Text(
// //                   context.t.bookAppointment ?? 'Book Appointment',
// //                   style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
// //                 ),
// //               ),
// //               const SizedBox(height: 30),

// //               // Logo
// //               Container(
// //                 width: double.infinity,
// //                 height: 150,
// //                 decoration: BoxDecoration(
// //                   color: Colors.white,
// //                   borderRadius: BorderRadius.circular(15),
// //                   boxShadow: [
// //                     BoxShadow(
// //                       color: Colors.black.withOpacity(0.1),
// //                       spreadRadius: 1,
// //                       blurRadius: 10,
// //                       offset: const Offset(0, 4),
// //                     ),
// //                   ],
// //                 ),
// //                 child: Center(
// //                   child: Image.asset(
// //                     'images/Homie_logo.png', // Replace with the correct path
// //                     height: 120,
// //                     width: 120,
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class UserHome extends StatefulWidget {
//   final String email;

//   const UserHome({Key? key, required this.email}) : super(key: key);

//   @override
//   State<UserHome> createState() => _UserHomeState();
// }

// class _UserHomeState extends State<UserHome> {
//   Map<String, dynamic>? _userProfile;
//   bool _isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     _fetchUserProfile();
//   }

//   // Fetch user profile using email
//   Future<void> _fetchUserProfile() async {
//     try {
//       // Replace this with your API endpoint
//       final response = await http.get(
//         Uri.parse('https://192.168.0.109:7127/api/User/{id}'),
//         headers: {'Content-Type': 'application/json'},
//       );

//       if (response.statusCode == 200) {
//         setState(() {
//           _userProfile = json.decode(response.body);
//           _isLoading = false;
//         });
//       } else {
//         print("Failed to load profile. Error: ${response.statusCode}");
//       }
//     } catch (e) {
//       print("An error occurred while fetching the profile: $e");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_isLoading) {
//       return const Scaffold(
//         body: Center(child: CircularProgressIndicator()),
//       );
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Welcome, ${_userProfile?['name'] ?? widget.email}"),
//       ),
//       body: Center(
//         child: Text(
//           "Hello ${_userProfile?['name'] ?? 'User'}! Your email is ${widget.email}.",
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Correct localization import
// import 'CategoryTemplate .dart';
// class UserHomeScreen extends StatelessWidget {
//   const UserHomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               // Top Rated Section
//               Text(
//                 AppLocalizations.of(context).top_rated,
//                 style: const TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               SizedBox(
//                 height: 180,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: 5,
//                   itemBuilder: (context, index) {
//                     return buildTopRatedCard(
//                       imagePath: 'images/top_rated_${index + 1}.jpg',
//                       label: '${AppLocalizations.of(context).top_rated} ${index + 1}',
//                     );
//                   },
//                 ),
//               ),
//               const SizedBox(height: 30),

//               // Category Section
//               Text(
//                 AppLocalizations.of(context).category,
//                 style: const TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 30),

//               // First Row (2 Images side by side)
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   buildCategoryCard(
//                     context: context,
//                     imagePath: 'images/Teaching.jpg',
//                     label: AppLocalizations.of(context).teaching,
//                   ),
//                   buildCategoryCard(
//                     context: context,
//                     imagePath: 'images/Cleaning.jpg',
//                     label: AppLocalizations.of(context).cleaning,
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 30),

//               // Second Row (2 Images side by side)
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   buildCategoryCard(
//                     context: context,
//                     imagePath: 'images/plumper.jpg',
//                     label: AppLocalizations.of(context).plumbing,
//                   ),
//                   buildCategoryCard(
//                     context: context,
//                     imagePath: 'images/electrion.jpg',
//                     label: AppLocalizations.of(context).electrician,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Helper function to build a category card
//   Widget buildCategoryCard({
//     required BuildContext context,
//     required String imagePath,
//     required String label,
//   }) {
//     return InkWell(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => CategoryTemplate(categoryName: label),
//           ),
//         );
//       },
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           Container(
//             width: 180,
//             height: 180,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(imagePath),
//                 fit: BoxFit.cover,
//               ),
//               borderRadius: BorderRadius.circular(20),
//             ),
//           ),
//           Container(
//             width: 180,
//             height: 180,
//             decoration: BoxDecoration(
//               color: Colors.grey.withOpacity(0.5),
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Center(
//               child: Text(
//                 label,
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Helper function to build a Top Rated card
//   Widget buildTopRatedCard({required String imagePath, required String label}) {
//     return Container(
//       width: 150,
//       margin: const EdgeInsets.only(right: 10),
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage(imagePath),
//           fit: BoxFit.cover,
//         ),
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.black.withOpacity(0.4),
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Center(
//           child: Text(
//             label,
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:test/extantion.dart'; // Localization import
import 'CategoryTemplate .dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({super.key});

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  late Future<List<Category>> categories;

  @override
  void initState() {
    super.initState();
    categories = fetchCategories();
  }

  // Fetch data from the API
  Future<List<Category>> fetchCategories() async {
    final response =
        await http.get(Uri.parse('https://192.168.0.109:7127/api/Categroy'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((item) => Category.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Top Rated Section
              Text(
                 context.t.top_rated,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return buildTopRatedCard(
                      imagePath: 'images/top_rated_${index + 1}.jpg',
                      label:
                      //    '${AppLocalizations.of(context).top_rated} ${index + 1}',
                      context.t.top_rated
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),

              // Category Section
              Text(
                   context.t.category,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),

              // Dynamic Categories Section
              FutureBuilder<List<Category>>(
                future: categories,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Center(child: Text('No categories available'));
                  } else {
                    final categories = snapshot.data!;
                    return Column(
                      children: [
                        // First Row (2 Images side by side)
                        for (int i = 0; i < categories.length; i += 2)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buildCategoryCard(
                                context: context,
                                imagePath: categories[i].image,
                                label: categories[i].name,
                              ),
                              if (i + 1 < categories.length)
                                buildCategoryCard(
                                  context: context,
                                  imagePath: categories[i + 1].image,
                                  label: categories[i + 1].name,
                                ),
                            ],
                          ),
                        const SizedBox(height: 30),
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to build a category card
  Widget buildCategoryCard({
    required BuildContext context,
    required String imagePath,
    required String label,
  }) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryTemplate(categoryName: label),
          ),
        );
      },
      child: Column(
        children: [
          Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  // Helper function to build a Top Rated card
  Widget buildTopRatedCard({required String imagePath, required String label}) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.4),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

// Model class for Category
class Category {
  final String id;
  final String name;
  final String image;

  Category({required this.id, required this.name, required this.image});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
    );
  }
}
