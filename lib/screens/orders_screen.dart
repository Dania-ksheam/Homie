import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  final List<Map<String, dynamic>> vendors = const [
    {
      "name": "James Stave",
      "category": "Expert Home Plumber",
      "rating": 4.5,
      "totalJobs": 384,
      "rate": "\$10/hr",
      "image": "images/Homie_logo.png"
    },
    {
      "name": "Thomas Robbert",
      "category": "Expert Home Plumber",
      "rating": 4.3,
      "totalJobs": 157,
      "rate": "\$8/hr",
      "image": " images/Homie_logo.png"
    },
    {
      "name": "Parker Oiter",
      "category": "Expert Home Plumber",
      "rating": 4.0,
      "totalJobs": 124,
      "rate": "\$12/hr",
      "image": "images/Homie_logo.png"
    },
    {
      "name": "Beverly Jones",
      "category": "Expert Home Plumber",
      "rating": 4.5,
      "totalJobs": 344,
      "rate": "\$9/hr",
      "image": "images/Homie_logo.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Find Expert Plumber',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 1,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: vendors.length,
        itemBuilder: (context, index) {
          final vendor = vendors[index];
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            margin: const EdgeInsets.symmetric(vertical: 8),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image section
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      vendor["image"],
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),

                  // Information section
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          vendor["name"],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis, // Prevents overflow for long names
                        ),
                        Text(
                          vendor["category"],
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.blue,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis, // Prevents overflow for long categories
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.star, color: Colors.amber, size: 16),
                                const SizedBox(width: 4),
                                Text(
                                  vendor["rating"].toString(),
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                            Text(
                              "Total Jobs: ${vendor["totalJobs"]}",
                              style: const TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            Text(
                              vendor["rate"],
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Bookmark icon
                  const Icon(Icons.bookmark_border, color: Colors.grey),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
