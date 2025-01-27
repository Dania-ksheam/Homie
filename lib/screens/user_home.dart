// // //
// // //
// // // import 'package:flutter/material.dart';
// // // import 'dart:convert';
// // // import 'package:http/http.dart' as http;
// // // import 'package:test/extantion.dart'; // Localization import
// // // import 'CategoryTemplate .dart';
// // //
// // // class UserHomeScreen extends StatefulWidget {
// // //   const UserHomeScreen({super.key});
// // //
// // //   @override
// // //   State<UserHomeScreen> createState() => _UserHomeScreenState();
// // // }
// // //
// // // class _UserHomeScreenState extends State<UserHomeScreen> {
// // //   late Future<List<Category>> categories;
// // //
// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     categories = fetchCategories();
// // //   }
// // //
// // //   // Fetch data from the API
// // //   Future<List<Category>> fetchCategories() async {
// // //     final response =
// // //         await http.get(Uri.parse('https://192.168.0.109:7127/api/Categroy'));
// // //
// // //     if (response.statusCode == 200) {
// // //       final List<dynamic> jsonData = json.decode(response.body);
// // //       return jsonData.map((item) => Category.fromJson(item)).toList();
// // //     } else {
// // //       throw Exception('Failed to load categories');
// // //     }
// // //   }
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: SingleChildScrollView(
// // //         child: Padding(
// // //           padding: const EdgeInsets.all(8.0),
// // //           child: Column(
// // //             crossAxisAlignment: CrossAxisAlignment.start,
// // //             children: [
// // //               // Top Rated Section
// // //               Text(
// // //                  context.t.top_rated,
// // //                 style: const TextStyle(
// // //                   fontSize: 28,
// // //                   fontWeight: FontWeight.bold,
// // //                 ),
// // //               ),
// // //               const SizedBox(height: 10),
// // //               SizedBox(
// // //                 height: 180,
// // //                 child: ListView.builder(
// // //                   scrollDirection: Axis.horizontal,
// // //                   itemCount: 5,
// // //                   itemBuilder: (context, index) {
// // //                     return buildTopRatedCard(
// // //                       imagePath: 'images/top_rated_${index + 1}.jpg',//here you put the path of the image
// // //                       label:
// // //                       //    '${AppLocalizations.of(context).top_rated} ${index + 1}',
// // //                       context.t.top_rated
// // //                     );
// // //                   },
// // //                 ),
// // //               ),
// // //               const SizedBox(height: 30),
// // //
// // //               // Category Section
// // //               Text(
// // //                    context.t.category,
// // //                 style: const TextStyle(
// // //                   fontSize: 28,
// // //                   fontWeight: FontWeight.bold,
// // //                 ),
// // //               ),
// // //              //using this -> Image.network("src"), it works exactly like any image widget
// // //               const SizedBox(height: 30), // consider using MediaQuerey , look it up its a helpful widget thats good for Responsive design
// // //
// // //               // Dynamic Categories Section
// // //               FutureBuilder<List<Category>>(
// // //                 future: categories,
// // //                 builder: (context, snapshot) {
// // //                   if (snapshot.connectionState == ConnectionState.waiting) {
// // //                     return const Center(child: CircularProgressIndicator());
// // //                   } else if (snapshot.hasError) {
// // //                     return Center(child: Text('Error: ${snapshot.error}'));
// // //                   } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // //                     return const Center(child: Text('No categories available'));
// // //                   } else {
// // //                     final categories = snapshot.data!;
// // //                     return Column(
// // //                       children: [
// // //                         // First Row (2 Images side by side)
// // //                         for (int i = 0; i < categories.length; i += 2)
// // //                           Row(
// // //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                             children: [
// // //                               buildCategoryCard(
// // //                                 context: context,
// // //                                 imagePath: categories[i].image,
// // //                                 label: categories[i].name,
// // //                               ),
// // //                               if (i + 1 < categories.length)
// // //                                 buildCategoryCard(
// // //                                   context: context,
// // //                                   imagePath: categories[i + 1].image,
// // //                                   label: categories[i + 1].name,
// // //                                 ),
// // //                             ],
// // //                           ),
// // //                         const SizedBox(height: 30),
// // //                       ],
// // //                     );
// // //                   }
// // //                 },
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // //
// // //   // Helper function to build a category card
// // //   Widget buildCategoryCard({
// // //     required BuildContext context,
// // //     required String imagePath,
// // //     required String label,
// // //   }) {
// // //     return InkWell(
// // //       onTap: () {
// // //         Navigator.push(
// // //           context,
// // //           MaterialPageRoute(
// // //             builder: (context) => CategoryTemplate(categoryName: label),
// // //           ),
// // //         );
// // //       },
// // //       child: Column(
// // //         children: [
// // //           Container(
// // //             width: 180,
// // //             height: 180,
// // //             decoration: BoxDecoration(
// // //               image: DecorationImage(
// // //                 image: NetworkImage(imagePath),
// // //                 fit: BoxFit.cover,
// // //               ),
// // //               borderRadius: BorderRadius.circular(20),
// // //             ),
// // //           ),
// // //           const SizedBox(height: 8),
// // //           Text(
// // //             label,
// // //             style: const TextStyle(
// // //               fontSize: 16,
// // //               fontWeight: FontWeight.bold,
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // //
// // //   // Helper function to build a Top Rated card
// // //   Widget buildTopRatedCard({required String imagePath, required String label}) {
// // //     return Container(
// // //       width: 150,
// // //       margin: const EdgeInsets.only(right: 10),
// // //       decoration: BoxDecoration(
// // //         image: DecorationImage(
// // //           image: AssetImage(imagePath),
// // //           fit: BoxFit.cover,
// // //         ),
// // //         borderRadius: BorderRadius.circular(15),
// // //       ),
// // //       child: Container(
// // //         decoration: BoxDecoration(
// // //           color: Colors.black.withOpacity(0.4),
// // //           borderRadius: BorderRadius.circular(15),
// // //         ),
// // //         child: Center(
// // //           child: Text(
// // //             label,
// // //             style: const TextStyle(
// // //               color: Colors.white,
// // //               fontSize: 16,
// // //               fontWeight: FontWeight.bold,
// // //             ),
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // //
// // // // Model class for Category
// // // class Category {
// // //   final String id;
// // //   final String name;
// // //   final String image;
// // //
// // //   Category({required this.id, required this.name, required this.image});
// // //
// // //   factory Category.fromJson(Map<String, dynamic> json) {
// // //     return Category(
// // //       id: json['id'] as String,
// // //       name: json['name'] as String,
// // //       image: json['image'] as String,
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'dart:convert';
// // import 'package:http/http.dart' as http;
// // import 'CategoryTemplate.dart';
// //
// // class UserHomeScreen extends StatefulWidget {
// //   const UserHomeScreen({super.key});
// //
// //   @override
// //   State<UserHomeScreen> createState() => _UserHomeScreenState();
// // }
// //
// // class _UserHomeScreenState extends State<UserHomeScreen> {
// //   late Future<List<Category>> categories;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     categories = fetchCategories();
// //   }
// //
// //   // Fetch data from the API
// //   Future<List<Category>> fetchCategories() async {
// //     final response =
// //     await http.get(Uri.parse('https://192.168.0.109:7127/api/Category'));
// //
// //     if (response.statusCode == 200) {
// //       final List<dynamic> jsonData = json.decode(response.body);
// //       return jsonData.map((item) => Category.fromJson(item)).toList();
// //     } else {
// //       throw Exception('Failed to load categories');
// //     }
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SingleChildScrollView(
// //         child: Padding(
// //           padding: const EdgeInsets.all(8.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               // Top Rated Section
// //               Text(
// //                 "Top Rated", // Replace with localization if needed
// //                 style: const TextStyle(
// //                   fontSize: 28,
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),
// //               const SizedBox(height: 10),
// //               SizedBox(
// //                 height: 180,
// //                 child: ListView.builder(
// //                   scrollDirection: Axis.horizontal,
// //                   itemCount: 5,
// //                   itemBuilder: (context, index) {
// //                     return buildTopRatedCard(
// //                       imagePath: 'images/top_rated_${index + 1}.jpg',
// //                       label: 'Top Rated ${index + 1}', // Replace with localized text if necessary
// //                     );
// //                   },
// //                 ),
// //               ),
// //               const SizedBox(height: 30),
// //
// //               // Category Section
// //               Text(
// //                 "Categories", // Replace with localization if needed
// //                 style: const TextStyle(
// //                   fontSize: 28,
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),
// //               const SizedBox(height: 30),
// //
// //               // Dynamic Categories Section using FutureBuilder
// //               FutureBuilder<List<Category>>(
// //                 future: categories,
// //                 builder: (context, snapshot) {
// //                   if (snapshot.connectionState == ConnectionState.waiting) {
// //                     return const Center(child: CircularProgressIndicator());
// //                   } else if (snapshot.hasError) {
// //                     return Center(child: Text('Error: ${snapshot.error}'));
// //                   } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// //                     return const Center(child: Text('No categories available'));
// //                   } else {
// //                     final categories = snapshot.data!;
// //                     return Column(
// //                       children: [
// //                         for (var category in categories)
// //                           Padding(
// //                             padding: const EdgeInsets.symmetric(vertical: 10.0),
// //                             child: buildStackCategoryCard(
// //                               context: context,
// //                               imagePath: category.image,
// //                               label: category.name,
// //                             ),
// //                           ),
// //                       ],
// //                     );
// //                   }
// //                 },
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// //
// //   // Helper function to build a category card with a Stack
// //   Widget buildStackCategoryCard({
// //     required BuildContext context,
// //     required String imagePath,
// //     required String label,
// //   }) {
// //     return InkWell(
// //       onTap: () {
// //         Navigator.push(
// //           context,
// //           MaterialPageRoute(
// //             builder: (context) => CategoryTemplate(categoryName: label),
// //           ),
// //         );
// //       },
// //       child: Stack(
// //         alignment: Alignment.bottomLeft,
// //         children: [
// //           Container(
// //             height: 200,
// //             width: double.infinity,
// //             decoration: BoxDecoration(
// //               image: DecorationImage(
// //                 image: NetworkImage(imagePath),
// //                 fit: BoxFit.cover,
// //               ),
// //               borderRadius: BorderRadius.circular(20),
// //             ),
// //           ),
// //           Container(
// //             height: 50,
// //             width: double.infinity,
// //             decoration: BoxDecoration(
// //               color: Colors.black.withOpacity(0.5),
// //               borderRadius: const BorderRadius.only(
// //                 bottomLeft: Radius.circular(20),
// //                 bottomRight: Radius.circular(20),
// //               ),
// //             ),
// //             padding: const EdgeInsets.symmetric(horizontal: 15),
// //             alignment: Alignment.centerLeft,
// //             child: Text(
// //               label,
// //               style: const TextStyle(
// //                 color: Colors.white,
// //                 fontSize: 18,
// //                 fontWeight: FontWeight.bold,
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// //
// //   // Helper function to build a Top Rated card
// //   Widget buildTopRatedCard({required String imagePath, required String label}) {
// //     return Container(
// //       width: 150,
// //       margin: const EdgeInsets.only(right: 10),
// //       decoration: BoxDecoration(
// //         image: DecorationImage(
// //           image: AssetImage(imagePath),
// //           fit: BoxFit.cover,
// //         ),
// //         borderRadius: BorderRadius.circular(15),
// //       ),
// //       child: Container(
// //         decoration: BoxDecoration(
// //           color: Colors.black.withOpacity(0.4),
// //           borderRadius: BorderRadius.circular(15),
// //         ),
// //         child: Center(
// //           child: Text(
// //             label,
// //             style: const TextStyle(
// //               color: Colors.white,
// //               fontSize: 16,
// //               fontWeight: FontWeight.bold,
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // // Model class for Category
// // class Category {
// //   final String id;
// //   final String name;
// //   final String image;
// //
// //   Category({required this.id, required this.name, required this.image});
// //
// //   factory Category.fromJson(Map<String, dynamic> json) {
// //     return Category(
// //       id: json['id'] as String,
// //       name: json['name'] as String,
// //       image: json['image'] as String,
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class UserHomeScreen extends StatefulWidget {
//   const UserHomeScreen({super.key});

//   @override
//   State<UserHomeScreen> createState() => _UserHomeScreenState();
// }

// class _UserHomeScreenState extends State<UserHomeScreen> {
//   late Future<List<Category>> categories;

//   @override
//   void initState() {
//     super.initState();
//     categories = fetchCategories();
//   }

//   // Fetch data from the API
//   Future<List<Category>> fetchCategories() async {
//     final response =
//     await http.get(Uri.parse('https://192.168.0.109:7127/api/Category'));

//     if (response.statusCode == 200) {
//       final List<dynamic> jsonData = json.decode(response.body);
//       return jsonData.map((item) => Category.fromJson(item)).toList();
//     } else {
//       throw Exception('Failed to load categories');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Top Rated Section
//               Text(
//                 "Top Rated", // Replace with localization if needed
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
//                       label: 'Top Rated ${index + 1}', // Replace with localized text if necessary
//                     );
//                   },
//                 ),
//               ),
//               const SizedBox(height: 30),

//               // Category Section
//               Text(
//                 "Categories", // Replace with localization if needed
//                 style: const TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 30),

//               // Dynamic Categories Section using FutureBuilder
//               FutureBuilder<List<Category>>(
//                 future: categories,
//                 builder: (context, snapshot) {
//                   if (snapshot.connectionState == ConnectionState.waiting) {
//                     return const Center(child: CircularProgressIndicator());
//                   } else if (snapshot.hasError) {
//                     return Center(child: Text('Error: ${snapshot.error}'));
//                   } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//                     return const Center(child: Text('No categories available'));
//                   } else {
//                     final categories = snapshot.data!;
//                     return Column(
//                       children: [
//                         for (var category in categories)
//                           Padding(
//                             padding: const EdgeInsets.symmetric(vertical: 10.0),
//                             child: buildStackCategoryCard(
//                               imagePath: category.image,
//                               label: category.name,
//                             ),
//                           ),
//                       ],
//                     );
//                   }
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Helper function to build a category card with a Stack
//   Widget buildStackCategoryCard({
//     required String imagePath,
//     required String label,
//   }) {
//     return Stack(
//       alignment: Alignment.bottomLeft,
//       children: [
//         Container(
//           height: 200,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: NetworkImage(imagePath),
//               fit: BoxFit.cover,
//             ),
//             borderRadius: BorderRadius.circular(20),
//           ),
//         ),
//         Container(
//           height: 50,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             color: Colors.black.withOpacity(0.5),
//             borderRadius: const BorderRadius.only(
//               bottomLeft: Radius.circular(20),
//               bottomRight: Radius.circular(20),
//             ),
//           ),
//           padding: const EdgeInsets.symmetric(horizontal: 15),
//           alignment: Alignment.centerLeft,
//           child: Text(
//             label,
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ],
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

// // Model class for Category
// class Category {
//   final String id;
//   final String name;
//   final String image;

//   Category({required this.id, required this.name, required this.image});

//   factory Category.fromJson(Map<String, dynamic> json) {
//     return Category(
//       id: json['id'] as String,
//       name: json['name'] as String,
//       image: json['image'] as String,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Correct localization import
import 'CategoryTemplate .dart';
class UserHomeScreen extends StatelessWidget {
  const UserHomeScreen({super.key});

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
                AppLocalizations.of(context).top_rated,
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
                      label: '${AppLocalizations.of(context).top_rated} ${index + 1}',
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),

              // Category Section
              Text(
                AppLocalizations.of(context).category,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),

              // First Row (2 Images side by side)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  buildCategoryCard(
                    context: context,
                    imagePath: 'images/Teaching.jpg',
                    label: AppLocalizations.of(context).teaching,
                  ),
                  buildCategoryCard(
                    context: context,
                    imagePath: 'images/Cleaning.jpg',
                    label: AppLocalizations.of(context).cleaning,
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Second Row (2 Images side by side)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  buildCategoryCard(
                    context: context,
                    imagePath: 'images/plumper.jpg',
                    label: AppLocalizations.of(context).plumbing,
                  ),
                  buildCategoryCard(
                    context: context,
                    imagePath: 'images/electrion.jpg',
                    label: AppLocalizations.of(context).electrician,
                  ),
                ],
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
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
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

// Placeholder for CategoryTemplateScreen
