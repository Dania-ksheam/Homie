// // // import 'package:flutter/material.dart';

// // // class OrdersScreen extends StatelessWidget {
// // //   const OrdersScreen({super.key});

// // //   final List<Map<String, dynamic>> vendors = const [
// // //     {
// // //       "name": "James Stave",
// // //       "category": "Expert Home Plumber",
// // //       "rating": 4.5,
// // //       "totalJobs": 384,
// // //       "rate": "\$10/hr",
// // //       "image": "images/Homie_logo.png"
// // //     },
// // //     {
// // //       "name": "Thomas Robbert",
// // //       "category": "Expert Home Plumber",
// // //       "rating": 4.3,
// // //       "totalJobs": 157,
// // //       "rate": "\$8/hr",
// // //       "image": " images/Homie_logo.png"
// // //     },
// // //     {
// // //       "name": "Parker Oiter",
// // //       "category": "Expert Home Plumber",
// // //       "rating": 4.0,
// // //       "totalJobs": 124,
// // //       "rate": "\$12/hr",
// // //       "image": "images/Homie_logo.png"
// // //     },
// // //     {
// // //       "name": "Beverly Jones",
// // //       "category": "Expert Home Plumber",
// // //       "rating": 4.5,
// // //       "totalJobs": 344,
// // //       "rate": "\$9/hr",
// // //       "image": "images/Homie_logo.png"
// // //     },
// // //   ];

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: const Text(
// // //           'Find Expert Plumber',
// // //           style: TextStyle(color: Colors.black),
// // //         ),
// // //         backgroundColor: Colors.white,
// // //         iconTheme: const IconThemeData(color: Colors.black),
// // //         elevation: 1,
// // //       ),
// // //       body: ListView.builder(
// // //         padding: const EdgeInsets.all(16.0),
// // //         itemCount: vendors.length,
// // //         itemBuilder: (context, index) {
// // //           final vendor = vendors[index];
// // //           return Card(
// // //             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
// // //             margin: const EdgeInsets.symmetric(vertical: 8),
// // //             elevation: 4,
// // //             child: Padding(
// // //               padding: const EdgeInsets.all(12.0),
// // //               child: Row(
// // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // //                 children: [
// // //                   // Image section
// // //                   ClipRRect(
// // //                     borderRadius: BorderRadius.circular(12),
// // //                     child: Image.asset(
// // //                       vendor["image"],
// // //                       width: 80,
// // //                       height: 80,
// // //                       fit: BoxFit.cover,
// // //                     ),
// // //                   ),
// // //                   const SizedBox(width: 16),

// // //                   // Information section
// // //                   Expanded(
// // //                     child: Column(
// // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // //                       children: [
// // //                         Text(
// // //                           vendor["name"],
// // //                           style: const TextStyle(
// // //                             fontSize: 16,
// // //                             fontWeight: FontWeight.bold,
// // //                           ),
// // //                           maxLines: 1,
// // //                           overflow: TextOverflow.ellipsis, // Prevents overflow for long names
// // //                         ),
// // //                         Text(
// // //                           vendor["category"],
// // //                           style: const TextStyle(
// // //                             fontSize: 14,
// // //                             color: Colors.blue,
// // //                           ),
// // //                           maxLines: 1,
// // //                           overflow: TextOverflow.ellipsis, // Prevents overflow for long categories
// // //                         ),
// // //                         const SizedBox(height: 8),
// // //                         Row(
// // //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                           children: [
// // //                             Row(
// // //                               children: [
// // //                                 const Icon(Icons.star, color: Colors.amber, size: 16),
// // //                                 const SizedBox(width: 4),
// // //                                 Text(
// // //                                   vendor["rating"].toString(),
// // //                                   style: const TextStyle(fontSize: 14),
// // //                                 ),
// // //                               ],
// // //                             ),
// // //                             Text(
// // //                               "Total Jobs: ${vendor["totalJobs"]}",
// // //                               style: const TextStyle(fontSize: 12, color: Colors.grey),
// // //                             ),
// // //                             Text(
// // //                               vendor["rate"],
// // //                               style: const TextStyle(
// // //                                 fontSize: 14,
// // //                                 fontWeight: FontWeight.bold,
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ),

// // //                   // Bookmark icon
// // //                   const Icon(Icons.bookmark_border, color: Colors.grey),
// // //                 ],
// // //               ),
// // //             ),
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'dart:convert';
// // import 'package:http/http.dart' as http;

// // class OrdersScreen extends StatefulWidget {
// //   const OrdersScreen({Key? key}) : super(key: key);

// //   @override
// //   State<OrdersScreen> createState() => _OrdersScreenState();
// // }

// // class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin {
// //   late TabController _tabController;
// //   late Future<List<VendorOffer>> offers;
// //   bool isLoading = true; // To show loading state

// //   @override
// //   void initState() {
// //     super.initState();
// //     _tabController = TabController(length: 2, vsync: this);
// //     fetchVendorOffers();
// //   }

// //   Future<List<VendorOffer>> fetchVendorOffers() async {
// //     try {
// //       final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/VendorOffer'));

// //       if (response.statusCode == 200) {
// //         final List<dynamic> data = json.decode(response.body);
// //         return data.map((json) => VendorOffer.fromJson(json)).toList();
// //       } else {
// //         throw Exception('Failed to load offers');
// //       }
// //     } catch (e) {
// //       throw Exception('Error fetching offers: $e');
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text(
// //           'Vendor Offers',
// //           style: TextStyle(color: Colors.black),
// //         ),
// //         backgroundColor: Colors.white,
// //         iconTheme: const IconThemeData(color: Colors.black),
// //         elevation: 1,
// //         bottom: TabBar(
// //           controller: _tabController,
// //           labelColor: Colors.blue,
// //           unselectedLabelColor: Colors.grey,
// //           indicatorColor: Colors.blue,
// //           tabs: const [
// //             Tab(text: 'All Offers'),
// //             Tab(text: 'Accepted Offers'),
// //           ],
// //         ),
// //       ),
// //       body: FutureBuilder<List<VendorOffer>>(
// //         future: fetchVendorOffers(),
// //         builder: (context, snapshot) {
// //           if (snapshot.connectionState == ConnectionState.waiting) {
// //             return const Center(child: CircularProgressIndicator());
// //           } else if (snapshot.hasError) {
// //             return Center(child: Text('Error: ${snapshot.error}'));
// //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// //             return const Center(child: Text('No offers available'));
// //           } else {
// //             final allOffers = snapshot.data!;
// //             final acceptedOffers = allOffers.where((offer) => offer.state == true).toList();

// //             return TabBarView(
// //               controller: _tabController,
// //               children: [
// //                 _buildOfferList(allOffers),
// //                 _buildOfferList(acceptedOffers),
// //               ],
// //             );
// //           }
// //         },
// //       ),
// //     );
// //   }

// //   Widget _buildOfferList(List<VendorOffer> offers) {
// //     return ListView.builder(
// //       itemCount: offers.length,
// //       padding: const EdgeInsets.all(16),
// //       itemBuilder: (context, index) {
// //         final offer = offers[index];
// //         return OfferCard(
// //           vendorName: offer.vendorName,
// //           category: offer.category,
// //           price: offer.price,
// //           onTap: () => _showOfferDetails(offer),
// //         );
// //       },
// //     );
// //   }

// //   void _showOfferDetails(VendorOffer offer) {
// //     showModalBottomSheet(
// //       context: context,
// //       shape: const RoundedRectangleBorder(
// //         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// //       ),
// //       builder: (context) {
// //         return Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Column(
// //             mainAxisSize: MainAxisSize.min,
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Text(
// //                 offer.vendorName,
// //                 style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// //               ),
// //               const SizedBox(height: 8),
// //               Text(offer.category, style: const TextStyle(fontSize: 16, color: Colors.grey)),
// //               const SizedBox(height: 16),
// //               Text('Price: \$${offer.price}', style: const TextStyle(fontSize: 18)),
// //               const SizedBox(height: 16),
// //               Text('Note:', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
// //               Text(offer.note ?? 'No note available.'),
// //               const SizedBox(height: 16),
// //               ElevatedButton(
// //                 onPressed: () {
// //                   _updateOfferState(offer.id, true); // Change state to "Accepted"
// //                   Navigator.pop(context); // Close modal
// //                 },
// //                 child: Text(offer.state ? 'Already Accepted' : 'Accept Offer'),
// //               ),
// //             ],
// //           ),
// //         );
// //       },
// //     );
// //   }

// //   Future<void> _updateOfferState(String offerId, bool newState) async {
// //     try {
// //       final response = await http.put(
// //         Uri.parse('https://your-api-url/api/VendorOffer/$offerId'),
// //         headers: {'Content-Type': 'application/json'},
// //         body: json.encode({'state': newState}),
// //       );

// //       if (response.statusCode == 204) {
// //         setState(() {
// //           offers = fetchVendorOffers(); // Refresh offers after updating
// //         });
// //       } else {
// //         throw Exception('Failed to update offer state');
// //       }
// //     } catch (e) {
// //       // Show error message
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(content: Text('Error updating offer: $e')),
// //       );
// //     }
// //   }
// // }

// // // Widget to display each offer card
// // class OfferCard extends StatelessWidget {
// //   final String vendorName;
// //   final String category;
// //   final double price;
// //   final VoidCallback onTap;

// //   const OfferCard({
// //     required this.vendorName,
// //     required this.category,
// //     required this.price,
// //     required this.onTap,
// //     Key? key,
// //   }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       margin: const EdgeInsets.symmetric(vertical: 8),
// //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// //       elevation: 4,
// //       child: ListTile(
// //         onTap: onTap,
// //         title: Text(vendorName, style: const TextStyle(fontWeight: FontWeight.bold)),
// //         subtitle: Text(category),
// //         trailing: Text('\$$price/hr', style: const TextStyle(fontWeight: FontWeight.bold)),
// //       ),
// //     );
// //   }
// // }

// // // Model class for VendorOffer
// // class VendorOffer {
// //   final String id;
// //   final String vendorName;
// //   final String category;
// //   final double price;
// //   final bool state;
// //   final String? note;

// //   VendorOffer({
// //     required this.id,
// //     required this.vendorName,
// //     required this.category,
// //     required this.price,
// //     required this.state,
// //     this.note,
// //   });

// //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// //     return VendorOffer(
// //       id: json['id'],
// //       vendorName: json['venderProfile']?['name'] ?? 'Unknown',
// //       category: json['venderProfile']?['category'] ?? 'Unknown',
// //       price: json['price'],
// //       state: json['state'],
// //       note: json['note'],
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';

// class OrdersScreen extends StatefulWidget {
//   const OrdersScreen({Key? key}) : super(key: key);

//   @override
//   State<OrdersScreen> createState() => _OrdersScreenState();
// }

// class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin {
//   late TabController _tabController;

//   final List<VendorOffer> allOffers = [
//     VendorOffer(
//       id: '1',
//       vendorName: 'James Stave',
//       category: 'Expert Home Plumber',
//       price: 50.0,
//       state: false,
//       note: 'I can fix the issue within 2 hours.',
//     ),
//     VendorOffer(
//       id: '2',
//       vendorName: 'Thomas Robbert',
//       category: 'Professional Plumber',
//       price: 60.0,
//       state: true,
//       note: 'I have experience in similar problems.',
//     ),
//     VendorOffer(
//       id: '3',
//       vendorName: 'Beverly Jones',
//       category: 'Certified Plumber',
//       price: 55.0,
//       state: false,
//       note: 'Available for work immediately.',
//     ),
//     VendorOffer(
//       id: '4',
//       vendorName: 'Parker Oiter',
//       category: 'Plumber Expert',
//       price: 65.0,
//       state: true,
//       note: 'I specialize in plumbing repairs.',
//     ),
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Vendor Offers',
//           style: TextStyle(color: Colors.black),
//         ),
//         backgroundColor: Colors.white,
//         iconTheme: const IconThemeData(color: Colors.black),
//         elevation: 1,
//         bottom: TabBar(
//           controller: _tabController,
//           labelColor: Colors.blue,
//           unselectedLabelColor: Colors.grey,
//           indicatorColor: Colors.blue,
//           tabs: const [
//             Tab(text: 'All Offers'),
//             Tab(text: 'Accepted Offers'),
//           ],
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabController,
//         children: [
//           _buildOfferList(allOffers), // All offers
//           _buildOfferList(allOffers.where((offer) => offer.state).toList()), // Accepted offers
//         ],
//       ),
//     );
//   }

//   Widget _buildOfferList(List<VendorOffer> offers) {
//     return ListView.builder(
//       itemCount: offers.length,
//       padding: const EdgeInsets.all(16),
//       itemBuilder: (context, index) {
//         final offer = offers[index];
//         return OfferCard(
//           vendorName: offer.vendorName,
//           category: offer.category,
//           price: offer.price,
//           onTap: () => _showOfferDetails(offer),
//         );
//       },
//     );
//   }

//   void _showOfferDetails(VendorOffer offer) {
//     showModalBottomSheet(
//       context: context,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//       ),
//       builder: (context) {
//         return Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 offer.vendorName,
//                 style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 8),
//               Text(offer.category, style: const TextStyle(fontSize: 16, color: Colors.grey)),
//               const SizedBox(height: 16),
//               Text('Price: \$${offer.price}', style: const TextStyle(fontSize: 18)),
//               const SizedBox(height: 16),
//               Text('Note:', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//               Text(offer.note ?? 'No note available.'),
//               const SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     offer.state = true; // Mark as accepted in dummy data
//                   });
//                   Navigator.pop(context); // Close modal
//                 },
//                 child: Text(offer.state ? 'Already Accepted' : 'Accept Offer'),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// // Widget to display each offer card
// class OfferCard extends StatelessWidget {
//   final String vendorName;
//   final String category;
//   final double price;
//   final VoidCallback onTap;

//   const OfferCard({
//     required this.vendorName,
//     required this.category,
//     required this.price,
//     required this.onTap,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       elevation: 4,
//       child: ListTile(
//         onTap: onTap,
//         title: Text(vendorName, style: const TextStyle(fontWeight: FontWeight.bold)),
//         subtitle: Text(category),
//         trailing: Text('\$$price/hr', style: const TextStyle(fontWeight: FontWeight.bold)),
//       ),
//     );
//   }
// }

// // Model class for VendorOffer
// class VendorOffer {
//   final String id;
//   final String vendorName;
//   final String category;
//   final double price;
//   bool state; // Mutable for testing
//   final String? note;

//   VendorOffer({
//     required this.id,
//     required this.vendorName,
//     required this.category,
//     required this.price,
//     required this.state,
//     this.note,
//   });
// }

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late Future<List<VendorOffer>> offers;
  bool isLoading = true; // To show loading state

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    fetchVendorOffers();
  }

  Future<List<VendorOffer>> fetchVendorOffers() async {
    try {
      final response = await http.get(Uri.parse('https://your-api-url/api/VendorOffer'));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((json) => VendorOffer.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load offers');
      }
    } catch (e) {
      throw Exception('Error fetching offers: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Vendor Offers',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 1,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.blue,
          tabs: const [
            Tab(text: 'All Offers'),
            Tab(text: 'Accepted Offers'),
          ],
        ),
      ),
      body: FutureBuilder<List<VendorOffer>>(
        future: fetchVendorOffers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No offers available'));
          } else {
            final allOffers = snapshot.data!;
            final acceptedOffers = allOffers.where((offer) => offer.state == true).toList();

            return TabBarView(
              controller: _tabController,
              children: [
                _buildOfferList(allOffers),
                _buildOfferList(acceptedOffers),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _buildOfferList(List<VendorOffer> offers) {
    return ListView.builder(
      itemCount: offers.length,
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, index) {
        final offer = offers[index];
        return OfferCard(
          vendorName: offer.vendorName,
          category: offer.category,
          price: offer.price,
          onTap: () => _showOfferDetails(offer),
        );
      },
    );
  }

  void _showOfferDetails(VendorOffer offer) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                offer.vendorName,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(offer.category, style: const TextStyle(fontSize: 16, color: Colors.grey)),
              const SizedBox(height: 16),
              Text('Price: \$${offer.price}', style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 16),
              Text('Note:', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Text(offer.note ?? 'No note available.'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  _updateOfferState(offer.id, true); // Change state to "Accepted"
                  Navigator.pop(context); // Close modal
                },
                child: Text(offer.state ? 'Already Accepted' : 'Accept Offer'),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _updateOfferState(String offerId, bool newState) async {
    try {
      final response = await http.put(
        Uri.parse('https://your-api-url/api/VendorOffer/$offerId'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'state': newState}),
      );

      if (response.statusCode == 204) {
        setState(() {
          offers = fetchVendorOffers(); // Refresh offers after updating
        });
      } else {
        throw Exception('Failed to update offer state');
      }
    } catch (e) {
      // Show error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error updating offer: $e')),
      );
    }
  }
}

// Widget to display each offer card
class OfferCard extends StatelessWidget {
  final String vendorName;
  final String category;
  final double price;
  final VoidCallback onTap;

  const OfferCard({
    required this.vendorName,
    required this.category,
    required this.price,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: ListTile(
        onTap: onTap,
        title: Text(vendorName, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(category),
        trailing: Text('\$$price/hr', style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}

// Model class for VendorOffer
class VendorOffer {
  final String id;
  final String vendorName;
  final String category;
  final double price;
  final bool state;
  final String? note;

  VendorOffer({
    required this.id,
    required this.vendorName,
    required this.category,
    required this.price,
    required this.state,
    this.note,
  });

  factory VendorOffer.fromJson(Map<String, dynamic> json) {
    return VendorOffer(
      id: json['id'],
      vendorName: json['venderProfile']?['name'] ?? 'Unknown',
      category: json['venderProfile']?['category'] ?? 'Unknown',
      price: json['price'],
      state: json['state'],
      note: json['note'],
    );
  }
}
