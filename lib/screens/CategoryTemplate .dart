// import 'package:flutter/material.dart';
// class CategoryTemplate extends StatelessWidget {
//   final String categoryName;

//   const CategoryTemplate({super.key, required this.categoryName});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(categoryName),
//       ),
//       body: Center(
//         child: Text(
//           'This is the template for $categoryName category',
//           style: const TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class CategoryTemplate extends StatelessWidget {
  final String categoryId;  // Changed parameter name

  const CategoryTemplate({super.key, required this.categoryId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category ID: $categoryId'),  // Display ID in app bar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Category ID: $categoryId',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const CircularProgressIndicator(),  // Placeholder for future loading
          ],
        ),
      ),
    );
  }
}