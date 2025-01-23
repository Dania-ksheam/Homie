 import 'package:flutter/material.dart';
class CategoryTemplate extends StatelessWidget {
  final String categoryName;

  const CategoryTemplate({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: Center(
        child: Text(
          'This is the template for $categoryName category',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
