
// // // // // // // // // // // // // // // // // // // // // // // // import 'package:flutter/material.dart';

// // // // // // // // // // // // // // // // // // // // // // // // class OrdersScreen extends StatelessWidget {
// // // // // // // // // // // // // // // // // // // // // // // //   const OrdersScreen({super.key});

// // // // // // // // // // // // // // // // // // // // // // // //   final List<Map<String, dynamic>> vendors = const [
// // // // // // // // // // // // // // // // // // // // // // // //     {
// // // // // // // // // // // // // // // // // // // // // // // //       "name": "James Stave",
// // // // // // // // // // // // // // // // // // // // // // // //       "category": "Expert Home Plumber",
// // // // // // // // // // // // // // // // // // // // // // // //       "rating": 4.5,
// // // // // // // // // // // // // // // // // // // // // // // //       "totalJobs": 384,
// // // // // // // // // // // // // // // // // // // // // // // //       "rate": "\$10/hr",
// // // // // // // // // // // // // // // // // // // // // // // //       "image": "images/Homie_logo.png"
// // // // // // // // // // // // // // // // // // // // // // // //     },
// // // // // // // // // // // // // // // // // // // // // // // //     {
// // // // // // // // // // // // // // // // // // // // // // // //       "name": "Thomas Robbert",
// // // // // // // // // // // // // // // // // // // // // // // //       "category": "Expert Home Plumber",
// // // // // // // // // // // // // // // // // // // // // // // //       "rating": 4.3,
// // // // // // // // // // // // // // // // // // // // // // // //       "totalJobs": 157,
// // // // // // // // // // // // // // // // // // // // // // // //       "rate": "\$8/hr",
// // // // // // // // // // // // // // // // // // // // // // // //       "image": " images/Homie_logo.png"
// // // // // // // // // // // // // // // // // // // // // // // //     },
// // // // // // // // // // // // // // // // // // // // // // // //     {
// // // // // // // // // // // // // // // // // // // // // // // //       "name": "Parker Oiter",
// // // // // // // // // // // // // // // // // // // // // // // //       "category": "Expert Home Plumber",
// // // // // // // // // // // // // // // // // // // // // // // //       "rating": 4.0,
// // // // // // // // // // // // // // // // // // // // // // // //       "totalJobs": 124,
// // // // // // // // // // // // // // // // // // // // // // // //       "rate": "\$12/hr",
// // // // // // // // // // // // // // // // // // // // // // // //       "image": "images/Homie_logo.png"
// // // // // // // // // // // // // // // // // // // // // // // //     },
// // // // // // // // // // // // // // // // // // // // // // // //     {
// // // // // // // // // // // // // // // // // // // // // // // //       "name": "Beverly Jones",
// // // // // // // // // // // // // // // // // // // // // // // //       "category": "Expert Home Plumber",
// // // // // // // // // // // // // // // // // // // // // // // //       "rating": 4.5,
// // // // // // // // // // // // // // // // // // // // // // // //       "totalJobs": 344,
// // // // // // // // // // // // // // // // // // // // // // // //       "rate": "\$9/hr",
// // // // // // // // // // // // // // // // // // // // // // // //       "image": "images/Homie_logo.png"
// // // // // // // // // // // // // // // // // // // // // // // //     },
// // // // // // // // // // // // // // // // // // // // // // // //   ];

// // // // // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // // // // // // // // // // //         title: const Text(
// // // // // // // // // // // // // // // // // // // // // // // //           'Find Expert Plumber',
// // // // // // // // // // // // // // // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // // // // // // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // // // // // // // // // // // // // // //         elevation: 1,
// // // // // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // // // // //       body: ListView.builder(
// // // // // // // // // // // // // // // // // // // // // // // //         padding: const EdgeInsets.all(16.0),
// // // // // // // // // // // // // // // // // // // // // // // //         itemCount: vendors.length,
// // // // // // // // // // // // // // // // // // // // // // // //         itemBuilder: (context, index) {
// // // // // // // // // // // // // // // // // // // // // // // //           final vendor = vendors[index];
// // // // // // // // // // // // // // // // // // // // // // // //           return Card(
// // // // // // // // // // // // // // // // // // // // // // // //             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
// // // // // // // // // // // // // // // // // // // // // // // //             margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // // // // // // // // // // // // // // //             elevation: 4,
// // // // // // // // // // // // // // // // // // // // // // // //             child: Padding(
// // // // // // // // // // // // // // // // // // // // // // // //               padding: const EdgeInsets.all(12.0),
// // // // // // // // // // // // // // // // // // // // // // // //               child: Row(
// // // // // // // // // // // // // // // // // // // // // // // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // // // // // // // // // // // // // //                 children: [
// // // // // // // // // // // // // // // // // // // // // // // //                   // Image section
// // // // // // // // // // // // // // // // // // // // // // // //                   ClipRRect(
// // // // // // // // // // // // // // // // // // // // // // // //                     borderRadius: BorderRadius.circular(12),
// // // // // // // // // // // // // // // // // // // // // // // //                     child: Image.asset(
// // // // // // // // // // // // // // // // // // // // // // // //                       vendor["image"],
// // // // // // // // // // // // // // // // // // // // // // // //                       width: 80,
// // // // // // // // // // // // // // // // // // // // // // // //                       height: 80,
// // // // // // // // // // // // // // // // // // // // // // // //                       fit: BoxFit.cover,
// // // // // // // // // // // // // // // // // // // // // // // //                     ),
// // // // // // // // // // // // // // // // // // // // // // // //                   ),
// // // // // // // // // // // // // // // // // // // // // // // //                   const SizedBox(width: 16),

// // // // // // // // // // // // // // // // // // // // // // // //                   // Information section
// // // // // // // // // // // // // // // // // // // // // // // //                   Expanded(
// // // // // // // // // // // // // // // // // // // // // // // //                     child: Column(
// // // // // // // // // // // // // // // // // // // // // // // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // // // // // // // // // // // // // //                       children: [
// // // // // // // // // // // // // // // // // // // // // // // //                         Text(
// // // // // // // // // // // // // // // // // // // // // // // //                           vendor["name"],
// // // // // // // // // // // // // // // // // // // // // // // //                           style: const TextStyle(
// // // // // // // // // // // // // // // // // // // // // // // //                             fontSize: 16,
// // // // // // // // // // // // // // // // // // // // // // // //                             fontWeight: FontWeight.bold,
// // // // // // // // // // // // // // // // // // // // // // // //                           ),
// // // // // // // // // // // // // // // // // // // // // // // //                           maxLines: 1,
// // // // // // // // // // // // // // // // // // // // // // // //                           overflow: TextOverflow.ellipsis, // Prevents overflow for long names
// // // // // // // // // // // // // // // // // // // // // // // //                         ),
// // // // // // // // // // // // // // // // // // // // // // // //                         Text(
// // // // // // // // // // // // // // // // // // // // // // // //                           vendor["category"],
// // // // // // // // // // // // // // // // // // // // // // // //                           style: const TextStyle(
// // // // // // // // // // // // // // // // // // // // // // // //                             fontSize: 14,
// // // // // // // // // // // // // // // // // // // // // // // //                             color: Colors.blue,
// // // // // // // // // // // // // // // // // // // // // // // //                           ),
// // // // // // // // // // // // // // // // // // // // // // // //                           maxLines: 1,
// // // // // // // // // // // // // // // // // // // // // // // //                           overflow: TextOverflow.ellipsis, // Prevents overflow for long categories
// // // // // // // // // // // // // // // // // // // // // // // //                         ),
// // // // // // // // // // // // // // // // // // // // // // // //                         const SizedBox(height: 8),
// // // // // // // // // // // // // // // // // // // // // // // //                         Row(
// // // // // // // // // // // // // // // // // // // // // // // //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // // // // // // // // // // // // // // // // // // // //                           children: [
// // // // // // // // // // // // // // // // // // // // // // // //                             Row(
// // // // // // // // // // // // // // // // // // // // // // // //                               children: [
// // // // // // // // // // // // // // // // // // // // // // // //                                 const Icon(Icons.star, color: Colors.amber, size: 16),
// // // // // // // // // // // // // // // // // // // // // // // //                                 const SizedBox(width: 4),
// // // // // // // // // // // // // // // // // // // // // // // //                                 Text(
// // // // // // // // // // // // // // // // // // // // // // // //                                   vendor["rating"].toString(),
// // // // // // // // // // // // // // // // // // // // // // // //                                   style: const TextStyle(fontSize: 14),
// // // // // // // // // // // // // // // // // // // // // // // //                                 ),
// // // // // // // // // // // // // // // // // // // // // // // //                               ],
// // // // // // // // // // // // // // // // // // // // // // // //                             ),
// // // // // // // // // // // // // // // // // // // // // // // //                             Text(
// // // // // // // // // // // // // // // // // // // // // // // //                               "Total Jobs: ${vendor["totalJobs"]}",
// // // // // // // // // // // // // // // // // // // // // // // //                               style: const TextStyle(fontSize: 12, color: Colors.grey),
// // // // // // // // // // // // // // // // // // // // // // // //                             ),
// // // // // // // // // // // // // // // // // // // // // // // //                             Text(
// // // // // // // // // // // // // // // // // // // // // // // //                               vendor["rate"],
// // // // // // // // // // // // // // // // // // // // // // // //                               style: const TextStyle(
// // // // // // // // // // // // // // // // // // // // // // // //                                 fontSize: 14,
// // // // // // // // // // // // // // // // // // // // // // // //                                 fontWeight: FontWeight.bold,
// // // // // // // // // // // // // // // // // // // // // // // //                               ),
// // // // // // // // // // // // // // // // // // // // // // // //                             ),
// // // // // // // // // // // // // // // // // // // // // // // //                           ],
// // // // // // // // // // // // // // // // // // // // // // // //                         ),
// // // // // // // // // // // // // // // // // // // // // // // //                       ],
// // // // // // // // // // // // // // // // // // // // // // // //                     ),
// // // // // // // // // // // // // // // // // // // // // // // //                   ),

// // // // // // // // // // // // // // // // // // // // // // // //                   // Bookmark icon
// // // // // // // // // // // // // // // // // // // // // // // //                   const Icon(Icons.bookmark_border, color: Colors.grey),
// // // // // // // // // // // // // // // // // // // // // // // //                 ],
// // // // // // // // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // // // // // // // // // // //           );
// // // // // // // // // // // // // // // // // // // // // // // //         },
// // // // // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // // import 'dart:convert';
// // // // // // // // // // // // import 'package:http/http.dart' as http;

// // // // // // // // // // // // class OrdersScreen extends StatefulWidget {
// // // // // // // // // // // //   const OrdersScreen({Key? key}) : super(key: key);

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // // // // // // // // // // }

// // // // // // // // // // // // class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin {
// // // // // // // // // // // //   late TabController _tabController;
// // // // // // // // // // // //   late Future<List<VendorOffer>> offers;
// // // // // // // // // // // //   bool isLoading = true; // To show loading state

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   void initState() {
// // // // // // // // // // // //     super.initState();
// // // // // // // // // // // //     _tabController = TabController(length: 2, vsync: this);
// // // // // // // // // // // //     fetchVendorOffers();
// // // // // // // // // // // //   }

// // // // // // // // // // // //   Future<List<VendorOffer>> fetchVendorOffers() async {
// // // // // // // // // // // //     try {
// // // // // // // // // // // //       final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/VendorOffer'));

// // // // // // // // // // // //       if (response.statusCode == 200) {
// // // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // // //         return data.map((json) => VendorOffer.fromJson(json)).toList();
// // // // // // // // // // // //       } else {
// // // // // // // // // // // //         throw Exception('Failed to load offers');
// // // // // // // // // // // //       }
// // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // //       throw Exception('Error fetching offers: $e');
// // // // // // // // // // // //     }
// // // // // // // // // // // //   }

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // //         title: const Text(
// // // // // // // // // // // //           'Vendor Offers',
// // // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // // //         ),
// // // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // // //         elevation: 1,
// // // // // // // // // // // //         bottom: TabBar(
// // // // // // // // // // // //           controller: _tabController,
// // // // // // // // // // // //           labelColor: Colors.blue,
// // // // // // // // // // // //           unselectedLabelColor: Colors.grey,
// // // // // // // // // // // //           indicatorColor: Colors.blue,
// // // // // // // // // // // //           tabs: const [
// // // // // // // // // // // //             Tab(text: 'All Offers'),
// // // // // // // // // // // //             Tab(text: 'Accepted Offers'),
// // // // // // // // // // // //           ],
// // // // // // // // // // // //         ),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //       body: FutureBuilder<List<VendorOffer>>(
// // // // // // // // // // // //         future: fetchVendorOffers(),
// // // // // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // // // // //             return const Center(child: Text('No offers available'));
// // // // // // // // // // // //           } else {
// // // // // // // // // // // //             final allOffers = snapshot.data!;
// // // // // // // // // // // //             final acceptedOffers = allOffers.where((offer) => offer.state == true).toList();

// // // // // // // // // // // //             return TabBarView(
// // // // // // // // // // // //               controller: _tabController,
// // // // // // // // // // // //               children: [
// // // // // // // // // // // //                 _buildOfferList(allOffers),
// // // // // // // // // // // //                 _buildOfferList(acceptedOffers),
// // // // // // // // // // // //               ],
// // // // // // // // // // // //             );
// // // // // // // // // // // //           }
// // // // // // // // // // // //         },
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }

// // // // // // // // // // // //   Widget _buildOfferList(List<VendorOffer> offers) {
// // // // // // // // // // // //     return ListView.builder(
// // // // // // // // // // // //       itemCount: offers.length,
// // // // // // // // // // // //       padding: const EdgeInsets.all(16),
// // // // // // // // // // // //       itemBuilder: (context, index) {
// // // // // // // // // // // //         final offer = offers[index];
// // // // // // // // // // // //         return OfferCard(
// // // // // // // // // // // //           vendorName: offer.vendorName,
// // // // // // // // // // // //           category: offer.category,
// // // // // // // // // // // //           price: offer.price,
// // // // // // // // // // // //           onTap: () => _showOfferDetails(offer),
// // // // // // // // // // // //         );
// // // // // // // // // // // //       },
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }

// // // // // // // // // // // //   void _showOfferDetails(VendorOffer offer) {
// // // // // // // // // // // //     showModalBottomSheet(
// // // // // // // // // // // //       context: context,
// // // // // // // // // // // //       shape: const RoundedRectangleBorder(
// // // // // // // // // // // //         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //       builder: (context) {
// // // // // // // // // // // //         return Padding(
// // // // // // // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // // // // // // //           child: Column(
// // // // // // // // // // // //             mainAxisSize: MainAxisSize.min,
// // // // // // // // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // //             children: [
// // // // // // // // // // // //               Text(
// // // // // // // // // // // //                 offer.vendorName,
// // // // // // // // // // // //                 style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // // // // // // // // // // //               ),
// // // // // // // // // // // //               const SizedBox(height: 8),
// // // // // // // // // // // //               Text(offer.category, style: const TextStyle(fontSize: 16, color: Colors.grey)),
// // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // //               Text('Price: \$${offer.price}', style: const TextStyle(fontSize: 18)),
// // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // //               Text('Note:', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
// // // // // // // // // // // //               Text(offer.note ?? 'No note available.'),
// // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // //               ElevatedButton(
// // // // // // // // // // // //                 onPressed: () {
// // // // // // // // // // // //                   _updateOfferState(offer.id, true); // Change state to "Accepted"
// // // // // // // // // // // //                   Navigator.pop(context); // Close modal
// // // // // // // // // // // //                 },
// // // // // // // // // // // //                 child: Text(offer.state ? 'Already Accepted' : 'Accept Offer'),
// // // // // // // // // // // //               ),
// // // // // // // // // // // //             ],
// // // // // // // // // // // //           ),
// // // // // // // // // // // //         );
// // // // // // // // // // // //       },
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }

// // // // // // // // // // // //   Future<void> _updateOfferState(String offerId, bool newState) async {
// // // // // // // // // // // //     try {
// // // // // // // // // // // //       final response = await http.put(
// // // // // // // // // // // //         Uri.parse('https://your-api-url/api/VendorOffer/$offerId'),
// // // // // // // // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // // // // // // // //         body: json.encode({'state': newState}),
// // // // // // // // // // // //       );

// // // // // // // // // // // //       if (response.statusCode == 204) {
// // // // // // // // // // // //         setState(() {
// // // // // // // // // // // //           offers = fetchVendorOffers(); // Refresh offers after updating
// // // // // // // // // // // //         });
// // // // // // // // // // // //       } else {
// // // // // // // // // // // //         throw Exception('Failed to update offer state');
// // // // // // // // // // // //       }
// // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // //       // Show error message
// // // // // // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // // // // //         SnackBar(content: Text('Error updating offer: $e')),
// // // // // // // // // // // //       );
// // // // // // // // // // // //     }
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // // Widget to display each offer card
// // // // // // // // // // // // class OfferCard extends StatelessWidget {
// // // // // // // // // // // //   final String vendorName;
// // // // // // // // // // // //   final String category;
// // // // // // // // // // // //   final double price;
// // // // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // // // //   const OfferCard({
// // // // // // // // // // // //     required this.vendorName,
// // // // // // // // // // // //     required this.category,
// // // // // // // // // // // //     required this.price,
// // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // //     Key? key,
// // // // // // // // // // // //   }) : super(key: key);

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Card(
// // // // // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // // // // //       elevation: 4,
// // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // //         title: Text(vendorName, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // //         subtitle: Text(category),
// // // // // // // // // // // //         trailing: Text('\$$price/hr', style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // // Model class for VendorOffer
// // // // // // // // // // // // class VendorOffer {
// // // // // // // // // // // //   final String id;
// // // // // // // // // // // //   final String vendorName;
// // // // // // // // // // // //   final String category;
// // // // // // // // // // // //   final double price;
// // // // // // // // // // // //   final bool state;
// // // // // // // // // // // //   final String? note;

// // // // // // // // // // // //   VendorOffer({
// // // // // // // // // // // //     required this.id,
// // // // // // // // // // // //     required this.vendorName,
// // // // // // // // // // // //     required this.category,
// // // // // // // // // // // //     required this.price,
// // // // // // // // // // // //     required this.state,
// // // // // // // // // // // //     this.note,
// // // // // // // // // // // //   });

// // // // // // // // // // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // //     return VendorOffer(
// // // // // // // // // // // //       id: json['id'],
// // // // // // // // // // // //       vendorName: json['venderProfile']?['name'] ?? 'Unknown',
// // // // // // // // // // // //       category: json['venderProfile']?['category'] ?? 'Unknown',
// // // // // // // // // // // //       price: json['price'],
// // // // // // // // // // // //       state: json['state'],
// // // // // // // // // // // //       note: json['note'],
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // // // // import 'package:flutter/material.dart';

// // // // // // // // // // // // // // // // // // // // // class OrdersScreen extends StatefulWidget {
// // // // // // // // // // // // // // // // // // // // //   const OrdersScreen({Key? key}) : super(key: key);

// // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // // // // // // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // // // // // // // class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin {
// // // // // // // // // // // // // // // // // // // // //   late TabController _tabController;

// // // // // // // // // // // // // // // // // // // // //   final List<VendorOffer> allOffers = [
// // // // // // // // // // // // // // // // // // // // //     VendorOffer(
// // // // // // // // // // // // // // // // // // // // //       id: '1',
// // // // // // // // // // // // // // // // // // // // //       vendorName: 'James Stave',
// // // // // // // // // // // // // // // // // // // // //       category: 'Expert Home Plumber',
// // // // // // // // // // // // // // // // // // // // //       price: 50.0,
// // // // // // // // // // // // // // // // // // // // //       state: false,
// // // // // // // // // // // // // // // // // // // // //       note: 'I can fix the issue within 2 hours.',
// // // // // // // // // // // // // // // // // // // // //     ),
// // // // // // // // // // // // // // // // // // // // //     VendorOffer(
// // // // // // // // // // // // // // // // // // // // //       id: '2',
// // // // // // // // // // // // // // // // // // // // //       vendorName: 'Thomas Robbert',
// // // // // // // // // // // // // // // // // // // // //       category: 'Professional Plumber',
// // // // // // // // // // // // // // // // // // // // //       price: 60.0,
// // // // // // // // // // // // // // // // // // // // //       state: true,
// // // // // // // // // // // // // // // // // // // // //       note: 'I have experience in similar problems.',
// // // // // // // // // // // // // // // // // // // // //     ),
// // // // // // // // // // // // // // // // // // // // //     VendorOffer(
// // // // // // // // // // // // // // // // // // // // //       id: '3',
// // // // // // // // // // // // // // // // // // // // //       vendorName: 'Beverly Jones',
// // // // // // // // // // // // // // // // // // // // //       category: 'Certified Plumber',
// // // // // // // // // // // // // // // // // // // // //       price: 55.0,
// // // // // // // // // // // // // // // // // // // // //       state: false,
// // // // // // // // // // // // // // // // // // // // //       note: 'Available for work immediately.',
// // // // // // // // // // // // // // // // // // // // //     ),
// // // // // // // // // // // // // // // // // // // // //     VendorOffer(
// // // // // // // // // // // // // // // // // // // // //       id: '4',
// // // // // // // // // // // // // // // // // // // // //       vendorName: 'Parker Oiter',
// // // // // // // // // // // // // // // // // // // // //       category: 'Plumber Expert',
// // // // // // // // // // // // // // // // // // // // //       price: 65.0,
// // // // // // // // // // // // // // // // // // // // //       state: true,
// // // // // // // // // // // // // // // // // // // // //       note: 'I specialize in plumbing repairs.',
// // // // // // // // // // // // // // // // // // // // //     ),
// // // // // // // // // // // // // // // // // // // // //   ];

// // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // //   void initState() {
// // // // // // // // // // // // // // // // // // // // //     super.initState();
// // // // // // // // // // // // // // // // // // // // //     _tabController = TabController(length: 2, vsync: this);
// // // // // // // // // // // // // // // // // // // // //   }

// // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // // // // // // // //         title: const Text(
// // // // // // // // // // // // // // // // // // // // //           'Vendor Offers',
// // // // // // // // // // // // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // // // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // // // // // // // // // // // //         elevation: 1,
// // // // // // // // // // // // // // // // // // // // //         bottom: TabBar(
// // // // // // // // // // // // // // // // // // // // //           controller: _tabController,
// // // // // // // // // // // // // // // // // // // // //           labelColor: Colors.blue,
// // // // // // // // // // // // // // // // // // // // //           unselectedLabelColor: Colors.grey,
// // // // // // // // // // // // // // // // // // // // //           indicatorColor: Colors.blue,
// // // // // // // // // // // // // // // // // // // // //           tabs: const [
// // // // // // // // // // // // // // // // // // // // //             Tab(text: 'All Offers'),
// // // // // // // // // // // // // // // // // // // // //             Tab(text: 'Accepted Offers'),
// // // // // // // // // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // //       body: TabBarView(
// // // // // // // // // // // // // // // // // // // // //         controller: _tabController,
// // // // // // // // // // // // // // // // // // // // //         children: [
// // // // // // // // // // // // // // // // // // // // //           _buildOfferList(allOffers), // All offers
// // // // // // // // // // // // // // // // // // // // //           _buildOfferList(allOffers.where((offer) => offer.state).toList()), // Accepted offers
// // // // // // // // // // // // // // // // // // // // //         ],
// // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // // // // // // //   }

// // // // // // // // // // // // // // // // // // // // //   Widget _buildOfferList(List<VendorOffer> offers) {
// // // // // // // // // // // // // // // // // // // // //     return ListView.builder(
// // // // // // // // // // // // // // // // // // // // //       itemCount: offers.length,
// // // // // // // // // // // // // // // // // // // // //       padding: const EdgeInsets.all(16),
// // // // // // // // // // // // // // // // // // // // //       itemBuilder: (context, index) {
// // // // // // // // // // // // // // // // // // // // //         final offer = offers[index];
// // // // // // // // // // // // // // // // // // // // //         return OfferCard(
// // // // // // // // // // // // // // // // // // // // //           vendorName: offer.vendorName,
// // // // // // // // // // // // // // // // // // // // //           category: offer.category,
// // // // // // // // // // // // // // // // // // // // //           price: offer.price,
// // // // // // // // // // // // // // // // // // // // //           onTap: () => _showOfferDetails(offer),
// // // // // // // // // // // // // // // // // // // // //         );
// // // // // // // // // // // // // // // // // // // // //       },
// // // // // // // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // // // // // // //   }

// // // // // // // // // // // // // // // // // // // // //   void _showOfferDetails(VendorOffer offer) {
// // // // // // // // // // // // // // // // // // // // //     showModalBottomSheet(
// // // // // // // // // // // // // // // // // // // // //       context: context,
// // // // // // // // // // // // // // // // // // // // //       shape: const RoundedRectangleBorder(
// // // // // // // // // // // // // // // // // // // // //         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // //       builder: (context) {
// // // // // // // // // // // // // // // // // // // // //         return Padding(
// // // // // // // // // // // // // // // // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // // // // // // // // // // // // // // // //           child: Column(
// // // // // // // // // // // // // // // // // // // // //             mainAxisSize: MainAxisSize.min,
// // // // // // // // // // // // // // // // // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // // // // // // // // // // //             children: [
// // // // // // // // // // // // // // // // // // // // //               Text(
// // // // // // // // // // // // // // // // // // // // //                 offer.vendorName,
// // // // // // // // // // // // // // // // // // // // //                 style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // // // // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // // // // //               const SizedBox(height: 8),
// // // // // // // // // // // // // // // // // // // // //               Text(offer.category, style: const TextStyle(fontSize: 16, color: Colors.grey)),
// // // // // // // // // // // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // // // // // // // // // // //               Text('Price: \$${offer.price}', style: const TextStyle(fontSize: 18)),
// // // // // // // // // // // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // // // // // // // // // // //               Text('Note:', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
// // // // // // // // // // // // // // // // // // // // //               Text(offer.note ?? 'No note available.'),
// // // // // // // // // // // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // // // // // // // // // // //               ElevatedButton(
// // // // // // // // // // // // // // // // // // // // //                 onPressed: () {
// // // // // // // // // // // // // // // // // // // // //                   setState(() {
// // // // // // // // // // // // // // // // // // // // //                     offer.state = true; // Mark as accepted in dummy data
// // // // // // // // // // // // // // // // // // // // //                   });
// // // // // // // // // // // // // // // // // // // // //                   Navigator.pop(context); // Close modal
// // // // // // // // // // // // // // // // // // // // //                 },
// // // // // // // // // // // // // // // // // // // // //                 child: Text(offer.state ? 'Already Accepted' : 'Accept Offer'),
// // // // // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // // // // //             ],
// // // // // // // // // // // // // // // // // // // // //           ),
// // // // // // // // // // // // // // // // // // // // //         );
// // // // // // // // // // // // // // // // // // // // //       },
// // // // // // // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // // // // // // // // Widget to display each offer card
// // // // // // // // // // // // // // // // // // // // // class OfferCard extends StatelessWidget {
// // // // // // // // // // // // // // // // // // // // //   final String vendorName;
// // // // // // // // // // // // // // // // // // // // //   final String category;
// // // // // // // // // // // // // // // // // // // // //   final double price;
// // // // // // // // // // // // // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // // // // // // // // // // // // //   const OfferCard({
// // // // // // // // // // // // // // // // // // // // //     required this.vendorName,
// // // // // // // // // // // // // // // // // // // // //     required this.category,
// // // // // // // // // // // // // // // // // // // // //     required this.price,
// // // // // // // // // // // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // // // // // // // // // // //     Key? key,
// // // // // // // // // // // // // // // // // // // // //   }) : super(key: key);

// // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // // // // // //     return Card(
// // // // // // // // // // // // // // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // // // // // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // // // // // // // // // // // // // //       elevation: 4,
// // // // // // // // // // // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // // // // // // // // // // //         title: Text(vendorName, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // // // // // // // // // // //         subtitle: Text(category),
// // // // // // // // // // // // // // // // // // // // //         trailing: Text('\$$price/hr', style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // // // // // // // // Model class for VendorOffer
// // // // // // // // // // // // // // // // // // // // // class VendorOffer {
// // // // // // // // // // // // // // // // // // // // //   final String id;
// // // // // // // // // // // // // // // // // // // // //   final String vendorName;
// // // // // // // // // // // // // // // // // // // // //   final String category;
// // // // // // // // // // // // // // // // // // // // //   final double price;
// // // // // // // // // // // // // // // // // // // // //   bool state; // Mutable for testing
// // // // // // // // // // // // // // // // // // // // //   final String? note;

// // // // // // // // // // // // // // // // // // // // //   VendorOffer({
// // // // // // // // // // // // // // // // // // // // //     required this.id,
// // // // // // // // // // // // // // // // // // // // //     required this.vendorName,
// // // // // // // // // // // // // // // // // // // // //     required this.category,
// // // // // // // // // // // // // // // // // // // // //     required this.price,
// // // // // // // // // // // // // // // // // // // // //     required this.state,
// // // // // // // // // // // // // // // // // // // // //     this.note,
// // // // // // // // // // // // // // // // // // // // //   });
// // // // // // // // // // // // // // // // // // // // // }

// // // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // // import 'dart:convert';
// // // // // // // // // // // // import 'package:http/http.dart' as http;

// // // // // // // // // // // // class OrdersScreen extends StatefulWidget {
// // // // // // // // // // // //   final String userId;

// // // // // // // // // // // //   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // // // // // // // // // // }

// // // // // // // // // // // // class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin {
// // // // // // // // // // // //   late TabController _tabController;
// // // // // // // // // // // //   late Future<List<Mission>> missions;

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   void initState() {
// // // // // // // // // // // //     super.initState();
// // // // // // // // // // // //     _tabController = TabController(length: 2, vsync: this);
// // // // // // // // // // // //     missions = fetchMissions();
// // // // // // // // // // // //   }

// // // // // // // // // // // //   Future<List<Mission>> fetchMissions() async {
// // // // // // // // // // // //     try {
// // // // // // // // // // // //       final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));

// // // // // // // // // // // //       if (response.statusCode == 200) {
// // // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // // //         return data.map((json) => Mission.fromJson(json)).toList();
// // // // // // // // // // // //       } else {
// // // // // // // // // // // //         throw Exception('Failed to load missions');
// // // // // // // // // // // //       }
// // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // //       throw Exception('Error fetching missions: $e');
// // // // // // // // // // // //     }
// // // // // // // // // // // //   }

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // //         title: const Text(
// // // // // // // // // // // //           'User Missions',
// // // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // // //         ),
// // // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // // //         elevation: 1,
// // // // // // // // // // // //         bottom: TabBar(
// // // // // // // // // // // //           controller: _tabController,
// // // // // // // // // // // //           labelColor: Colors.blue,
// // // // // // // // // // // //           unselectedLabelColor: Colors.grey,
// // // // // // // // // // // //           indicatorColor: Colors.blue,
// // // // // // // // // // // //           tabs: const [
// // // // // // // // // // // //             Tab(text: 'All Missions'),
// // // // // // // // // // // //             Tab(text: 'Scheduled Missions'),
// // // // // // // // // // // //           ],
// // // // // // // // // // // //         ),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //       body: FutureBuilder<List<Mission>>(
// // // // // // // // // // // //         future: missions,
// // // // // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // // // // //             return const Center(child: Text('No missions available'));
// // // // // // // // // // // //           } else {
// // // // // // // // // // // //             final allMissions = snapshot.data!;
// // // // // // // // // // // //             final scheduledMissions = allMissions.where((mission) => mission.state == MissionState.Scheduled).toList();

// // // // // // // // // // // //             return TabBarView(
// // // // // // // // // // // //               controller: _tabController,
// // // // // // // // // // // //               children: [
// // // // // // // // // // // //                 _buildMissionList(allMissions),
// // // // // // // // // // // //                 _buildMissionList(scheduledMissions),
// // // // // // // // // // // //               ],
// // // // // // // // // // // //             );
// // // // // // // // // // // //           }
// // // // // // // // // // // //         },
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }

// // // // // // // // // // // //   Widget _buildMissionList(List<Mission> missions) {
// // // // // // // // // // // //     return ListView.builder(
// // // // // // // // // // // //       itemCount: missions.length,
// // // // // // // // // // // //       padding: const EdgeInsets.all(16),
// // // // // // // // // // // //       itemBuilder: (context, index) {
// // // // // // // // // // // //         final mission = missions[index];
// // // // // // // // // // // //         return MissionCard(
// // // // // // // // // // // //           mission: mission,
// // // // // // // // // // // //           onTap: () => _showVendorOffers(mission),
// // // // // // // // // // // //         );
// // // // // // // // // // // //       },
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }

// // // // // // // // // // // //   void _showVendorOffers(Mission mission) {
// // // // // // // // // // // //     Navigator.push(
// // // // // // // // // // // //       context,
// // // // // // // // // // // //       MaterialPageRoute(
// // // // // // // // // // // //         builder: (context) => VendorOffersScreen(missionId: mission.id),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // // Widget to display each mission card
// // // // // // // // // // // // class MissionCard extends StatelessWidget {
// // // // // // // // // // // //   final Mission mission;
// // // // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // // // //   const MissionCard({
// // // // // // // // // // // //     required this.mission,
// // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // //     Key? key,
// // // // // // // // // // // //   }) : super(key: key);

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Card(
// // // // // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // // // // //       elevation: 4,
// // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // //         title: Text(mission.name, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // //         subtitle: Column(
// // // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // //           children: [
// // // // // // // // // // // //             Text('State: ${mission.state}'),
// // // // // // // // // // // //             Text('Day: ${mission.day}'),
// // // // // // // // // // // //           ],
// // // // // // // // // // // //         ),
// // // // // // // // // // // //         trailing: mission.image != null
// // // // // // // // // // // //             ? Image.network(mission.image!, width: 50, height: 50, fit: BoxFit.cover)
// // // // // // // // // // // //             : const SizedBox.shrink(),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // // Model class for Mission
// // // // // // // // // // // // class Mission {
// // // // // // // // // // // //   final String id;
// // // // // // // // // // // //   final String name;
// // // // // // // // // // // //   final MissionState state;
// // // // // // // // // // // //   final String categoryId;
// // // // // // // // // // // //   final String userId;
// // // // // // // // // // // //   final DateTime day;
// // // // // // // // // // // //   final String location;
// // // // // // // // // // // //   final String note;
// // // // // // // // // // // //   final String? image;
// // // // // // // // // // // //   final String? details;
// // // // // // // // // // // //   final int? room;
// // // // // // // // // // // //   final String? grade;
// // // // // // // // // // // //   final String? hours;

// // // // // // // // // // // //   Mission({
// // // // // // // // // // // //     required this.id,
// // // // // // // // // // // //     required this.name,
// // // // // // // // // // // //     required this.state,
// // // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // // //     required this.userId,
// // // // // // // // // // // //     required this.day,
// // // // // // // // // // // //     required this.location,
// // // // // // // // // // // //     required this.note,
// // // // // // // // // // // //     this.image,
// // // // // // // // // // // //     this.details,
// // // // // // // // // // // //     this.room,
// // // // // // // // // // // //     this.grade,
// // // // // // // // // // // //     this.hours,
// // // // // // // // // // // //   });

// // // // // // // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // //     return Mission(
// // // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // // //       name: json['name'] ?? '',
// // // // // // // // // // // //       state: MissionState.values[json['state'] ?? 0],
// // // // // // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // // // // // //       userId: json['userId'] ?? '',
// // // // // // // // // // // //       day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
// // // // // // // // // // // //       location: json['location'] ?? '',
// // // // // // // // // // // //       note: json['note'] ?? '',
// // // // // // // // // // // //       image: json['image'],
// // // // // // // // // // // //       details: json['details'],
// // // // // // // // // // // //       room: json['room'],
// // // // // // // // // // // //       grade: json['grade'],
// // // // // // // // // // // //       hours: json['hours'],
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // enum MissionState {
// // // // // // // // // // // //   Pending,
// // // // // // // // // // // //   Scheduled,
// // // // // // // // // // // //   Completed,
// // // // // // // // // // // //   Cancelled,
// // // // // // // // // // // // }

// // // // // // // // // // // // // Screen to display vendor offers for a specific mission
// // // // // // // // // // // // class VendorOffersScreen extends StatefulWidget {
// // // // // // // // // // // //   final String missionId;

// // // // // // // // // // // //   const VendorOffersScreen({required this.missionId, Key? key}) : super(key: key);

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // // // // // // // // // // // }

// // // // // // // // // // // // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// // // // // // // // // // // //   late Future<List<VendorOffer>> offers;

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   void initState() {
// // // // // // // // // // // //     super.initState();
// // // // // // // // // // // //     offers = fetchVendorOffers();
// // // // // // // // // // // //   }

// // // // // // // // // // // //   Future<List<VendorOffer>> fetchVendorOffers() async {
// // // // // // // // // // // //     try {
// // // // // // // // // // // //       final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));

// // // // // // // // // // // //       if (response.statusCode == 200) {
// // // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // // //         return data.map((json) => VendorOffer.fromJson(json)).toList();
// // // // // // // // // // // //       } else {
// // // // // // // // // // // //         throw Exception('Failed to load offers');
// // // // // // // // // // // //       }
// // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // //       throw Exception('Error fetching offers: $e');
// // // // // // // // // // // //     }
// // // // // // // // // // // //   }

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // //         title: const Text(
// // // // // // // // // // // //           'Vendor Offers',
// // // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // // //         ),
// // // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // // //         elevation: 1,
// // // // // // // // // // // //       ),
// // // // // // // // // // // //       body: FutureBuilder<List<VendorOffer>>(
// // // // // // // // // // // //         future: offers,
// // // // // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // // // // //             return const Center(child: Text('No offers available'));
// // // // // // // // // // // //           } else {
// // // // // // // // // // // //             final allOffers = snapshot.data!;
// // // // // // // // // // // //             return ListView.builder(
// // // // // // // // // // // //               itemCount: allOffers.length,
// // // // // // // // // // // //               padding: const EdgeInsets.all(16),
// // // // // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // // // // //                 final offer = allOffers[index];
// // // // // // // // // // // //                 return OfferCard(
// // // // // // // // // // // //                   vendorName: offer.vendorName,
// // // // // // // // // // // //                   category: offer.category,
// // // // // // // // // // // //                   price: offer.price,
// // // // // // // // // // // //                   onTap: () => _showOfferDetails(offer),
// // // // // // // // // // // //                 );
// // // // // // // // // // // //               },
// // // // // // // // // // // //             );
// // // // // // // // // // // //           }
// // // // // // // // // // // //         },
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }

// // // // // // // // // // // //   void _showOfferDetails(VendorOffer offer) {
// // // // // // // // // // // //     showModalBottomSheet(
// // // // // // // // // // // //       context: context,
// // // // // // // // // // // //       shape: const RoundedRectangleBorder(
// // // // // // // // // // // //         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //       builder: (context) {
// // // // // // // // // // // //         return Padding(
// // // // // // // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // // // // // // //           child: Column(
// // // // // // // // // // // //             mainAxisSize: MainAxisSize.min,
// // // // // // // // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // //             children: [
// // // // // // // // // // // //               Text(
// // // // // // // // // // // //                 offer.vendorName,
// // // // // // // // // // // //                 style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // // // // // // // // // // //               ),
// // // // // // // // // // // //               const SizedBox(height: 8),
// // // // // // // // // // // //               Text(offer.category, style: const TextStyle(fontSize: 16, color: Colors.grey)),
// // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // //               Text('Price: \$${offer.price}', style: const TextStyle(fontSize: 18)),
// // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // //               Text('Note:', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
// // // // // // // // // // // //               Text(offer.note ?? 'No note available.'),
// // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // //               ElevatedButton(
// // // // // // // // // // // //                 onPressed: offer.state ? null : () {
// // // // // // // // // // // //                   _updateOfferState(offer.id, true); // Change state to "Accepted"
// // // // // // // // // // // //                   Navigator.pop(context); // Close modal
// // // // // // // // // // // //                 },
// // // // // // // // // // // //                 child: Text(offer.state ? 'Already Accepted' : 'Accept Offer'),
// // // // // // // // // // // //               ),
// // // // // // // // // // // //             ],
// // // // // // // // // // // //           ),
// // // // // // // // // // // //         );
// // // // // // // // // // // //       },
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }

// // // // // // // // // // // //   Future<void> _updateOfferState(String offerId, bool newState) async {
// // // // // // // // // // // //     try {
// // // // // // // // // // // //       final response = await http.put(
// // // // // // // // // // // //         Uri.parse('https://your-api-url/api/VendorOffer/$offerId'),
// // // // // // // // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // // // // // // // //         body: json.encode({'state': newState}),
// // // // // // // // // // // //       );

// // // // // // // // // // // //       if (response.statusCode == 204) {
// // // // // // // // // // // //         setState(() {
// // // // // // // // // // // //           offers = fetchVendorOffers(); // Refresh offers after updating
// // // // // // // // // // // //         });
// // // // // // // // // // // //       } else {
// // // // // // // // // // // //         throw Exception('Failed to update offer state');
// // // // // // // // // // // //       }
// // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // //       // Show error message
// // // // // // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // // // // //         SnackBar(content: Text('Error updating offer: $e')),
// // // // // // // // // // // //       );
// // // // // // // // // // // //     }
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // // Widget to display each offer card
// // // // // // // // // // // // class OfferCard extends StatelessWidget {
// // // // // // // // // // // //   final String vendorName;
// // // // // // // // // // // //   final String category;
// // // // // // // // // // // //   final double price;
// // // // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // // // //   const OfferCard({
// // // // // // // // // // // //     required this.vendorName,
// // // // // // // // // // // //     required this.category,
// // // // // // // // // // // //     required this.price,
// // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // //     Key? key,
// // // // // // // // // // // //   }) : super(key: key);

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Card(
// // // // // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // // // // //       elevation: 4,
// // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // //         title: Text(vendorName, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // //         subtitle: Text(category),
// // // // // // // // // // // //         trailing: Text('\$$price', style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // // Model class for VendorOffer
// // // // // // // // // // // // class VendorOffer {
// // // // // // // // // // // //   final String id;
// // // // // // // // // // // //   final String vendorName;
// // // // // // // // // // // //   final String category;
// // // // // // // // // // // //   final double price;
// // // // // // // // // // // //   final bool state;
// // // // // // // // // // // //   final String? note;

// // // // // // // // // // // //   VendorOffer({
// // // // // // // // // // // //     required this.id,
// // // // // // // // // // // //     required this.vendorName,
// // // // // // // // // // // //     required this.category,
// // // // // // // // // // // //     required this.price,
// // // // // // // // // // // //     required this.state,
// // // // // // // // // // // //     this.note,
// // // // // // // // // // // //   });

// // // // // // // // // // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // //     return VendorOffer(
// // // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // // //       vendorName: json['venderProfile']?['name'] ?? 'Unknown',
// // // // // // // // // // // //       category: json['venderProfile']?['category'] ?? 'Unknown',
// // // // // // // // // // // //       price: json['price']?.toDouble() ?? 0.0,
// // // // // // // // // // // //       state: json['state'] ?? false,
// // // // // // // // // // // //       note: json['note'],
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }
// // // // // // // // // // //////thissssssssssssssssssssssssssssssssssssssssssssssssssssssssss

// // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // import 'dart:convert';
// // // // // // // // // // // import 'package:http/http.dart' as http;

// // // // // // // // // // // class OrdersScreen extends StatefulWidget {
// // // // // // // // // // //   final String userId;

// // // // // // // // // // //   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

// // // // // // // // // // //   @override
// // // // // // // // // // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // // // // // // // // // }

// // // // // // // // // // // class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin {
// // // // // // // // // // //   late TabController _tabController;
// // // // // // // // // // //   late Future<List<Mission>> missions;

// // // // // // // // // // //   @override
// // // // // // // // // // //   void initState() {
// // // // // // // // // // //     super.initState();
// // // // // // // // // // //     _tabController = TabController(length: 2, vsync: this);
// // // // // // // // // // //     missions = fetchMissions();
// // // // // // // // // // //   }

// // // // // // // // // // //   Future<List<Mission>> fetchMissions() async {
// // // // // // // // // // //     try {
// // // // // // // // // // //       final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));

// // // // // // // // // // //       if (response.statusCode == 200) {
// // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // //         return data.map((json) => Mission.fromJson(json)).toList();
// // // // // // // // // // //       } else {
// // // // // // // // // // //         throw Exception('Failed to load missions');
// // // // // // // // // // //       }
// // // // // // // // // // //     } catch (e) {
// // // // // // // // // // //       throw Exception('Error fetching missions: $e');
// // // // // // // // // // //     }
// // // // // // // // // // //   }

// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return Scaffold(
// // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // //         title: const Text(
// // // // // // // // // // //           'User Missions',
// // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // //         ),
// // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // //         elevation: 1,
// // // // // // // // // // //         bottom: TabBar(
// // // // // // // // // // //           controller: _tabController,
// // // // // // // // // // //           labelColor: Colors.blue,
// // // // // // // // // // //           unselectedLabelColor: Colors.grey,
// // // // // // // // // // //           indicatorColor: Colors.blue,
// // // // // // // // // // //           tabs: const [
// // // // // // // // // // //             Tab(text: 'All Missions'),
// // // // // // // // // // //             Tab(text: 'Scheduled Missions'),
// // // // // // // // // // //           ],
// // // // // // // // // // //         ),
// // // // // // // // // // //       ),
// // // // // // // // // // //       body: FutureBuilder<List<Mission>>(
// // // // // // // // // // //         future: missions,
// // // // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // // // //             return const Center(child: Text('No missions available'));
// // // // // // // // // // //           } else {
// // // // // // // // // // //             final allMissions = snapshot.data!;
// // // // // // // // // // //             final scheduledMissions = allMissions.where((mission) => mission.state == MissionState.Scheduled).toList();

// // // // // // // // // // //             return TabBarView(
// // // // // // // // // // //               controller: _tabController,
// // // // // // // // // // //               children: [
// // // // // // // // // // //                 _buildMissionList(allMissions),
// // // // // // // // // // //                 _buildMissionList(scheduledMissions),
// // // // // // // // // // //               ],
// // // // // // // // // // //             );
// // // // // // // // // // //           }
// // // // // // // // // // //         },
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }

// // // // // // // // // // //   Widget _buildMissionList(List<Mission> missions) {
// // // // // // // // // // //     return ListView.builder(
// // // // // // // // // // //       itemCount: missions.length,
// // // // // // // // // // //       padding: const EdgeInsets.all(16),
// // // // // // // // // // //       itemBuilder: (context, index) {
// // // // // // // // // // //         final mission = missions[index];
// // // // // // // // // // //         return MissionCard(
// // // // // // // // // // //           mission: mission,
// // // // // // // // // // //           onTap: () => _showVendorOffers(mission),
// // // // // // // // // // //         );
// // // // // // // // // // //       },
// // // // // // // // // // //     );
// // // // // // // // // // //   }

// // // // // // // // // // //   void _showVendorOffers(Mission mission) {
// // // // // // // // // // //     Navigator.push(
// // // // // // // // // // //       context,
// // // // // // // // // // //       MaterialPageRoute(
// // // // // // // // // // //         builder: (context) => VendorOffersScreen(missionId: mission.id),
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // // Widget to display each mission card
// // // // // // // // // // // class MissionCard extends StatelessWidget {
// // // // // // // // // // //   final Mission mission;
// // // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // // //   const MissionCard({
// // // // // // // // // // //     required this.mission,
// // // // // // // // // // //     required this.onTap,
// // // // // // // // // // //     Key? key,
// // // // // // // // // // //   }) : super(key: key);

// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return Card(
// // // // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // // // //       elevation: 4,
// // // // // // // // // // //       child: ListTile(
// // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // //         title: Text(mission.name, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // //         subtitle: Column(
// // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // //           children: [
// // // // // // // // // // //             Text('State: ${mission.state}'),
// // // // // // // // // // //             Text('Day: ${mission.day}'),
// // // // // // // // // // //           ],
// // // // // // // // // // //         ),
// // // // // // // // // // //         trailing: mission.image != null
// // // // // // // // // // //             ? Image.network(mission.image!, width: 50, height: 50, fit: BoxFit.cover)
// // // // // // // // // // //             : const SizedBox.shrink(),
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // // Model class for Mission
// // // // // // // // // // // class Mission {
// // // // // // // // // // //   final String id;
// // // // // // // // // // //   final String name;
// // // // // // // // // // //   final MissionState state;
// // // // // // // // // // //   final String categoryId;
// // // // // // // // // // //   final String userId;
// // // // // // // // // // //   final DateTime day;
// // // // // // // // // // //   final String location;
// // // // // // // // // // //   final String note;
// // // // // // // // // // //   final String? image;
// // // // // // // // // // //   final String? details;
// // // // // // // // // // //   final int? room;
// // // // // // // // // // //   final String? grade;
// // // // // // // // // // //   final String? hours;

// // // // // // // // // // //   Mission({
// // // // // // // // // // //     required this.id,
// // // // // // // // // // //     required this.name,
// // // // // // // // // // //     required this.state,
// // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // //     required this.userId,
// // // // // // // // // // //     required this.day,
// // // // // // // // // // //     required this.location,
// // // // // // // // // // //     required this.note,
// // // // // // // // // // //     this.image,
// // // // // // // // // // //     this.details,
// // // // // // // // // // //     this.room,
// // // // // // // // // // //     this.grade,
// // // // // // // // // // //     this.hours,
// // // // // // // // // // //   });

// // // // // // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // //     return Mission(
// // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // //       name: json['name'] ?? '',
// // // // // // // // // // //       state: MissionState.values[json['state'] ?? 0],
// // // // // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // // // // //       userId: json['userId'] ?? '',
// // // // // // // // // // //       day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
// // // // // // // // // // //       location: json['location'] ?? '',
// // // // // // // // // // //       note: json['note'] ?? '',
// // // // // // // // // // //       image: json['image'],
// // // // // // // // // // //       details: json['details'],
// // // // // // // // // // //       room: json['room'],
// // // // // // // // // // //       grade: json['grade'],
// // // // // // // // // // //       hours: json['hours'],
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // enum MissionState {
// // // // // // // // // // //   Pending,
// // // // // // // // // // //   Scheduled,
// // // // // // // // // // //   Completed,
// // // // // // // // // // //   Cancelled,
// // // // // // // // // // // }

// // // // // // // // // // // // Screen to display vendor offers for a specific mission
// // // // // // // // // // // class VendorOffersScreen extends StatefulWidget {
// // // // // // // // // // //   final String missionId;

// // // // // // // // // // //   const VendorOffersScreen({required this.missionId, Key? key}) : super(key: key);

// // // // // // // // // // //   @override
// // // // // // // // // // //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // // // // // // // // // // }

// // // // // // // // // // // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// // // // // // // // // // //   late Future<List<VendorOffer>> offers;

// // // // // // // // // // //   @override
// // // // // // // // // // //   void initState() {
// // // // // // // // // // //     super.initState();
// // // // // // // // // // //     offers = fetchVendorOffers();
// // // // // // // // // // //   }

// // // // // // // // // // //   Future<List<VendorOffer>> fetchVendorOffers() async {
// // // // // // // // // // //     try {
// // // // // // // // // // //       final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));

// // // // // // // // // // //       if (response.statusCode == 200) {
// // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // //         return data.map((json) => VendorOffer.fromJson(json)).toList();
// // // // // // // // // // //       } else {
// // // // // // // // // // //         throw Exception('Failed to load offers');
// // // // // // // // // // //       }
// // // // // // // // // // //     } catch (e) {
// // // // // // // // // // //       throw Exception('Error fetching offers: $e');
// // // // // // // // // // //     }
// // // // // // // // // // //   }

// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return Scaffold(
// // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // //         title: const Text(
// // // // // // // // // // //           'Vendor Offers',
// // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // //         ),
// // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // //         elevation: 1,
// // // // // // // // // // //       ),
// // // // // // // // // // //       body: FutureBuilder<List<VendorOffer>>(
// // // // // // // // // // //         future: offers,
// // // // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // // // //             return const Center(child: Text('No offers available'));
// // // // // // // // // // //           } else {
// // // // // // // // // // //             final allOffers = snapshot.data!;
// // // // // // // // // // //             return ListView.builder(
// // // // // // // // // // //               itemCount: allOffers.length,
// // // // // // // // // // //               padding: const EdgeInsets.all(16),
// // // // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // // // //                 final offer = allOffers[index];
// // // // // // // // // // //                 return FutureBuilder<VenderProfileDto>(
// // // // // // // // // // //                   future: fetchVenderProfile(offer.vendorProfileId),
// // // // // // // // // // //                   builder: (context, profileSnapshot) {
// // // // // // // // // // //                     if (profileSnapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // //                       return const CircularProgressIndicator();
// // // // // // // // // // //                     } else if (profileSnapshot.hasError) {
// // // // // // // // // // //                       return ListTile(
// // // // // // // // // // //                         title: Text('Error loading profile data'),
// // // // // // // // // // //                         subtitle: Text(offer.category),
// // // // // // // // // // //                         trailing: Text('\$${offer.price}'),
// // // // // // // // // // //                       );
// // // // // // // // // // //                     } else if (!profileSnapshot.hasData) {
// // // // // // // // // // //                       return ListTile(
// // // // // // // // // // //                         title: Text('Profile data not available'),
// // // // // // // // // // //                         subtitle: Text(offer.category),
// // // // // // // // // // //                         trailing: Text('\$${offer.price}'),
// // // // // // // // // // //                       );
// // // // // // // // // // //                     } else {
// // // // // // // // // // //                       final profile = profileSnapshot.data!;
// // // // // // // // // // //                       return FutureBuilder<User>(
// // // // // // // // // // //                         future: fetchUserDetails(profile.userId),
// // // // // // // // // // //                         builder: (context, userSnapshot) {
// // // // // // // // // // //                           if (userSnapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // //                             return const CircularProgressIndicator();
// // // // // // // // // // //                           } else if (userSnapshot.hasError) {
// // // // // // // // // // //                             return ListTile(
// // // // // // // // // // //                               title: Text('Error loading user data'),
// // // // // // // // // // //                               subtitle: Text(offer.category),
// // // // // // // // // // //                               trailing: Text('\$${offer.price}'),
// // // // // // // // // // //                             );
// // // // // // // // // // //                           } else if (!userSnapshot.hasData) {
// // // // // // // // // // //                             return ListTile(
// // // // // // // // // // //                               title: Text('User data not available'),
// // // // // // // // // // //                               subtitle: Text(offer.category),
// // // // // // // // // // //                               trailing: Text('\$${offer.price}'),
// // // // // // // // // // //                             );
// // // // // // // // // // //                           } else {
// // // // // // // // // // //                             final user = userSnapshot.data!;
// // // // // // // // // // //                             return OfferCard(
// // // // // // // // // // //                               vendorName: user.name,
// // // // // // // // // // //                               category: offer.category,
// // // // // // // // // // //                               price: offer.price,
// // // // // // // // // // //                               imageUrl: user.imageUrl,
// // // // // // // // // // //                               email: user.email,
// // // // // // // // // // //                               onTap: () => _showOfferDetails(offer),
// // // // // // // // // // //                               onAccept: () => _acceptOffer(offer.id),
// // // // // // // // // // //                             );
// // // // // // // // // // //                           }
// // // // // // // // // // //                         },
// // // // // // // // // // //                       );
// // // // // // // // // // //                     }
// // // // // // // // // // //                   },
// // // // // // // // // // //                 );
// // // // // // // // // // //               },
// // // // // // // // // // //             );
// // // // // // // // // // //           }
// // // // // // // // // // //         },
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }

// // // // // // // // // // //   void _showOfferDetails(VendorOffer offer) {
// // // // // // // // // // //     showModalBottomSheet(
// // // // // // // // // // //       context: context,
// // // // // // // // // // //       shape: const RoundedRectangleBorder(
// // // // // // // // // // //         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// // // // // // // // // // //       ),
// // // // // // // // // // //       builder: (context) {
// // // // // // // // // // //         return Padding(
// // // // // // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // // // // // //           child: Column(
// // // // // // // // // // //             mainAxisSize: MainAxisSize.min,
// // // // // // // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // //             children: [
// // // // // // // // // // //               Text(
// // // // // // // // // // //                 offer.vendorName,
// // // // // // // // // // //                 style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // // // // // // // // // //               ),
// // // // // // // // // // //               const SizedBox(height: 8),
// // // // // // // // // // //               Text(offer.category, style: const TextStyle(fontSize: 16, color: Colors.grey)),
// // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // //               Text('Price: \$${offer.price}', style: const TextStyle(fontSize: 18)),
// // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // //               Text('Note:', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
// // // // // // // // // // //               Text(offer.note ?? 'No note available.'),
// // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // //               ElevatedButton(
// // // // // // // // // // //                 onPressed: offer.state ? null : () {
// // // // // // // // // // //                   _acceptOffer(offer.id); // Change state to "Accepted"
// // // // // // // // // // //                   Navigator.pop(context); // Close modal
// // // // // // // // // // //                 },
// // // // // // // // // // //                 child: Text(offer.state ? 'Already Accepted' : 'Accept Offer'),
// // // // // // // // // // //               ),
// // // // // // // // // // //             ],
// // // // // // // // // // //           ),
// // // // // // // // // // //         );
// // // // // // // // // // //       },
// // // // // // // // // // //     );
// // // // // // // // // // //   }

// // // // // // // // // // //   Future<void> _acceptOffer(String offerId) async {
// // // // // // // // // // //     try {
// // // // // // // // // // //       final response = await http.put(
// // // // // // // // // // //         Uri.parse('https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted/$offerId'),
// // // // // // // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // // // // // // //       );

// // // // // // // // // // //       if (response.statusCode == 204) {
// // // // // // // // // // //         setState(() {
// // // // // // // // // // //           offers = fetchVendorOffers(); // Refresh offers after updating
// // // // // // // // // // //         });
// // // // // // // // // // //       } else {
// // // // // // // // // // //         throw Exception('Failed to update offer state');
// // // // // // // // // // //       }
// // // // // // // // // // //     } catch (e) {
// // // // // // // // // // //       // Show error message
// // // // // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // // // //         SnackBar(content: Text('Error updating offer: $e')),
// // // // // // // // // // //       );
// // // // // // // // // // //     }
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // // Widget to display each offer card
// // // // // // // // // // // class OfferCard extends StatelessWidget {
// // // // // // // // // // //   final String vendorName;
// // // // // // // // // // //   final String category;
// // // // // // // // // // //   final double price;
// // // // // // // // // // //   final String? imageUrl;
// // // // // // // // // // //   final String email;
// // // // // // // // // // //   final VoidCallback onTap;
// // // // // // // // // // //   final VoidCallback onAccept;

// // // // // // // // // // //   const OfferCard({
// // // // // // // // // // //     required this.vendorName,
// // // // // // // // // // //     required this.category,
// // // // // // // // // // //     required this.price,
// // // // // // // // // // //     this.imageUrl,
// // // // // // // // // // //     required this.email,
// // // // // // // // // // //     required this.onTap,
// // // // // // // // // // //     required this.onAccept,
// // // // // // // // // // //     Key? key,
// // // // // // // // // // //   }) : super(key: key);

// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return Card(
// // // // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // // // //       elevation: 4,
// // // // // // // // // // //       child: ListTile(
// // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // //         leading: imageUrl != null
// // // // // // // // // // //             ? CircleAvatar(
// // // // // // // // // // //                 backgroundImage: NetworkImage(imageUrl!),
// // // // // // // // // // //               )
// // // // // // // // // // //             : const CircleAvatar(
// // // // // // // // // // //                 child: Icon(Icons.person),
// // // // // // // // // // //               ),
// // // // // // // // // // //         title: Text(vendorName, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // //         subtitle: Column(
// // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // //           children: [
// // // // // // // // // // //             Text(email),
// // // // // // // // // // //             Text(category),
// // // // // // // // // // //           ],
// // // // // // // // // // //         ),
// // // // // // // // // // //         trailing: Column(
// // // // // // // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // //           children: [
// // // // // // // // // // //             Text('\$$price', style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // //             ElevatedButton(
// // // // // // // // // // //               onPressed: onAccept,
// // // // // // // // // // //               child: const Text('Accept'),
// // // // // // // // // // //             ),
// // // // // // // // // // //           ],
// // // // // // // // // // //         ),
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // // Model class for VendorOffer
// // // // // // // // // // // class VendorOffer {
// // // // // // // // // // //   final String id;
// // // // // // // // // // //   final String vendorProfileId;
// // // // // // // // // // //   final String vendorUserId;
// // // // // // // // // // //   final String vendorName;
// // // // // // // // // // //   final String category;
// // // // // // // // // // //   final double price;
// // // // // // // // // // //   final bool state;
// // // // // // // // // // //   final String? note;

// // // // // // // // // // //   VendorOffer({
// // // // // // // // // // //     required this.id,
// // // // // // // // // // //     required this.vendorProfileId,
// // // // // // // // // // //     required this.vendorUserId,
// // // // // // // // // // //     required this.vendorName,
// // // // // // // // // // //     required this.category,
// // // // // // // // // // //     required this.price,
// // // // // // // // // // //     required this.state,
// // // // // // // // // // //     this.note,
// // // // // // // // // // //   });

// // // // // // // // // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // //     return VendorOffer(
// // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // //       vendorProfileId: json['venderProfileId'] ?? '',
// // // // // // // // // // //       vendorUserId: json['venderProfile']?['userId'] ?? '',
// // // // // // // // // // //       vendorName: json['user']?['name'] ?? 'Unknown',
// // // // // // // // // // //       category: json['venderProfile']?['category'] ?? 'Unknown',
// // // // // // // // // // //       price: json['price']?.toDouble() ?? 0.0,
// // // // // // // // // // //       state: json['state'] ?? false,
// // // // // // // // // // //       note: json['note'],
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // // Model class for VenderProfileDto
// // // // // // // // // // // class VenderProfileDto {
// // // // // // // // // // //   final String id;
// // // // // // // // // // //   final String userId;
// // // // // // // // // // //   final String categoryId;
// // // // // // // // // // //   final String? bio;
// // // // // // // // // // //   final int? experience;

// // // // // // // // // // //   VenderProfileDto({
// // // // // // // // // // //     required this.id,
// // // // // // // // // // //     required this.userId,
// // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // //     this.bio,
// // // // // // // // // // //     this.experience,
// // // // // // // // // // //   });

// // // // // // // // // // //   factory VenderProfileDto.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // //     return VenderProfileDto(
// // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // //       userId: json['userId'] ?? '',
// // // // // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // // // // //       bio: json['bio'],
// // // // // // // // // // //       experience: json['experience'],
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // // Model class for User
// // // // // // // // // // // class User {
// // // // // // // // // // //   final String id;
// // // // // // // // // // //   final String name;
// // // // // // // // // // //   final String email;
// // // // // // // // // // //   final String? imageUrl;

// // // // // // // // // // //   User({
// // // // // // // // // // //     required this.id,
// // // // // // // // // // //     required this.name,
// // // // // // // // // // //     required this.email,
// // // // // // // // // // //     this.imageUrl,
// // // // // // // // // // //   });

// // // // // // // // // // //   factory User.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // //     return User(
// // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // //       name: json['name'] ?? '',
// // // // // // // // // // //       email: json['email'] ?? '',
// // // // // // // // // // //       imageUrl: json['imageUrl'],
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // // Function to fetch vendor profile details
// // // // // // // // // // // Future<VenderProfileDto> fetchVenderProfile(String vendorProfileId) async {
// // // // // // // // // // //   final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/VenderProfile/$vendorProfileId'));

// // // // // // // // // // //   if (response.statusCode == 200) {
// // // // // // // // // // //     final Map<String, dynamic> data = json.decode(response.body);
// // // // // // // // // // //     return VenderProfileDto.fromJson(data);
// // // // // // // // // // //   } else {
// // // // // // // // // // //     throw Exception('Failed to load vendor profile');
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // // Function to fetch user details
// // // // // // // // // // // Future<User> fetchUserDetails(String userId) async {
// // // // // // // // // // //   final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/User/$userId'));

// // // // // // // // // // //   if (response.statusCode == 200) {
// // // // // // // // // // //     final Map<String, dynamic> data = json.decode(response.body);
// // // // // // // // // // //     return User.fromJson(data);
// // // // // // // // // // //   } else {
// // // // // // // // // // //     throw Exception('Failed to load user details');
// // // // // // // // // // //   }
// // // // // // // // // // // }
// // // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // // import 'dart:convert';
// // // // // // // // // // // // import 'package:http/http.dart' as http;

// // // // // // // // // // // // class OrdersScreen extends StatefulWidget {
// // // // // // // // // // // //   final String userId;

// // // // // // // // // // // //   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // // // // // // // // // // }

// // // // // // // // // // // // class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin {
// // // // // // // // // // // //   late TabController _tabController;
// // // // // // // // // // // //   late Future<List<Mission>> missions;

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   void initState() {
// // // // // // // // // // // //     super.initState();
// // // // // // // // // // // //     _tabController = TabController(length: 2, vsync: this);
// // // // // // // // // // // //     missions = fetchMissions();
// // // // // // // // // // // //   }

// // // // // // // // // // // //   Future<List<Mission>> fetchMissions() async {
// // // // // // // // // // // //     try {
// // // // // // // // // // // //       final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));

// // // // // // // // // // // //       if (response.statusCode == 200) {
// // // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // // //         return data.map((json) => Mission.fromJson(json)).toList();
// // // // // // // // // // // //       } else {
// // // // // // // // // // // //         throw Exception('Failed to load missions');
// // // // // // // // // // // //       }
// // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // //       throw Exception('Error fetching missions: $e');
// // // // // // // // // // // //     }
// // // // // // // // // // // //   }

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // //         title: const Text(
// // // // // // // // // // // //           'User Missions',
// // // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // // //         ),
// // // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // // //         elevation: 1,
// // // // // // // // // // // //         bottom: TabBar(
// // // // // // // // // // // //           controller: _tabController,
// // // // // // // // // // // //           labelColor: Colors.blue,
// // // // // // // // // // // //           unselectedLabelColor: Colors.grey,
// // // // // // // // // // // //           indicatorColor: Colors.blue,
// // // // // // // // // // // //           tabs: const [
// // // // // // // // // // // //             Tab(text: 'All Missions'),
// // // // // // // // // // // //             Tab(text: 'Scheduled Missions'),
// // // // // // // // // // // //           ],
// // // // // // // // // // // //         ),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //       body: FutureBuilder<List<Mission>>(
// // // // // // // // // // // //         future: missions,
// // // // // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // // // // //             return const Center(child: Text('No missions available'));
// // // // // // // // // // // //           } else {
// // // // // // // // // // // //             final allMissions = snapshot.data!;
// // // // // // // // // // // //             final scheduledMissions = allMissions.where((mission) => mission.state == MissionState.Scheduled).toList();

// // // // // // // // // // // //             return TabBarView(
// // // // // // // // // // // //               controller: _tabController,
// // // // // // // // // // // //               children: [
// // // // // // // // // // // //                 _buildMissionList(allMissions),
// // // // // // // // // // // //                 _buildMissionList(scheduledMissions),
// // // // // // // // // // // //               ],
// // // // // // // // // // // //             );
// // // // // // // // // // // //           }
// // // // // // // // // // // //         },
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }

// // // // // // // // // // // //   Widget _buildMissionList(List<Mission> missions) {
// // // // // // // // // // // //     return ListView.builder(
// // // // // // // // // // // //       itemCount: missions.length,
// // // // // // // // // // // //       padding: const EdgeInsets.all(16),
// // // // // // // // // // // //       itemBuilder: (context, index) {
// // // // // // // // // // // //         final mission = missions[index];
// // // // // // // // // // // //         return MissionCard(
// // // // // // // // // // // //           mission: mission,
// // // // // // // // // // // //           onTap: () => _showVendorOffers(mission),
// // // // // // // // // // // //         );
// // // // // // // // // // // //       },
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }

// // // // // // // // // // // //   void _showVendorOffers(Mission mission) {
// // // // // // // // // // // //     Navigator.push(
// // // // // // // // // // // //       context,
// // // // // // // // // // // //       MaterialPageRoute(
// // // // // // // // // // // //         builder: (context) => VendorOffersScreen(missionId: mission.id),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // // Widget to display each mission card
// // // // // // // // // // // // class MissionCard extends StatelessWidget {
// // // // // // // // // // // //   final Mission mission;
// // // // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // // // //   const MissionCard({
// // // // // // // // // // // //     required this.mission,
// // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // //     Key? key,
// // // // // // // // // // // //   }) : super(key: key);

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Card(
// // // // // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // // // // //       elevation: 4,
// // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // //         title: Text(mission.name, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // //         subtitle: Column(
// // // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // //           children: [
// // // // // // // // // // // //             Text('State: ${mission.state}'),
// // // // // // // // // // // //             Text('Day: ${mission.day}'),
// // // // // // // // // // // //           ],
// // // // // // // // // // // //         ),
// // // // // // // // // // // //         trailing: mission.image != null
// // // // // // // // // // // //             ? Image.network(mission.image!, width: 50, height: 50, fit: BoxFit.cover)
// // // // // // // // // // // //             : const SizedBox.shrink(),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // // Model class for Mission
// // // // // // // // // // // // class Mission {
// // // // // // // // // // // //   final String id;
// // // // // // // // // // // //   final String name;
// // // // // // // // // // // //   final MissionState state;
// // // // // // // // // // // //   final String categoryId;
// // // // // // // // // // // //   final String userId;
// // // // // // // // // // // //   final DateTime day;
// // // // // // // // // // // //   final String location;
// // // // // // // // // // // //   final String note;
// // // // // // // // // // // //   final String? image;
// // // // // // // // // // // //   final String? details;
// // // // // // // // // // // //   final int? room;
// // // // // // // // // // // //   final String? grade;
// // // // // // // // // // // //   final String? hours;

// // // // // // // // // // // //   Mission({
// // // // // // // // // // // //     required this.id,
// // // // // // // // // // // //     required this.name,
// // // // // // // // // // // //     required this.state,
// // // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // // //     required this.userId,
// // // // // // // // // // // //     required this.day,
// // // // // // // // // // // //     required this.location,
// // // // // // // // // // // //     required this.note,
// // // // // // // // // // // //     this.image,
// // // // // // // // // // // //     this.details,
// // // // // // // // // // // //     this.room,
// // // // // // // // // // // //     this.grade,
// // // // // // // // // // // //     this.hours,
// // // // // // // // // // // //   });

// // // // // // // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // //     return Mission(
// // // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // // //       name: json['name'] ?? '',
// // // // // // // // // // // //       state: MissionState.values[json['state'] ?? 0],
// // // // // // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // // // // // //       userId: json['userId'] ?? '',
// // // // // // // // // // // //       day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
// // // // // // // // // // // //       location: json['location'] ?? '',
// // // // // // // // // // // //       note: json['note'] ?? '',
// // // // // // // // // // // //       image: json['image'],
// // // // // // // // // // // //       details: json['details'],
// // // // // // // // // // // //       room: json['room'],
// // // // // // // // // // // //       grade: json['grade'],
// // // // // // // // // // // //       hours: json['hours'],
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // enum MissionState {
// // // // // // // // // // // //   Pending,
// // // // // // // // // // // //   Scheduled,
// // // // // // // // // // // //   Completed,
// // // // // // // // // // // //   Cancelled,
// // // // // // // // // // // // }

// // // // // // // // // // // // // Screen to display vendor offers for a specific mission
// // // // // // // // // // // // class VendorOffersScreen extends StatefulWidget {
// // // // // // // // // // // //   final String missionId;

// // // // // // // // // // // //   const VendorOffersScreen({required this.missionId, Key? key}) : super(key: key);

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // // // // // // // // // // // }

// // // // // // // // // // // // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// // // // // // // // // // // //   late Future<List<VendorOffer>> offers;

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   void initState() {
// // // // // // // // // // // //     super.initState();
// // // // // // // // // // // //     offers = fetchVendorOffers();
// // // // // // // // // // // //   }

// // // // // // // // // // // //   Future<List<VendorOffer>> fetchVendorOffers() async {
// // // // // // // // // // // //     try {
// // // // // // // // // // // //       final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));

// // // // // // // // // // // //       if (response.statusCode == 200) {
// // // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // // //         return data.map((json) => VendorOffer.fromJson(json)).toList();
// // // // // // // // // // // //       } else {
// // // // // // // // // // // //         throw Exception('Failed to load offers');
// // // // // // // // // // // //       }
// // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // //       throw Exception('Error fetching offers: $e');
// // // // // // // // // // // //     }
// // // // // // // // // // // //   }

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // //         title: const Text(
// // // // // // // // // // // //           'Vendor Offers',
// // // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // // //         ),
// // // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // // //         elevation: 1,
// // // // // // // // // // // //       ),
// // // // // // // // // // // //       body: FutureBuilder<List<VendorOffer>>(
// // // // // // // // // // // //         future: offers,
// // // // // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // // // // //             return const Center(child: Text('No offers available'));
// // // // // // // // // // // //           } else {
// // // // // // // // // // // //             final allOffers = snapshot.data!;
// // // // // // // // // // // //             return ListView.builder(
// // // // // // // // // // // //               itemCount: allOffers.length,
// // // // // // // // // // // //               padding: const EdgeInsets.all(16),
// // // // // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // // // // //                 final offer = allOffers[index];
// // // // // // // // // // // //                 return FutureBuilder<VenderProfileDto>(
// // // // // // // // // // // //                   future: fetchVenderProfile(offer.vendorProfileId),
// // // // // // // // // // // //                   builder: (context, profileSnapshot) {
// // // // // // // // // // // //                     if (profileSnapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // // //                       return const CircularProgressIndicator();
// // // // // // // // // // // //                     } else if (profileSnapshot.hasError) {
// // // // // // // // // // // //                       return ListTile(
// // // // // // // // // // // //                         title: Text('Error loading profile data'),
// // // // // // // // // // // //                         subtitle: Text(offer.category),
// // // // // // // // // // // //                         trailing: Text('\$${offer.price}'),
// // // // // // // // // // // //                       );
// // // // // // // // // // // //                     } else if (!profileSnapshot.hasData) {
// // // // // // // // // // // //                       return ListTile(
// // // // // // // // // // // //                         title: Text('Profile data not available'),
// // // // // // // // // // // //                         subtitle: Text(offer.category),
// // // // // // // // // // // //                         trailing: Text('\$${offer.price}'),
// // // // // // // // // // // //                       );
// // // // // // // // // // // //                     } else {
// // // // // // // // // // // //                       final profile = profileSnapshot.data!;
// // // // // // // // // // // //                       return FutureBuilder<User>(
// // // // // // // // // // // //                         future: fetchUserDetails(profile.userId),
// // // // // // // // // // // //                         builder: (context, userSnapshot) {
// // // // // // // // // // // //                           if (userSnapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // // //                             return const CircularProgressIndicator();
// // // // // // // // // // // //                           } else if (userSnapshot.hasError) {
// // // // // // // // // // // //                             return ListTile(
// // // // // // // // // // // //                               title: Text('Error loading user data'),
// // // // // // // // // // // //                               subtitle: Text(offer.category),
// // // // // // // // // // // //                               trailing: Text('\$${offer.price}'),
// // // // // // // // // // // //                             );
// // // // // // // // // // // //                           } else if (!userSnapshot.hasData) {
// // // // // // // // // // // //                             return ListTile(
// // // // // // // // // // // //                               title: Text('User data not available'),
// // // // // // // // // // // //                               subtitle: Text(offer.category),
// // // // // // // // // // // //                               trailing: Text('\$${offer.price}'),
// // // // // // // // // // // //                             );
// // // // // // // // // // // //                           } else {
// // // // // // // // // // // //                             final user = userSnapshot.data!;
// // // // // // // // // // // //                             return OfferCard(
// // // // // // // // // // // //                               userName: user.userName,
// // // // // // // // // // // //                               email: user.email,
// // // // // // // // // // // //                               category: offer.category,
// // // // // // // // // // // //                               price: offer.price,
// // // // // // // // // // // //                               imageUrl: user.imageUrl,
// // // // // // // // // // // //                               onTap: () => _showOfferDetails(offer, user),
// // // // // // // // // // // //                               onAccept: () => _acceptOffer(offer.id),
// // // // // // // // // // // //                             );
// // // // // // // // // // // //                           }
// // // // // // // // // // // //                         },
// // // // // // // // // // // //                       );
// // // // // // // // // // // //                     }
// // // // // // // // // // // //                   },
// // // // // // // // // // // //                 );
// // // // // // // // // // // //               },
// // // // // // // // // // // //             );
// // // // // // // // // // // //           }
// // // // // // // // // // // //         },
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }

// // // // // // // // // // // //   void _showOfferDetails(VendorOffer offer, User user) {
// // // // // // // // // // // //     showModalBottomSheet(
// // // // // // // // // // // //       context: context,
// // // // // // // // // // // //       shape: const RoundedRectangleBorder(
// // // // // // // // // // // //         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //       builder: (context) {
// // // // // // // // // // // //         return Padding(
// // // // // // // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // // // // // // //           child: Column(
// // // // // // // // // // // //             mainAxisSize: MainAxisSize.min,
// // // // // // // // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // //             children: [
// // // // // // // // // // // //               Text(
// // // // // // // // // // // //                 user.userName,
// // // // // // // // // // // //                 style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // // // // // // // // // // //               ),
// // // // // // // // // // // //               const SizedBox(height: 8),
// // // // // // // // // // // //               Text(user.email, style: const TextStyle(color: Colors.grey)),
// // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // //               Text('Price: \$${offer.price}', style: const TextStyle(fontSize: 18)),
// // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // //               Text('Note:', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
// // // // // // // // // // // //               Text(offer.note ?? 'No note available.'),
// // // // // // // // // // // //             ],
// // // // // // // // // // // //           ),
// // // // // // // // // // // //         );
// // // // // // // // // // // //       },
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }

// // // // // // // // // // // //   Future<void> _acceptOffer(String offerId) async {
// // // // // // // // // // // //     try {
// // // // // // // // // // // //       final response = await http.put(
// // // // // // // // // // // //         Uri.parse('https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted/$offerId'),
// // // // // // // // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // // // // // // // //       );

// // // // // // // // // // // //       if (response.statusCode == 204) {
// // // // // // // // // // // //         setState(() {
// // // // // // // // // // // //           offers = fetchVendorOffers(); // Refresh offers after updating
// // // // // // // // // // // //         });
// // // // // // // // // // // //       } else {
// // // // // // // // // // // //         throw Exception('Failed to update offer state');
// // // // // // // // // // // //       }
// // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // //       // Show error message
// // // // // // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // // // // //         SnackBar(content: Text('Error updating offer: $e')),
// // // // // // // // // // // //       );
// // // // // // // // // // // //     }
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // // Widget to display each offer card
// // // // // // // // // // // // class OfferCard extends StatelessWidget {
// // // // // // // // // // // //   final String userName;
// // // // // // // // // // // //   final String email;
// // // // // // // // // // // //   final String category;
// // // // // // // // // // // //   final double price;
// // // // // // // // // // // //   final String? imageUrl;
// // // // // // // // // // // //   final VoidCallback onTap;
// // // // // // // // // // // //   final VoidCallback onAccept;

// // // // // // // // // // // //   const OfferCard({
// // // // // // // // // // // //     required this.userName,
// // // // // // // // // // // //     required this.email,
// // // // // // // // // // // //     required this.category,
// // // // // // // // // // // //     required this.price,
// // // // // // // // // // // //     this.imageUrl,
// // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // //     required this.onAccept,
// // // // // // // // // // // //     Key? key,
// // // // // // // // // // // //   }) : super(key: key);

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Card(
// // // // // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // // // // //       elevation: 4,
// // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // //         leading: imageUrl != null
// // // // // // // // // // // //             ? CircleAvatar(
// // // // // // // // // // // //                 backgroundImage: NetworkImage(imageUrl!),
// // // // // // // // // // // //               )
// // // // // // // // // // // //             : const CircleAvatar(
// // // // // // // // // // // //                 child: Icon(Icons.person),
// // // // // // // // // // // //               ),
// // // // // // // // // // // //         title: Text(userName, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // //         subtitle: Column(
// // // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // //           children: [
// // // // // // // // // // // //             Text(email),
// // // // // // // // // // // //             Text(category),
// // // // // // // // // // // //           ],
// // // // // // // // // // // //         ),
// // // // // // // // // // // //         trailing: Column(
// // // // // // // // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // //           children: [
// // // // // // // // // // // //             Text('\$$price', style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // //             ElevatedButton(
// // // // // // // // // // // //               onPressed: onAccept,
// // // // // // // // // // // //               child: const Text('Accept'),
// // // // // // // // // // // //             ),
// // // // // // // // // // // //           ],
// // // // // // // // // // // //         ),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // // Model class for VendorOffer
// // // // // // // // // // // // class VendorOffer {
// // // // // // // // // // // //   final String id;
// // // // // // // // // // // //   final String vendorProfileId;
// // // // // // // // // // // //   final String vendorUserId;
// // // // // // // // // // // //   final String category;
// // // // // // // // // // // //   final double price;
// // // // // // // // // // // //   final bool state;
// // // // // // // // // // // //   final String? note;

// // // // // // // // // // // //   VendorOffer({
// // // // // // // // // // // //     required this.id,
// // // // // // // // // // // //     required this.vendorProfileId,
// // // // // // // // // // // //     required this.vendorUserId,
// // // // // // // // // // // //     required this.category,
// // // // // // // // // // // //     required this.price,
// // // // // // // // // // // //     required this.state,
// // // // // // // // // // // //     this.note,
// // // // // // // // // // // //   });

// // // // // // // // // // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // //     return VendorOffer(
// // // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // // //       vendorProfileId: json['vendorProfileId'] ?? '',
// // // // // // // // // // // //       vendorUserId: json['vendorUserId'] ?? '',
// // // // // // // // // // // //       category: json['category'] ?? 'Unknown',
// // // // // // // // // // // //       price: json['price']?.toDouble() ?? 0.0,
// // // // // // // // // // // //       state: json['state'] ?? false,
// // // // // // // // // // // //       note: json['note'],
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // // Model class for VenderProfileDto
// // // // // // // // // // // // class VenderProfileDto {
// // // // // // // // // // // //   final String id;
// // // // // // // // // // // //   final String userId;
// // // // // // // // // // // //   final String categoryId;
// // // // // // // // // // // //   final String? bio;
// // // // // // // // // // // //   final int? experience;

// // // // // // // // // // // //   VenderProfileDto({
// // // // // // // // // // // //     required this.id,
// // // // // // // // // // // //     required this.userId,
// // // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // // //     this.bio,
// // // // // // // // // // // //     this.experience,
// // // // // // // // // // // //   });

// // // // // // // // // // // //   factory VenderProfileDto.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // //     return VenderProfileDto(
// // // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // // //       userId: json['userId'] ?? '',
// // // // // // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // // // // // //       bio: json['bio'],
// // // // // // // // // // // //       experience: json['experience'],
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // // Model class for User
// // // // // // // // // // // // class User {
// // // // // // // // // // // //   final String id;
// // // // // // // // // // // //   final String userName; // updated field
// // // // // // // // // // // //   final String email;
// // // // // // // // // // // //   final String? imageUrl;

// // // // // // // // // // // //   User({
// // // // // // // // // // // //     required this.id,
// // // // // // // // // // // //     required this.userName,
// // // // // // // // // // // //     required this.email,
// // // // // // // // // // // //     this.imageUrl,
// // // // // // // // // // // //   });

// // // // // // // // // // // //   factory User.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // //     return User(
// // // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // // //       userName: json['userName'] ?? '',
// // // // // // // // // // // //       email: json['email'] ?? '',
// // // // // // // // // // // //       imageUrl: json['imageUrl'],
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // // Function to fetch vendor profile details
// // // // // // // // // // // // Future<VenderProfileDto> fetchVenderProfile(String vendorProfileId) async {
// // // // // // // // // // // //   final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/VenderProfile/$vendorProfileId'));

// // // // // // // // // // // //   if (response.statusCode == 200) {
// // // // // // // // // // // //     final Map<String, dynamic> data = json.decode(response.body);
// // // // // // // // // // // //     return VenderProfileDto.fromJson(data);
// // // // // // // // // // // //   } else {
// // // // // // // // // // // //     throw Exception('Failed to load vendor profile');
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // // Function to fetch user details
// // // // // // // // // // // // Future<User> fetchUserDetails(String userId) async {
// // // // // // // // // // // //   final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/User/$userId'));

// // // // // // // // // // // //   if (response.statusCode == 200) {
// // // // // // // // // // // //     final Map<String, dynamic> data = json.decode(response.body);
// // // // // // // // // // // //     return User.fromJson(data);
// // // // // // // // // // // //   } else {
// // // // // // // // // // // //     throw Exception('Failed to load user details');
// // // // // // // // // // // //   }
// // // // // // // // // // // // }
// // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // import 'dart:convert';
// // // // // // // // // // // import 'package:http/http.dart' as http;

// // // // // // // // // // // class OrdersScreen extends StatefulWidget {
// // // // // // // // // // //   final String userId;

// // // // // // // // // // //   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

// // // // // // // // // // //   @override
// // // // // // // // // // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // // // // // // // // // }

// // // // // // // // // // // class _OrdersScreenState extends State<OrdersScreen>
// // // // // // // // // // //     with SingleTickerProviderStateMixin {
// // // // // // // // // // //   late TabController _tabController;
// // // // // // // // // // //   late Future<List<Mission>> missions;

// // // // // // // // // // //   @override
// // // // // // // // // // //   void initState() {
// // // // // // // // // // //     super.initState();
// // // // // // // // // // //     _tabController = TabController(length: 2, vsync: this);
// // // // // // // // // // //     missions = fetchMissions();
// // // // // // // // // // //   }

// // // // // // // // // // //   Future<List<Mission>> fetchMissions() async {
// // // // // // // // // // //     try {
// // // // // // // // // // //       final response = await http.get(Uri.parse(
// // // // // // // // // // //           'https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));

// // // // // // // // // // //       if (response.statusCode == 200) {
// // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // //         return data.map((json) => Mission.fromJson(json)).toList();
// // // // // // // // // // //       } else {
// // // // // // // // // // //         throw Exception('Failed to load missions');
// // // // // // // // // // //       }
// // // // // // // // // // //     } catch (e) {
// // // // // // // // // // //       throw Exception('Error fetching missions: $e');
// // // // // // // // // // //     }
// // // // // // // // // // //   }

// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return Scaffold(
// // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // //         title: const Text(
// // // // // // // // // // //           'User Missions',
// // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // //         ),
// // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // //         elevation: 1,
// // // // // // // // // // //         bottom: TabBar(
// // // // // // // // // // //           controller: _tabController,
// // // // // // // // // // //           labelColor: Colors.blue,
// // // // // // // // // // //           unselectedLabelColor: Colors.grey,
// // // // // // // // // // //           indicatorColor: Colors.blue,
// // // // // // // // // // //           tabs: const [
// // // // // // // // // // //             Tab(text: 'All Missions'),
// // // // // // // // // // //             Tab(text: 'Scheduled Missions'),
// // // // // // // // // // //           ],
// // // // // // // // // // //         ),
// // // // // // // // // // //       ),
// // // // // // // // // // //       body: FutureBuilder<List<Mission>>(
// // // // // // // // // // //         future: missions,
// // // // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // // // //             return const Center(child: Text('No missions available'));
// // // // // // // // // // //           } else {
// // // // // // // // // // //             final allMissions = snapshot.data!;
// // // // // // // // // // //             final scheduledMissions = allMissions
// // // // // // // // // // //                 .where((mission) => mission.state == MissionState.Scheduled)
// // // // // // // // // // //                 .toList();

// // // // // // // // // // //             return TabBarView(
// // // // // // // // // // //               controller: _tabController,
// // // // // // // // // // //               children: [
// // // // // // // // // // //                 _buildMissionList(allMissions),
// // // // // // // // // // //                 _buildMissionList(scheduledMissions),
// // // // // // // // // // //               ],
// // // // // // // // // // //             );
// // // // // // // // // // //           }
// // // // // // // // // // //         },
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }

// // // // // // // // // // //   Widget _buildMissionList(List<Mission> missions) {
// // // // // // // // // // //     return ListView.builder(
// // // // // // // // // // //       itemCount: missions.length,
// // // // // // // // // // //       padding: const EdgeInsets.all(16),
// // // // // // // // // // //       itemBuilder: (context, index) {
// // // // // // // // // // //         final mission = missions[index];
// // // // // // // // // // //         return MissionCard(
// // // // // // // // // // //           mission: mission,
// // // // // // // // // // //           onTap: () => _showVendorOffers(mission),
// // // // // // // // // // //         );
// // // // // // // // // // //       },
// // // // // // // // // // //     );
// // // // // // // // // // //   }

// // // // // // // // // // //   void _showVendorOffers(Mission mission) {
// // // // // // // // // // //     Navigator.push(
// // // // // // // // // // //       context,
// // // // // // // // // // //       MaterialPageRoute(
// // // // // // // // // // //         builder: (context) => VendorOffersScreen(missionId: mission.id),
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // // Widget to display each mission card
// // // // // // // // // // // class MissionCard extends StatelessWidget {
// // // // // // // // // // //   final Mission mission;
// // // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // // //   const MissionCard({
// // // // // // // // // // //     required this.mission,
// // // // // // // // // // //     required this.onTap,
// // // // // // // // // // //     Key? key,
// // // // // // // // // // //   }) : super(key: key);

// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return Card(
// // // // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // // // //       elevation: 4,
// // // // // // // // // // //       child: ListTile(
// // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // //         title: Text(mission.name,
// // // // // // // // // // //             style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // //         subtitle: Column(
// // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // //           children: [
// // // // // // // // // // //             Text('State: ${mission.state}'),
// // // // // // // // // // //             Text('Day: ${mission.day}'),
// // // // // // // // // // //           ],
// // // // // // // // // // //         ),
// // // // // // // // // // //         trailing: mission.image != null
// // // // // // // // // // //             ? Image.network(mission.image!,
// // // // // // // // // // //                 width: 50, height: 50, fit: BoxFit.cover)
// // // // // // // // // // //             : const SizedBox.shrink(),
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // // Model class for Mission
// // // // // // // // // // // class Mission {
// // // // // // // // // // //   final String id;
// // // // // // // // // // //   final String name;
// // // // // // // // // // //   final MissionState state;
// // // // // // // // // // //   final String categoryId;
// // // // // // // // // // //   final String userId;
// // // // // // // // // // //   final DateTime day;
// // // // // // // // // // //   final String location;
// // // // // // // // // // //   final String note;
// // // // // // // // // // //   final String? image;
// // // // // // // // // // //   final String? details;
// // // // // // // // // // //   final int? room;
// // // // // // // // // // //   final String? grade;
// // // // // // // // // // //   final String? hours;

// // // // // // // // // // //   Mission({
// // // // // // // // // // //     required this.id,
// // // // // // // // // // //     required this.name,
// // // // // // // // // // //     required this.state,
// // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // //     required this.userId,
// // // // // // // // // // //     required this.day,
// // // // // // // // // // //     required this.location,
// // // // // // // // // // //     required this.note,
// // // // // // // // // // //     this.image,
// // // // // // // // // // //     this.details,
// // // // // // // // // // //     this.room,
// // // // // // // // // // //     this.grade,
// // // // // // // // // // //     this.hours,
// // // // // // // // // // //   });

// // // // // // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // //     return Mission(
// // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // //       name: json['name'] ?? '',
// // // // // // // // // // //       state: MissionState.values[json['state'] ?? 0],
// // // // // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // // // // //       userId: json['userId'] ?? '',
// // // // // // // // // // //       day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
// // // // // // // // // // //       location: json['location'] ?? '',
// // // // // // // // // // //       note: json['note'] ?? '',
// // // // // // // // // // //       image: json['image'],
// // // // // // // // // // //       details: json['details'],
// // // // // // // // // // //       room: json['room'],
// // // // // // // // // // //       grade: json['grade'],
// // // // // // // // // // //       hours: json['hours'],
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // enum MissionState {
// // // // // // // // // // //   Pending,
// // // // // // // // // // //   Scheduled,
// // // // // // // // // // //   Completed,
// // // // // // // // // // //   Cancelled,
// // // // // // // // // // // }

// // // // // // // // // // // // Screen to display vendor offers for a specific mission
// // // // // // // // // // // class VendorOffersScreen extends StatefulWidget {
// // // // // // // // // // //   final String missionId;

// // // // // // // // // // //   const VendorOffersScreen({required this.missionId, Key? key})
// // // // // // // // // // //       : super(key: key);

// // // // // // // // // // //   @override
// // // // // // // // // // //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // // // // // // // // // // }

// // // // // // // // // // // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// // // // // // // // // // //   late Future<List<VendorOffer>> offers;

// // // // // // // // // // //   @override
// // // // // // // // // // //   void initState() {
// // // // // // // // // // //     super.initState();
// // // // // // // // // // //     offers = fetchVendorOffers();
// // // // // // // // // // //   }

// // // // // // // // // // //   Future<List<VendorOffer>> fetchVendorOffers() async {
// // // // // // // // // // //     try {
// // // // // // // // // // //       final response = await http.get(Uri.parse(
// // // // // // // // // // //           'https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));
// // // // // // // // // // //       print(json.decode(response.body));
// // // // // // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // //         return data.map((json) => VendorOffer.fromJson(json)).toList();
// // // // // // // // // // //       } else {
// // // // // // // // // // //         throw Exception('Failed to load offers');
// // // // // // // // // // //       }
// // // // // // // // // // //     } catch (e) {
// // // // // // // // // // //       throw Exception('Error fetching offers: $e');
// // // // // // // // // // //     }
// // // // // // // // // // //   }

// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return Scaffold(
// // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // //         title: const Text(
// // // // // // // // // // //           'Vendor Offers',
// // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // //         ),
// // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // //         elevation: 1,
// // // // // // // // // // //       ),
// // // // // // // // // // //       body: FutureBuilder<List<VendorOffer>>(
// // // // // // // // // // //         future: offers,
// // // // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // // // //             return const Center(child: Text('No offers available'));
// // // // // // // // // // //           } else {
// // // // // // // // // // //             final allOffers = snapshot.data!;
// // // // // // // // // // //             return ListView.builder(
// // // // // // // // // // //               itemCount: allOffers.length,
// // // // // // // // // // //               padding: const EdgeInsets.all(16),
// // // // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // // // //                 final offer = allOffers[index];
// // // // // // // // // // //                 return FutureBuilder<VenderProfileDto>(
// // // // // // // // // // //                   future: fetchVenderProfile(offer.vendorProfileId),
// // // // // // // // // // //                   builder: (context, profileSnapshot) {
// // // // // // // // // // //                     if (profileSnapshot.connectionState ==
// // // // // // // // // // //                         ConnectionState.waiting) {
// // // // // // // // // // //                       return const CircularProgressIndicator();
// // // // // // // // // // //                     } else if (profileSnapshot.hasError) {
// // // // // // // // // // //                       return ListTile(
// // // // // // // // // // //                         title: Text('Error loading profile data'),
// // // // // // // // // // //                         subtitle: Text(offer.category),
// // // // // // // // // // //                         trailing: Text('\$${offer.price}'),
// // // // // // // // // // //                       );
// // // // // // // // // // //                     } else if (!profileSnapshot.hasData) {
// // // // // // // // // // //                       return ListTile(
// // // // // // // // // // //                         title: Text('Profile data not available'),
// // // // // // // // // // //                         subtitle: Text(offer.category),
// // // // // // // // // // //                         trailing: Text('\$${offer.price}'),
// // // // // // // // // // //                       );
// // // // // // // // // // //                     } else {
// // // // // // // // // // //                       final profile = profileSnapshot.data!;
// // // // // // // // // // //                       return FutureBuilder<User>(
// // // // // // // // // // //                         future: fetchUserDetails(profile.userId),
// // // // // // // // // // //                         builder: (context, userSnapshot) {
// // // // // // // // // // //                           if (userSnapshot.connectionState ==
// // // // // // // // // // //                               ConnectionState.waiting) {
// // // // // // // // // // //                             return const CircularProgressIndicator();
// // // // // // // // // // //                           } else if (userSnapshot.hasError) {
// // // // // // // // // // //                             return ListTile(
// // // // // // // // // // //                               title: Text('Error loading user data'),
// // // // // // // // // // //                               subtitle: Text(offer.category),
// // // // // // // // // // //                               trailing: Text('\$${offer.price}'),
// // // // // // // // // // //                             );
// // // // // // // // // // //                           } else if (!userSnapshot.hasData) {
// // // // // // // // // // //                             return ListTile(
// // // // // // // // // // //                               title: Text('User data not available'),
// // // // // // // // // // //                               subtitle: Text(offer.category),
// // // // // // // // // // //                               trailing: Text('\$${offer.price}'),
// // // // // // // // // // //                             );
// // // // // // // // // // //                           } else {
// // // // // // // // // // //                             final user = userSnapshot.data!;
// // // // // // // // // // //                             return OfferCard(
// // // // // // // // // // //                               userName: user.userName,
// // // // // // // // // // //                               email: user.email,
// // // // // // // // // // //                               category: offer.category,
// // // // // // // // // // //                               price: offer.price,
// // // // // // // // // // //                               imageUrl: user.imageUrl,
// // // // // // // // // // //                               onTap: () => _showOfferDetails(offer, user),
// // // // // // // // // // //                               onAccept: () => _acceptOffer(offer.id),
// // // // // // // // // // //                             );
// // // // // // // // // // //                           }
// // // // // // // // // // //                         },
// // // // // // // // // // //                       );
// // // // // // // // // // //                     }
// // // // // // // // // // //                   },
// // // // // // // // // // //                 );
// // // // // // // // // // //               },
// // // // // // // // // // //             );
// // // // // // // // // // //           }
// // // // // // // // // // //         },
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }

// // // // // // // // // // //   void _showOfferDetails(VendorOffer offer, User user) {
// // // // // // // // // // //     showModalBottomSheet(
// // // // // // // // // // //       context: context,
// // // // // // // // // // //       shape: const RoundedRectangleBorder(
// // // // // // // // // // //         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// // // // // // // // // // //       ),
// // // // // // // // // // //       builder: (context) {
// // // // // // // // // // //         return Padding(
// // // // // // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // // // // // //           child: Column(
// // // // // // // // // // //             mainAxisSize: MainAxisSize.min,
// // // // // // // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // //             children: [
// // // // // // // // // // //               Text(
// // // // // // // // // // //                 user.userName,
// // // // // // // // // // //                 style:
// // // // // // // // // // //                     const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // // // // // // // // // //               ),
// // // // // // // // // // //               const SizedBox(height: 8),
// // // // // // // // // // //               Text(user.email, style: const TextStyle(color: Colors.grey)),
// // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // //               Text('Price: \$${offer.price}',
// // // // // // // // // // //                   style: const TextStyle(fontSize: 18)),
// // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // //               Text('Note:',
// // // // // // // // // // //                   style: const TextStyle(
// // // // // // // // // // //                       fontSize: 16, fontWeight: FontWeight.bold)),
// // // // // // // // // // //               Text(offer.note ?? 'No note available.'),
// // // // // // // // // // //             ],
// // // // // // // // // // //           ),
// // // // // // // // // // //         );
// // // // // // // // // // //       },
// // // // // // // // // // //     );
// // // // // // // // // // //   }

// // // // // // // // // // //   Future<void> _acceptOffer(String offerId) async {
// // // // // // // // // // //     try {
// // // // // // // // // // //       final response = await http.put(
// // // // // // // // // // //         Uri.parse(
// // // // // // // // // // //             'https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted/$offerId'),
// // // // // // // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // // // // // // //       );
// // // // // // // // // // //          print(json.decode(response.body));
// // // // // // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // //         setState(() {
// // // // // // // // // // //           offers = fetchVendorOffers(); // Refresh offers after updating
// // // // // // // // // // //         });
// // // // // // // // // // //       } else {
// // // // // // // // // // //         throw Exception('Failed to update offer state');
// // // // // // // // // // //       }
// // // // // // // // // // //     } catch (e) {
// // // // // // // // // // //       // Show error message
// // // // // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // // // //         SnackBar(content: Text('Error updating offer: $e')),
// // // // // // // // // // //       );
// // // // // // // // // // //     }
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // // Widget to display each offer card
// // // // // // // // // // // class OfferCard extends StatelessWidget {
// // // // // // // // // // //   final String userName;
// // // // // // // // // // //   final String email;
// // // // // // // // // // //   final String category;
// // // // // // // // // // //   final double price;
// // // // // // // // // // //   final String? imageUrl;
// // // // // // // // // // //   final VoidCallback onTap;
// // // // // // // // // // //   final VoidCallback onAccept;

// // // // // // // // // // //   const OfferCard({
// // // // // // // // // // //     required this.userName,
// // // // // // // // // // //     required this.email,
// // // // // // // // // // //     required this.category,
// // // // // // // // // // //     required this.price,
// // // // // // // // // // //     this.imageUrl,
// // // // // // // // // // //     required this.onTap,
// // // // // // // // // // //     required this.onAccept,
// // // // // // // // // // //     Key? key,
// // // // // // // // // // //   }) : super(key: key);

// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return Card(
// // // // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // // // //       elevation: 4,
// // // // // // // // // // //       child: ListTile(
// // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // //         leading: imageUrl != null
// // // // // // // // // // //             ? CircleAvatar(
// // // // // // // // // // //                 backgroundImage: NetworkImage(imageUrl!),
// // // // // // // // // // //               )
// // // // // // // // // // //             : const CircleAvatar(
// // // // // // // // // // //                 child: Icon(Icons.person),
// // // // // // // // // // //               ),
// // // // // // // // // // //         title:
// // // // // // // // // // //             Text(userName, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // //         subtitle: Column(
// // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // //           children: [
// // // // // // // // // // //             Text(email),
// // // // // // // // // // //             Text(category),
// // // // // // // // // // //           ],
// // // // // // // // // // //         ),
// // // // // // // // // // //         trailing: Column(
// // // // // // // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // //           children: [
// // // // // // // // // // //             Text('\$$price',
// // // // // // // // // // //                 style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // //             ElevatedButton(
// // // // // // // // // // //               onPressed: onAccept,
// // // // // // // // // // //               child: const Text('Accept'),
// // // // // // // // // // //             ),
// // // // // // // // // // //           ],
// // // // // // // // // // //         ),
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // // Model class for VendorOffer
// // // // // // // // // // // class VendorOffer {
// // // // // // // // // // //   final String id;
// // // // // // // // // // //   final String vendorProfileId;
// // // // // // // // // // //   final String vendorUserId;
// // // // // // // // // // //   final String category;
// // // // // // // // // // //   final double price;
// // // // // // // // // // //   final bool state;
// // // // // // // // // // //   final String? note;

// // // // // // // // // // //   VendorOffer({
// // // // // // // // // // //     required this.id,
// // // // // // // // // // //     required this.vendorProfileId,
// // // // // // // // // // //     required this.vendorUserId,
// // // // // // // // // // //     required this.category,
// // // // // // // // // // //     required this.price,
// // // // // // // // // // //     required this.state,
// // // // // // // // // // //     this.note,
// // // // // // // // // // //   });

// // // // // // // // // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // //     return VendorOffer(
// // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // //       vendorProfileId: json['vendorProfileId'] ?? '',
// // // // // // // // // // //       vendorUserId: json['vendorUserId'] ?? '', // Ensure this field is used
// // // // // // // // // // //       category: json['category'] ?? 'Unknown',
// // // // // // // // // // //       price: json['price']?.toDouble() ?? 0.0,
// // // // // // // // // // //       state: json['state'] ?? false,
// // // // // // // // // // //       note: json['note'],
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // // Model class for VenderProfileDto
// // // // // // // // // // // class VenderProfileDto {
// // // // // // // // // // //   final String id;
// // // // // // // // // // //   final String userId;
// // // // // // // // // // //   final String categoryId;
// // // // // // // // // // //   final String? bio;
// // // // // // // // // // //   final int? experience;

// // // // // // // // // // //   VenderProfileDto({
// // // // // // // // // // //     required this.id,
// // // // // // // // // // //     required this.userId,
// // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // //     this.bio,
// // // // // // // // // // //     this.experience,
// // // // // // // // // // //   });

// // // // // // // // // // //   factory VenderProfileDto.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // //     return VenderProfileDto(
// // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // //       userId: json['userId'] ?? '',
// // // // // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // // // // //       bio: json['bio'],
// // // // // // // // // // //       experience: json['experience'],
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // // Model class for User
// // // // // // // // // // // class User {
// // // // // // // // // // //   final String id;
// // // // // // // // // // //   final String userName; // updated field
// // // // // // // // // // //   final String email;
// // // // // // // // // // //   final String? imageUrl;

// // // // // // // // // // //   User({
// // // // // // // // // // //     required this.id,
// // // // // // // // // // //     required this.userName,
// // // // // // // // // // //     required this.email,
// // // // // // // // // // //     this.imageUrl,
// // // // // // // // // // //   });

// // // // // // // // // // //   factory User.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // //     return User(
// // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // //       userName: json['userName'] ?? '',
// // // // // // // // // // //       email: json['email'] ?? '',
// // // // // // // // // // //       imageUrl: json['imageUrl'],
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // // Function to fetch vendor profile details
// // // // // // // // // // // Future<VenderProfileDto> fetchVenderProfile(String vendorProfileId) async {
// // // // // // // // // // //   final response = await http.get(Uri.parse(
// // // // // // // // // // //       'https://192.168.0.109:7127/api/VenderProfile/$vendorProfileId'));
// // // // // // // // // // //       print(json.decode(response.body));

// // // // // // // // // // //   if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // //     final Map<String, dynamic> data = json.decode(response.body);
// // // // // // // // // // //     return VenderProfileDto.fromJson(data);
// // // // // // // // // // //   } else {
// // // // // // // // // // //     throw Exception('Failed to load vendor profile');
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // // Function to fetch user details
// // // // // // // // // // // Future<User> fetchUserDetails(String userId) async {
// // // // // // // // // // //   final response =
// // // // // // // // // // //       await http.get(Uri.parse('https://192.168.0.109:7127/api/User/$userId'));

// // // // // // // // // // //   if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // //     final Map<String, dynamic> data = json.decode(response.body);
// // // // // // // // // // //     return User.fromJson(data);
// // // // // // // // // // //   } else {
// // // // // // // // // // //     throw Exception('Failed to load user details');
// // // // // // // // // // //   }
// // // // // // // // // // // }
// // // // // // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // // // // // import 'dart:convert';
// // // // // // // // // // // // // // // import 'package:http/http.dart' as http;

// // // // // // // // // // // // // // // class OrdersScreen extends StatefulWidget {
// // // // // // // // // // // // // // //   final String userId;

// // // // // // // // // // // // // // //   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // class _OrdersScreenState extends State<OrdersScreen>
// // // // // // // // // // // // // // //     with SingleTickerProviderStateMixin {
// // // // // // // // // // // // // // //   late TabController _tabController;
// // // // // // // // // // // // // // //   late Future<List<Mission>> missions;

// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   void initState() {
// // // // // // // // // // // // // // //     super.initState();
// // // // // // // // // // // // // // //     _tabController = TabController(length: 2, vsync: this);
// // // // // // // // // // // // // // //     missions = fetchMissions();
// // // // // // // // // // // // // // //   }

// // // // // // // // // // // // // // //   Future<List<Mission>> fetchMissions() async {
// // // // // // // // // // // // // // //     try {
// // // // // // // // // // // // // // //       final response = await http.get(Uri.parse(
// // // // // // // // // // // // // // //           'https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));
// // // // // // // // // // // // // // //       print(json.decode(response.body));
// // // // // // // // // // // // // // //       if (response.statusCode == 200) {
// // // // // // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // // // // // //         return data.map((json) => Mission.fromJson(json)).toList();
// // // // // // // // // // // // // // //       } else {
// // // // // // // // // // // // // // //         throw Exception('Failed to load missions');
// // // // // // // // // // // // // // //       }
// // // // // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // // // // //       throw Exception('Error fetching missions: $e');
// // // // // // // // // // // // // // //     }
// // // // // // // // // // // // // // //   }

// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // //         title: const Text(
// // // // // // // // // // // // // // //           'User Missions',
// // // // // // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // // // // // //         elevation: 1,
// // // // // // // // // // // // // // //         bottom: TabBar(
// // // // // // // // // // // // // // //           controller: _tabController,
// // // // // // // // // // // // // // //           labelColor: Colors.blue,
// // // // // // // // // // // // // // //           unselectedLabelColor: Colors.grey,
// // // // // // // // // // // // // // //           indicatorColor: Colors.blue,
// // // // // // // // // // // // // // //           tabs: const [
// // // // // // // // // // // // // // //             Tab(text: 'All Missions'),
// // // // // // // // // // // // // // //             Tab(text: 'Scheduled Missions'),
// // // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // //       body: FutureBuilder<List<Mission>>(
// // // // // // // // // // // // // // //         future: missions,
// // // // // // // // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // // // // // // // //             return const Center(child: Text('No missions available'));
// // // // // // // // // // // // // // //           } else {
// // // // // // // // // // // // // // //             final allMissions = snapshot.data!;
// // // // // // // // // // // // // // //             final scheduledMissions = allMissions
// // // // // // // // // // // // // // //                 .where((mission) => mission.state == MissionState.Scheduled)
// // // // // // // // // // // // // // //                 .toList();

// // // // // // // // // // // // // // //             return TabBarView(
// // // // // // // // // // // // // // //               controller: _tabController,
// // // // // // // // // // // // // // //               children: [
// // // // // // // // // // // // // // //                 _buildMissionList(allMissions),
// // // // // // // // // // // // // // //                 _buildMissionList(scheduledMissions),
// // // // // // // // // // // // // // //               ],
// // // // // // // // // // // // // // //             );
// // // // // // // // // // // // // // //           }
// // // // // // // // // // // // // // //         },
// // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // //   }

// // // // // // // // // // // // // // //   Widget _buildMissionList(List<Mission> missions) {
// // // // // // // // // // // // // // //     return ListView.builder(
// // // // // // // // // // // // // // //       itemCount: missions.length,
// // // // // // // // // // // // // // //       padding: const EdgeInsets.all(16),
// // // // // // // // // // // // // // //       itemBuilder: (context, index) {
// // // // // // // // // // // // // // //         final mission = missions[index];
// // // // // // // // // // // // // // //         return MissionCard(
// // // // // // // // // // // // // // //           mission: mission,
// // // // // // // // // // // // // // //           onTap: () => _showVendorOffers(mission),
// // // // // // // // // // // // // // //         );
// // // // // // // // // // // // // // //       },
// // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // //   }

// // // // // // // // // // // // // // //   void _showVendorOffers(Mission mission) {
// // // // // // // // // // // // // // //     Navigator.push(
// // // // // // // // // // // // // // //       context,
// // // // // // // // // // // // // // //       MaterialPageRoute(
// // // // // // // // // // // // // // //         builder: (context) => VendorOffersScreen(missionId: mission.id),
// // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // class MissionCard extends StatelessWidget {
// // // // // // // // // // // // // // //   final Mission mission;
// // // // // // // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // // // // // // //   const MissionCard({
// // // // // // // // // // // // // // //     required this.mission,
// // // // // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // // // // //     Key? key,
// // // // // // // // // // // // // // //   }) : super(key: key);

// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // //     return Card(
// // // // // // // // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // // // // // // // //       elevation: 4,
// // // // // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // // // // //         title: Text(mission.name,
// // // // // // // // // // // // // // //             style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // // // // //         subtitle: Column(
// // // // // // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // //             Text('State: ${mission.state}'),
// // // // // // // // // // // // // // //             Text('Day: ${mission.day}'),
// // // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // //         trailing: mission.image != null
// // // // // // // // // // // // // // //             ? Image.network(mission.image!,
// // // // // // // // // // // // // // //                 width: 50, height: 50, fit: BoxFit.cover)
// // // // // // // // // // // // // // //             : const SizedBox.shrink(),
// // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // class Mission {
// // // // // // // // // // // // // // //   final String id;
// // // // // // // // // // // // // // //   final String name;
// // // // // // // // // // // // // // //   final MissionState state;
// // // // // // // // // // // // // // //   final String categoryId;
// // // // // // // // // // // // // // //   final String userId;
// // // // // // // // // // // // // // //   final DateTime day;
// // // // // // // // // // // // // // //   final String location;
// // // // // // // // // // // // // // //   final String note;
// // // // // // // // // // // // // // //   final String? image;
// // // // // // // // // // // // // // //   final String? details;
// // // // // // // // // // // // // // //   final int? room;
// // // // // // // // // // // // // // //   final String? grade;
// // // // // // // // // // // // // // //   final String? hours;

// // // // // // // // // // // // // // //   Mission({
// // // // // // // // // // // // // // //     required this.id,
// // // // // // // // // // // // // // //     required this.name,
// // // // // // // // // // // // // // //     required this.state,
// // // // // // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // // // // // //     required this.userId,
// // // // // // // // // // // // // // //     required this.day,
// // // // // // // // // // // // // // //     required this.location,
// // // // // // // // // // // // // // //     required this.note,
// // // // // // // // // // // // // // //     this.image,
// // // // // // // // // // // // // // //     this.details,
// // // // // // // // // // // // // // //     this.room,
// // // // // // // // // // // // // // //     this.grade,
// // // // // // // // // // // // // // //     this.hours,
// // // // // // // // // // // // // // //   });

// // // // // // // // // // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // // // // //     return Mission(
// // // // // // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // // // // // //       name: json['name'] ?? '',
// // // // // // // // // // // // // // //       state: MissionState.values[json['state'] ?? 0],
// // // // // // // // // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // // // // // // // // //       userId: json['userId'] ?? '',
// // // // // // // // // // // // // // //       day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
// // // // // // // // // // // // // // //       location: json['location'] ?? '',
// // // // // // // // // // // // // // //       note: json['note'] ?? '',
// // // // // // // // // // // // // // //       image: json['image'],
// // // // // // // // // // // // // // //       details: json['details'],
// // // // // // // // // // // // // // //       room: json['room'],
// // // // // // // // // // // // // // //       grade: json['grade'],
// // // // // // // // // // // // // // //       hours: json['hours'],
// // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // enum MissionState {
// // // // // // // // // // // // // // //   Pending,
// // // // // // // // // // // // // // //   Scheduled,
// // // // // // // // // // // // // // //   Completed,
// // // // // // // // // // // // // // //   Cancelled,
// // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // class VendorOffersScreen extends StatefulWidget {
// // // // // // // // // // // // // // //   final String missionId;

// // // // // // // // // // // // // // //   const VendorOffersScreen({required this.missionId, Key? key})
// // // // // // // // // // // // // // //       : super(key: key);

// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// // // // // // // // // // // // // // //   late Future<List<VendorOffer>> offers;

// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   void initState() {
// // // // // // // // // // // // // // //     super.initState();
// // // // // // // // // // // // // // //     offers = fetchVendorOffers();
// // // // // // // // // // // // // // //   }

// // // // // // // // // // // // // // //   Future<List<VendorOffer>> fetchVendorOffers() async {
// // // // // // // // // // // // // // //     try {
// // // // // // // // // // // // // // //       final response = await http.get(Uri.parse(
// // // // // // // // // // // // // // //           'https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));

// // // // // // // // // // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // // // // // //          print(json.decode(response.body));
// // // // // // // // // // // // // // //         return data.map((json) => VendorOffer.fromJson(json)).toList();
// // // // // // // // // // // // // // //       } else {
// // // // // // // // // // // // // // //         throw Exception('Failed to load offers');
// // // // // // // // // // // // // // //       }
// // // // // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // // // // //       throw Exception('Error fetching offers: $e');
// // // // // // // // // // // // // // //     }
// // // // // // // // // // // // // // //   }

// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // //         title: const Text(
// // // // // // // // // // // // // // //           'Vendor Offers',
// // // // // // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // // // // // //         elevation: 1,
// // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // //       body: FutureBuilder<List<VendorOffer>>(
// // // // // // // // // // // // // // //         future: offers,
// // // // // // // // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // // // // // // // //             return const Center(child: Text('No offers available'));
// // // // // // // // // // // // // // //           } else {
// // // // // // // // // // // // // // //             final allOffers = snapshot.data!;
// // // // // // // // // // // // // // //             return ListView.builder(
// // // // // // // // // // // // // // //               itemCount: allOffers.length,
// // // // // // // // // // // // // // //               padding: const EdgeInsets.all(16),
// // // // // // // // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // // // // // // // //                 final offer = allOffers[index];
// // // // // // // // // // // // // // //                 return FutureBuilder<VenderProfileDto>(
// // // // // // // // // // // // // // //                   future: fetchVenderProfile(offer.vendorProfileId),
// // // // // // // // // // // // // // //                   builder: (context, profileSnapshot) {
// // // // // // // // // // // // // // //                     if (profileSnapshot.connectionState ==
// // // // // // // // // // // // // // //                         ConnectionState.waiting) {
// // // // // // // // // // // // // // //                       return const CircularProgressIndicator();
// // // // // // // // // // // // // // //                     } else if (profileSnapshot.hasError) {
// // // // // // // // // // // // // // //                       return ListTile(
// // // // // // // // // // // // // // //                         title: Text('Error loading profile data'),
// // // // // // // // // // // // // // //                         subtitle: Text(offer.category),
// // // // // // // // // // // // // // //                         trailing: Text('\$${offer.price}'),
// // // // // // // // // // // // // // //                       );
// // // // // // // // // // // // // // //                     } else if (!profileSnapshot.hasData) {
// // // // // // // // // // // // // // //                       return ListTile(
// // // // // // // // // // // // // // //                         title: Text('Profile data not available'),
// // // // // // // // // // // // // // //                         subtitle: Text(offer.category),
// // // // // // // // // // // // // // //                         trailing: Text('\$${offer.price}'),
// // // // // // // // // // // // // // //                       );
// // // // // // // // // // // // // // //                     } else {
// // // // // // // // // // // // // // //                       final profile = profileSnapshot.data!;
// // // // // // // // // // // // // // //                       return FutureBuilder<User>(
// // // // // // // // // // // // // // //                         future: fetchUserDetails(profile.userId),
// // // // // // // // // // // // // // //                         builder: (context, userSnapshot) {
// // // // // // // // // // // // // // //                           if (userSnapshot.connectionState ==
// // // // // // // // // // // // // // //                               ConnectionState.waiting) {
// // // // // // // // // // // // // // //                             return const CircularProgressIndicator();
// // // // // // // // // // // // // // //                           } else if (userSnapshot.hasError) {
// // // // // // // // // // // // // // //                             return ListTile(
// // // // // // // // // // // // // // //                               title: Text('Error loading user data'),
// // // // // // // // // // // // // // //                               subtitle: Text(offer.category),
// // // // // // // // // // // // // // //                               trailing: Text('\$${offer.price}'),
// // // // // // // // // // // // // // //                             );
// // // // // // // // // // // // // // //                           } else if (!userSnapshot.hasData) {
// // // // // // // // // // // // // // //                             return ListTile(
// // // // // // // // // // // // // // //                               title: Text('User data not available'),
// // // // // // // // // // // // // // //                               subtitle: Text(offer.category),
// // // // // // // // // // // // // // //                               trailing: Text('\$${offer.price}'),
// // // // // // // // // // // // // // //                             );
// // // // // // // // // // // // // // //                           } else {
// // // // // // // // // // // // // // //                             final user = userSnapshot.data!;
// // // // // // // // // // // // // // //                             return OfferCard(
// // // // // // // // // // // // // // //                               userName: user.userName,
// // // // // // // // // // // // // // //                               email: user.email,
// // // // // // // // // // // // // // //                               category: offer.category,
// // // // // // // // // // // // // // //                               price: offer.price,
// // // // // // // // // // // // // // //                               imageUrl: user.imageUrl,
// // // // // // // // // // // // // // //                               onTap: () => _showOfferDetails(offer, user),
// // // // // // // // // // // // // // //                               onAccept: () => _acceptOffer(offer.id),
// // // // // // // // // // // // // // //                             );
// // // // // // // // // // // // // // //                           }
// // // // // // // // // // // // // // //                         },
// // // // // // // // // // // // // // //                       );
// // // // // // // // // // // // // // //                     }
// // // // // // // // // // // // // // //                   },
// // // // // // // // // // // // // // //                 );
// // // // // // // // // // // // // // //               },
// // // // // // // // // // // // // // //             );
// // // // // // // // // // // // // // //           }
// // // // // // // // // // // // // // //         },
// // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // //   }

// // // // // // // // // // // // // // //   void _showOfferDetails(VendorOffer offer, User user) {
// // // // // // // // // // // // // // //     showModalBottomSheet(
// // // // // // // // // // // // // // //       context: context,
// // // // // // // // // // // // // // //       shape: const RoundedRectangleBorder(
// // // // // // // // // // // // // // //         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // //       builder: (context) {
// // // // // // // // // // // // // // //         return Padding(
// // // // // // // // // // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // // // // // // // // // //           child: Column(
// // // // // // // // // // // // // // //             mainAxisSize: MainAxisSize.min,
// // // // // // // // // // // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // // // // //             children: [
// // // // // // // // // // // // // // //               Text(
// // // // // // // // // // // // // // //                 user.userName,
// // // // // // // // // // // // // // //                 style:
// // // // // // // // // // // // // // //                     const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // //               const SizedBox(height: 8),
// // // // // // // // // // // // // // //               Text(user.email, style: const TextStyle(color: Colors.grey)),
// // // // // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // // // // //               Text('Price: \$${offer.price}',
// // // // // // // // // // // // // // //                   style: const TextStyle(fontSize: 18)),
// // // // // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // // // // //               Text('Note:',
// // // // // // // // // // // // // // //                   style: const TextStyle(
// // // // // // // // // // // // // // //                       fontSize: 16, fontWeight: FontWeight.bold)),
// // // // // // // // // // // // // // //               Text(offer.note ?? 'No note available.'),
// // // // // // // // // // // // // // //             ],
// // // // // // // // // // // // // // //           ),
// // // // // // // // // // // // // // //         );
// // // // // // // // // // // // // // //       },
// // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // //   }

// // // // // // // // // // // // // // //   Future<void> _acceptOffer(String offerId) async {
// // // // // // // // // // // // // // //     try {
// // // // // // // // // // // // // // //       final response = await http.put(
// // // // // // // // // // // // // // //         Uri.parse(
// // // // // // // // // // // // // // //             'https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted/$offerId'),
// // // // // // // // // // // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // // // // // // // // // // //       );

// // // // // // // // // // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // // // // //         setState(() {
// // // // // // // // // // // // // // //           offers = fetchVendorOffers(); // Refresh offers after updating
// // // // // // // // // // // // // // //         });
// // // // // // // // // // // // // // //       } else {
// // // // // // // // // // // // // // //         throw Exception('Failed to update offer state');
// // // // // // // // // // // // // // //       }
// // // // // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // // // // //       // Show error message
// // // // // // // // // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // // // // // // // //         SnackBar(content: Text('Error updating offer: $e')),
// // // // // // // // // // // // // // //       );
// // // // // // // // // // // // // // //     }
// // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // class OfferCard extends StatelessWidget {
// // // // // // // // // // // // // // //   final String userName;
// // // // // // // // // // // // // // //   final String email;
// // // // // // // // // // // // // // //   final String category;
// // // // // // // // // // // // // // //   final double price;
// // // // // // // // // // // // // // //   final String? imageUrl;
// // // // // // // // // // // // // // //   final VoidCallback onTap;
// // // // // // // // // // // // // // //   final VoidCallback onAccept;

// // // // // // // // // // // // // // //   const OfferCard({
// // // // // // // // // // // // // // //     required this.userName,
// // // // // // // // // // // // // // //     required this.email,
// // // // // // // // // // // // // // //     required this.category,
// // // // // // // // // // // // // // //     required this.price,
// // // // // // // // // // // // // // //     this.imageUrl,
// // // // // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // // // // //     required this.onAccept,
// // // // // // // // // // // // // // //     Key? key,
// // // // // // // // // // // // // // //   }) : super(key: key);

// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // //     return Card(
// // // // // // // // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // // // // // // // //       elevation: 4,
// // // // // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // // // // //         leading: imageUrl != null
// // // // // // // // // // // // // // //             ? CircleAvatar(
// // // // // // // // // // // // // // //                 backgroundImage: NetworkImage(imageUrl!),
// // // // // // // // // // // // // // //               )
// // // // // // // // // // // // // // //             : const CircleAvatar(
// // // // // // // // // // // // // // //                 child: Icon(Icons.person),
// // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // //         title:
// // // // // // // // // // // // // // //             Text(userName, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // // // // //         subtitle: Column(
// // // // // // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // //             Text(email),
// // // // // // // // // // // // // // //             Text(category),
// // // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // //         trailing: Column(
// // // // // // // // // // // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // //             Text('\$$price',
// // // // // // // // // // // // // // //                 style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // // // // //             ElevatedButton(
// // // // // // // // // // // // // // //               onPressed: onAccept,
// // // // // // // // // // // // // // //               child: const Text('Accept'),
// // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // class VendorOffer {
// // // // // // // // // // // // // // //   final String id;
// // // // // // // // // // // // // // //   final String vendorProfileId;
// // // // // // // // // // // // // // //   final String vendorUserId;
// // // // // // // // // // // // // // //   final String category;
// // // // // // // // // // // // // // //   final double price;
// // // // // // // // // // // // // // //   final bool state;
// // // // // // // // // // // // // // //   final String? note;

// // // // // // // // // // // // // // //   VendorOffer({
// // // // // // // // // // // // // // //     required this.id,
// // // // // // // // // // // // // // //     required this.vendorProfileId,
// // // // // // // // // // // // // // //     required this.vendorUserId,
// // // // // // // // // // // // // // //     required this.category,
// // // // // // // // // // // // // // //     required this.price,
// // // // // // // // // // // // // // //     required this.state,
// // // // // // // // // // // // // // //     this.note,
// // // // // // // // // // // // // // //   });

// // // // // // // // // // // // // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // // // // //     return VendorOffer(
// // // // // // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // // // // // //       vendorProfileId: json['vendorProfileId'] ?? '',
// // // // // // // // // // // // // // //       vendorUserId: json['vendorUserId'] ?? '', // Ensure this field is used
// // // // // // // // // // // // // // //       category: json['category'] ?? 'Unknown',
// // // // // // // // // // // // // // //       price: json['price']?.toDouble() ?? 0.0,
// // // // // // // // // // // // // // //       state: json['state'] ?? false,
// // // // // // // // // // // // // // //       note: json['note'],
// // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // class VenderProfileDto {
// // // // // // // // // // // // // // //   final String id;
// // // // // // // // // // // // // // //   final String userId;
// // // // // // // // // // // // // // //   final String categoryId;
// // // // // // // // // // // // // // //   final String? bio;
// // // // // // // // // // // // // // //   final int? experience;

// // // // // // // // // // // // // // //   VenderProfileDto({
// // // // // // // // // // // // // // //     required this.id,
// // // // // // // // // // // // // // //     required this.userId,
// // // // // // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // // // // // //     this.bio,
// // // // // // // // // // // // // // //     this.experience,
// // // // // // // // // // // // // // //   });

// // // // // // // // // // // // // // //   factory VenderProfileDto.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // // // // //     return VenderProfileDto(
// // // // // // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // // // // // //       userId: json['userId'] ?? '',
// // // // // // // // // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // // // // // // // // //       bio: json['bio'],
// // // // // // // // // // // // // // //       experience: json['experience'],
// // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // class User {
// // // // // // // // // // // // // // //   final String id;
// // // // // // // // // // // // // // //   final String userName; // updated field
// // // // // // // // // // // // // // //   final String email;
// // // // // // // // // // // // // // //   final String? imageUrl;

// // // // // // // // // // // // // // //   User({
// // // // // // // // // // // // // // //     required this.id,
// // // // // // // // // // // // // // //     required this.userName,
// // // // // // // // // // // // // // //     required this.email,
// // // // // // // // // // // // // // //     this.imageUrl,
// // // // // // // // // // // // // // //   });

// // // // // // // // // // // // // // //   factory User.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // // // // //     return User(
// // // // // // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // // // // // //       userName: json['userName'] ?? '',
// // // // // // // // // // // // // // //       email: json['email'] ?? '',
// // // // // // // // // // // // // // //       imageUrl: json['imageUrl'],
// // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // Future<VenderProfileDto> fetchVenderProfile(String vendorProfileId) async {
// // // // // // // // // // // // // // //   final response = await http.get(Uri.parse(
// // // // // // // // // // // // // // //       'https://192.168.0.109:7127/api/VenderProfile/$vendorProfileId'));

// // // // // // // // // // // // // // //   if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // // // // //     final Map<String, dynamic> data = json.decode(response.body);
// // // // // // // // // // // // // // //     return VenderProfileDto.fromJson(data);
// // // // // // // // // // // // // // //   } else {
// // // // // // // // // // // // // // //     throw Exception('Failed to load vendor profile');
// // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // Future<User> fetchUserDetails(String userId) async {
// // // // // // // // // // // // // // //   final response =
// // // // // // // // // // // // // // //       await http.get(Uri.parse('https://192.168.0.109:7127/api/User/$userId'));

// // // // // // // // // // // // // // //   if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // // // // //     final Map<String, dynamic> data = json.decode(response.body);
// // // // // // // // // // // // // // //     return User.fromJson(data);
// // // // // // // // // // // // // // //   } else {
// // // // // // // // // // // // // // //     throw Exception('Failed to load user details');
// // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // // // // import 'dart:convert';
// // // // // // // // // // // // // // import 'package:http/http.dart' as http;

// // // // // // // // // // // // // // class OrdersScreen extends StatefulWidget {
// // // // // // // // // // // // // //   final String userId;

// // // // // // // // // // // // // //   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // // class _OrdersScreenState extends State<OrdersScreen>
// // // // // // // // // // // // // //     with SingleTickerProviderStateMixin {
// // // // // // // // // // // // // //   late TabController _tabController;
// // // // // // // // // // // // // //   late Future<List<Mission>> missions;

// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   void initState() {
// // // // // // // // // // // // // //     super.initState();
// // // // // // // // // // // // // //     _tabController = TabController(length: 2, vsync: this);
// // // // // // // // // // // // // //     missions = fetchMissions();
// // // // // // // // // // // // // //   }

// // // // // // // // // // // // // //   Future<List<Mission>> fetchMissions() async {
// // // // // // // // // // // // // //     try {
// // // // // // // // // // // // // //       final response = await http.get(Uri.parse(
// // // // // // // // // // // // // //           'https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));

// // // // // // // // // // // // // //       if (response.statusCode == 200  || response.statusCode == 201 ) {
// // // // // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // // // // //         return data.map((json) => Mission.fromJson(json)).toList();
// // // // // // // // // // // // // //       } else {
// // // // // // // // // // // // // //         throw Exception('Failed to load missions');
// // // // // // // // // // // // // //       }
// // // // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // // // //       throw Exception('Error fetching missions: $e');
// // // // // // // // // // // // // //     }
// // // // // // // // // // // // // //   }

// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // //         title: const Text(
// // // // // // // // // // // // // //           'User Missions',
// // // // // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // // // // //         elevation: 1,
// // // // // // // // // // // // // //         bottom: TabBar(
// // // // // // // // // // // // // //           controller: _tabController,
// // // // // // // // // // // // // //           labelColor: Colors.blue,
// // // // // // // // // // // // // //           unselectedLabelColor: Colors.grey,
// // // // // // // // // // // // // //           indicatorColor: Colors.blue,
// // // // // // // // // // // // // //           tabs: const [
// // // // // // // // // // // // // //             Tab(text: 'All Missions'),
// // // // // // // // // // // // // //             Tab(text: 'Scheduled Missions'),
// // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // //       body: FutureBuilder<List<Mission>>(
// // // // // // // // // // // // // //         future: missions,
// // // // // // // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // // // // // // //             return const Center(child: Text('No missions available'));
// // // // // // // // // // // // // //           } else {
// // // // // // // // // // // // // //             final allMissions = snapshot.data!;
// // // // // // // // // // // // // //             final scheduledMissions = allMissions
// // // // // // // // // // // // // //                 .where((mission) => mission.state == MissionState.Scheduled)
// // // // // // // // // // // // // //                 .toList();

// // // // // // // // // // // // // //             return TabBarView(
// // // // // // // // // // // // // //               controller: _tabController,
// // // // // // // // // // // // // //               children: [
// // // // // // // // // // // // // //                 _buildMissionList(allMissions),
// // // // // // // // // // // // // //                 _buildMissionList(scheduledMissions),
// // // // // // // // // // // // // //               ],
// // // // // // // // // // // // // //             );
// // // // // // // // // // // // // //           }
// // // // // // // // // // // // // //         },
// // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // //     );
// // // // // // // // // // // // // //   }

// // // // // // // // // // // // // //   Widget _buildMissionList(List<Mission> missions) {
// // // // // // // // // // // // // //     return ListView.builder(
// // // // // // // // // // // // // //       itemCount: missions.length,
// // // // // // // // // // // // // //       padding: const EdgeInsets.all(16),
// // // // // // // // // // // // // //       itemBuilder: (context, index) {
// // // // // // // // // // // // // //         final mission = missions[index];
// // // // // // // // // // // // // //         return MissionCard(
// // // // // // // // // // // // // //           mission: mission,
// // // // // // // // // // // // // //           onTap: () => _showVendorOffers(mission),
// // // // // // // // // // // // // //         );
// // // // // // // // // // // // // //       },
// // // // // // // // // // // // // //     );
// // // // // // // // // // // // // //   }

// // // // // // // // // // // // // //   void _showVendorOffers(Mission mission) {
// // // // // // // // // // // // // //     Navigator.push(
// // // // // // // // // // // // // //       context,
// // // // // // // // // // // // // //       MaterialPageRoute(
// // // // // // // // // // // // // //         builder: (context) => VendorOffersScreen(missionId: mission.id),
// // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // //     );
// // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // // class MissionCard extends StatelessWidget {
// // // // // // // // // // // // // //   final Mission mission;
// // // // // // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // // // // // //   const MissionCard({
// // // // // // // // // // // // // //     required this.mission,
// // // // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // // // //     Key? key,
// // // // // // // // // // // // // //   }) : super(key: key);

// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // //     return Card(
// // // // // // // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // // // // // // //       elevation: 4,
// // // // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // // // //         title: Text(mission.name,
// // // // // // // // // // // // // //             style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // // // //         subtitle: Column(
// // // // // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // //             Text('State: ${mission.state}'),
// // // // // // // // // // // // // //             Text('Day: ${mission.day}'),
// // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // //         trailing: mission.image != null
// // // // // // // // // // // // // //             ? Image.network(mission.image!,
// // // // // // // // // // // // // //                 width: 50, height: 50, fit: BoxFit.cover)
// // // // // // // // // // // // // //             : const SizedBox.shrink(),
// // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // //     );
// // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // // class Mission {
// // // // // // // // // // // // // //   final String id;
// // // // // // // // // // // // // //   final String name;
// // // // // // // // // // // // // //   final MissionState state;
// // // // // // // // // // // // // //   final String categoryId;
// // // // // // // // // // // // // //   final String userId;
// // // // // // // // // // // // // //   final DateTime day;
// // // // // // // // // // // // // //   final String location;
// // // // // // // // // // // // // //   final String note;
// // // // // // // // // // // // // //   final String? image;
// // // // // // // // // // // // // //   final String? details;
// // // // // // // // // // // // // //   final int? room;
// // // // // // // // // // // // // //   final String? grade;
// // // // // // // // // // // // // //   final String? hours;

// // // // // // // // // // // // // //   Mission({
// // // // // // // // // // // // // //     required this.id,
// // // // // // // // // // // // // //     required this.name,
// // // // // // // // // // // // // //     required this.state,
// // // // // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // // // // //     required this.userId,
// // // // // // // // // // // // // //     required this.day,
// // // // // // // // // // // // // //     required this.location,
// // // // // // // // // // // // // //     required this.note,
// // // // // // // // // // // // // //     this.image,
// // // // // // // // // // // // // //     this.details,
// // // // // // // // // // // // // //     this.room,
// // // // // // // // // // // // // //     this.grade,
// // // // // // // // // // // // // //     this.hours,
// // // // // // // // // // // // // //   });

// // // // // // // // // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // // // //     return Mission(
// // // // // // // // // // // // // //       id: json['Id'] ?? '',
// // // // // // // // // // // // // //       name: json['name'] ?? '',
// // // // // // // // // // // // // //       state: MissionState.values[json['state'] ?? 0],
// // // // // // // // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // // // // // // // //       userId: json['userId'] ?? '',
// // // // // // // // // // // // // //       day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
// // // // // // // // // // // // // //       location: json['location'] ?? '',
// // // // // // // // // // // // // //       note: json['note'] ?? '',
// // // // // // // // // // // // // //       image: json['image'],
// // // // // // // // // // // // // //       details: json['details'],
// // // // // // // // // // // // // //       room: json['room'],
// // // // // // // // // // // // // //       grade: json['grade'],
// // // // // // // // // // // // // //       hours: json['hours'],
// // // // // // // // // // // // // //     );
// // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // // enum MissionState {
// // // // // // // // // // // // // //   Pending,
// // // // // // // // // // // // // //   Scheduled,
// // // // // // // // // // // // // //   Completed,
// // // // // // // // // // // // // //   Cancelled,
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // // class VendorOffersScreen extends StatefulWidget {
// // // // // // // // // // // // // //   final String missionId;

// // // // // // // // // // // // // //   const VendorOffersScreen({required this.missionId, Key? key})
// // // // // // // // // // // // // //       : super(key: key);

// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// // // // // // // // // // // // // //   late Future<List<VendorOffer>> offers;

// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   void initState() {
// // // // // // // // // // // // // //     super.initState();
// // // // // // // // // // // // // //     offers = fetchVendorOffers();
// // // // // // // // // // // // // //   }

// // // // // // // // // // // // // //   Future<List<VendorOffer>> fetchVendorOffers() async {
// // // // // // // // // // // // // //     try {
// // // // // // // // // // // // // //       final response = await http.get(Uri.parse(
// // // // // // // // // // // // // //           'https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));
// // // // // // // // // // // // // //            print(json.decode(response.body));
// // // // // // // // // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // // // // //         return data.map((json) => VendorOffer.fromJson(json)).toList();
// // // // // // // // // // // // // //       } else {
// // // // // // // // // // // // // //         throw Exception('Failed to load offers');
// // // // // // // // // // // // // //       }
// // // // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // // // //       throw Exception('Error fetching offers: $e');
// // // // // // // // // // // // // //     }
// // // // // // // // // // // // // //   }

// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // //         title: const Text(
// // // // // // // // // // // // // //           'Vendor Offers',
// // // // // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // // // // //         elevation: 1,
// // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // //       body: FutureBuilder<List<VendorOffer>>(
// // // // // // // // // // // // // //         future: offers,
// // // // // // // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // // // // // // //             return const Center(child: Text('No offers available'));
// // // // // // // // // // // // // //           } else {
// // // // // // // // // // // // // //             final allOffers = snapshot.data!;
// // // // // // // // // // // // // //             return ListView.builder(
// // // // // // // // // // // // // //               itemCount: allOffers.length,
// // // // // // // // // // // // // //               padding: const EdgeInsets.all(16),
// // // // // // // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // // // // // // //                 final offer = allOffers[index];
// // // // // // // // // // // // // //                 return FutureBuilder<VenderProfileDto>(
// // // // // // // // // // // // // //                   future: fetchVenderProfile(offer.vendorProfileId),
// // // // // // // // // // // // // //                   builder: (context, profileSnapshot) {
// // // // // // // // // // // // // //                     if (profileSnapshot.connectionState ==
// // // // // // // // // // // // // //                         ConnectionState.waiting) {
// // // // // // // // // // // // // //                       return const CircularProgressIndicator();
// // // // // // // // // // // // // //                     } else if (profileSnapshot.hasError) {
// // // // // // // // // // // // // //                       return ListTile(
// // // // // // // // // // // // // //                         title: Text('Error loading profile data'),
// // // // // // // // // // // // // //                         subtitle: Text(offer.category),
// // // // // // // // // // // // // //                         trailing: Text('\$${offer.price}'),
// // // // // // // // // // // // // //                       );
// // // // // // // // // // // // // //                     } else if (!profileSnapshot.hasData) {
// // // // // // // // // // // // // //                       return ListTile(
// // // // // // // // // // // // // //                         title: Text('Profile data not available'),
// // // // // // // // // // // // // //                         subtitle: Text(offer.category),
// // // // // // // // // // // // // //                         trailing: Text('\$${offer.price}'),
// // // // // // // // // // // // // //                       );
// // // // // // // // // // // // // //                     } else {
// // // // // // // // // // // // // //                       final profile = profileSnapshot.data!;
// // // // // // // // // // // // // //                       return FutureBuilder<User>(
// // // // // // // // // // // // // //                         future: fetchUserDetails(profile.userId),
// // // // // // // // // // // // // //                         builder: (context, userSnapshot) {
// // // // // // // // // // // // // //                           if (userSnapshot.connectionState ==
// // // // // // // // // // // // // //                               ConnectionState.waiting) {
// // // // // // // // // // // // // //                             return const CircularProgressIndicator();
// // // // // // // // // // // // // //                           } else if (userSnapshot.hasError) {
// // // // // // // // // // // // // //                             return ListTile(
// // // // // // // // // // // // // //                               title: Text('Error loading user data'),
// // // // // // // // // // // // // //                               subtitle: Text(offer.category),
// // // // // // // // // // // // // //                               trailing: Text('\$${offer.price}'),
// // // // // // // // // // // // // //                             );
// // // // // // // // // // // // // //                           } else if (!userSnapshot.hasData) {
// // // // // // // // // // // // // //                             return ListTile(
// // // // // // // // // // // // // //                               title: Text('User data not available'),
// // // // // // // // // // // // // //                               subtitle: Text(offer.category),
// // // // // // // // // // // // // //                               trailing: Text('\$${offer.price}'),
// // // // // // // // // // // // // //                             );
// // // // // // // // // // // // // //                           } else {
// // // // // // // // // // // // // //                             final user = userSnapshot.data!;
// // // // // // // // // // // // // //                             return OfferCard(
// // // // // // // // // // // // // //                               userName: user.userName,
// // // // // // // // // // // // // //                               email: user.email,
// // // // // // // // // // // // // //                               category: offer.category,
// // // // // // // // // // // // // //                               price: offer.price,
// // // // // // // // // // // // // //                               imageUrl: user.imageUrl,
// // // // // // // // // // // // // //                               onTap: () => _showOfferDetails(offer, user),
// // // // // // // // // // // // // //                               onAccept: () => _acceptOffer(offer.id),
// // // // // // // // // // // // // //                             );
// // // // // // // // // // // // // //                           }
// // // // // // // // // // // // // //                         },
// // // // // // // // // // // // // //                       );
// // // // // // // // // // // // // //                     }
// // // // // // // // // // // // // //                   },
// // // // // // // // // // // // // //                 );
// // // // // // // // // // // // // //               },
// // // // // // // // // // // // // //             );
// // // // // // // // // // // // // //           }
// // // // // // // // // // // // // //         },
// // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // //     );
// // // // // // // // // // // // // //   }

// // // // // // // // // // // // // //   void _showOfferDetails(VendorOffer offer, User user) {
// // // // // // // // // // // // // //     showModalBottomSheet(
// // // // // // // // // // // // // //       context: context,
// // // // // // // // // // // // // //       shape: const RoundedRectangleBorder(
// // // // // // // // // // // // // //         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // //       builder: (context) {
// // // // // // // // // // // // // //         return Padding(
// // // // // // // // // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // // // // // // // // //           child: Column(
// // // // // // // // // // // // // //             mainAxisSize: MainAxisSize.min,
// // // // // // // // // // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // // // //             children: [
// // // // // // // // // // // // // //               Text(
// // // // // // // // // // // // // //                 user.userName,
// // // // // // // // // // // // // //                 style:
// // // // // // // // // // // // // //                     const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // //               const SizedBox(height: 8),
// // // // // // // // // // // // // //               Text(user.email, style: const TextStyle(color: Colors.grey)),
// // // // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // // // //               Text('Price: \$${offer.price}',
// // // // // // // // // // // // // //                   style: const TextStyle(fontSize: 18)),
// // // // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // // // //               Text('Note:',
// // // // // // // // // // // // // //                   style: const TextStyle(
// // // // // // // // // // // // // //                       fontSize: 16, fontWeight: FontWeight.bold)),
// // // // // // // // // // // // // //               Text(offer.note ?? 'No note available.'),
// // // // // // // // // // // // // //             ],
// // // // // // // // // // // // // //           ),
// // // // // // // // // // // // // //         );
// // // // // // // // // // // // // //       },
// // // // // // // // // // // // // //     );
// // // // // // // // // // // // // //   }

// // // // // // // // // // // // // //   Future<void> _acceptOffer(String offerId) async {
// // // // // // // // // // // // // //     try {
// // // // // // // // // // // // // //       final response = await http.put(
// // // // // // // // // // // // // //         Uri.parse(
// // // // // // // // // // // // // //             'https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted/$offerId'),
// // // // // // // // // // // // // //         headers: {'Content-Type': 'application/json'},

// // // // // // // // // // // // // //       );
// // // // // // // // // // // // // //         print(json.decode(response.body));
// // // // // // // // // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // // // //         setState(() {
// // // // // // // // // // // // // //           offers = fetchVendorOffers(); // Refresh offers after updating
// // // // // // // // // // // // // //         });
// // // // // // // // // // // // // //       } else {
// // // // // // // // // // // // // //         throw Exception('Failed to update offer state');
// // // // // // // // // // // // // //       }
// // // // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // // // //       // Show error message
// // // // // // // // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // // // // // // //         SnackBar(content: Text('Error updating offer: $e')),
// // // // // // // // // // // // // //       );
// // // // // // // // // // // // // //     }
// // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // // class OfferCard extends StatelessWidget {
// // // // // // // // // // // // // //   final String userName;
// // // // // // // // // // // // // //   final String email;
// // // // // // // // // // // // // //   final String category;
// // // // // // // // // // // // // //   final double price;
// // // // // // // // // // // // // //   final String? imageUrl;
// // // // // // // // // // // // // //   final VoidCallback onTap;
// // // // // // // // // // // // // //   final VoidCallback onAccept;

// // // // // // // // // // // // // //   const OfferCard({
// // // // // // // // // // // // // //     required this.userName,
// // // // // // // // // // // // // //     required this.email,
// // // // // // // // // // // // // //     required this.category,
// // // // // // // // // // // // // //     required this.price,
// // // // // // // // // // // // // //     this.imageUrl,
// // // // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // // // //     required this.onAccept,
// // // // // // // // // // // // // //     Key? key,
// // // // // // // // // // // // // //   }) : super(key: key);

// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // //     return Card(
// // // // // // // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // // // // // // //       elevation: 4,
// // // // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // // // //         leading: imageUrl != null
// // // // // // // // // // // // // //             ? CircleAvatar(
// // // // // // // // // // // // // //                 backgroundImage: NetworkImage(imageUrl!),
// // // // // // // // // // // // // //               )
// // // // // // // // // // // // // //             : const CircleAvatar(
// // // // // // // // // // // // // //                 child: Icon(Icons.person),
// // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // //         title:
// // // // // // // // // // // // // //             Text(userName, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // // // //         subtitle: Column(
// // // // // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // //             Text(email),
// // // // // // // // // // // // // //             Text(category),
// // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // //         trailing: Column(
// // // // // // // // // // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // //             Text('\$$price',
// // // // // // // // // // // // // //                 style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // // // //             ElevatedButton(
// // // // // // // // // // // // // //               onPressed: onAccept,
// // // // // // // // // // // // // //               child: const Text('Accept'),
// // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // //     );
// // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // // class VendorOffer {
// // // // // // // // // // // // // //   final String id;
// // // // // // // // // // // // // //   final String vendorProfileId;
// // // // // // // // // // // // // //   final String vendorUserId;
// // // // // // // // // // // // // //   final String category;
// // // // // // // // // // // // // //   final double price;
// // // // // // // // // // // // // //   final bool state;
// // // // // // // // // // // // // //   final String? note;

// // // // // // // // // // // // // //   VendorOffer({
// // // // // // // // // // // // // //     required this.id,
// // // // // // // // // // // // // //     required this.vendorProfileId,
// // // // // // // // // // // // // //     required this.vendorUserId,
// // // // // // // // // // // // // //     required this.category,
// // // // // // // // // // // // // //     required this.price,
// // // // // // // // // // // // // //     required this.state,
// // // // // // // // // // // // // //     this.note,
// // // // // // // // // // // // // //   });

// // // // // // // // // // // // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // // // //     return VendorOffer(
// // // // // // // // // // // // // //       id: json['Id'] ?? '',
// // // // // // // // // // // // // //       vendorProfileId: json['vendorProfileId'] ?? '',
// // // // // // // // // // // // // //       vendorUserId: json['vendorUserId'] ?? '', // Ensure this field is used
// // // // // // // // // // // // // //       category: json['category'] ?? 'Unknown',
// // // // // // // // // // // // // //       price: json['price']?.toDouble() ?? 0.0,
// // // // // // // // // // // // // //       state: json['state'] ?? false,
// // // // // // // // // // // // // //       note: json['note'],
// // // // // // // // // // // // // //     );
// // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // // class VenderProfileDto {
// // // // // // // // // // // // // //   final String id;
// // // // // // // // // // // // // //   final String userId;
// // // // // // // // // // // // // //   final String categoryId;
// // // // // // // // // // // // // //   final String? bio;
// // // // // // // // // // // // // //   final int? experience;

// // // // // // // // // // // // // //   VenderProfileDto({
// // // // // // // // // // // // // //     required this.id,
// // // // // // // // // // // // // //     required this.userId,
// // // // // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // // // // //     this.bio,
// // // // // // // // // // // // // //     this.experience,
// // // // // // // // // // // // // //   });

// // // // // // // // // // // // // //   factory VenderProfileDto.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // // // //     return VenderProfileDto(
// // // // // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // // // // //       userId: json['userId'] ?? '',
// // // // // // // // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // // // // // // // //       bio: json['bio'],
// // // // // // // // // // // // // //       experience: json['experience'],
// // // // // // // // // // // // // //     );
// // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // // class User {
// // // // // // // // // // // // // //   final String id;
// // // // // // // // // // // // // //   final String userName; // updated field
// // // // // // // // // // // // // //   final String email;
// // // // // // // // // // // // // //   final String? imageUrl;

// // // // // // // // // // // // // //   User({
// // // // // // // // // // // // // //     required this.id,
// // // // // // // // // // // // // //     required this.userName,
// // // // // // // // // // // // // //     required this.email,
// // // // // // // // // // // // // //     this.imageUrl,
// // // // // // // // // // // // // //   });

// // // // // // // // // // // // // //   factory User.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // // // //     return User(
// // // // // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // // // // //       userName: json['userName'] ?? '',
// // // // // // // // // // // // // //       email: json['email'] ?? '',
// // // // // // // // // // // // // //       imageUrl: json['imageUrl'],
// // // // // // // // // // // // // //     );
// // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // // Future<VenderProfileDto> fetchVenderProfile(String vendorProfileId) async {
// // // // // // // // // // // // // //   final response = await http.get(Uri.parse(
// // // // // // // // // // // // // //       'https://192.168.0.109:7127/api/VenderProfile/$vendorProfileId'));
// // // // // // // // // // // // // //        print(json.decode(response.body));
// // // // // // // // // // // // // //   if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // // // //     final Map<String, dynamic> data = json.decode(response.body);
// // // // // // // // // // // // // //     return VenderProfileDto.fromJson(data);
// // // // // // // // // // // // // //   } else {
// // // // // // // // // // // // // //     throw Exception('Failed to load vendor profile');
// // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // // Future<User> fetchUserDetails(String userId) async {
// // // // // // // // // // // // // //   final response =
// // // // // // // // // // // // // //       await http.get(Uri.parse('https://192.168.0.109:7127/api/User/$userId'));
// // // // // // // // // // // // // //       print(json.decode(response.body));

// // // // // // // // // // // // // //   if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // // // //     final Map<String, dynamic> data = json.decode(response.body);
// // // // // // // // // // // // // //     return User.fromJson(data);
// // // // // // // // // // // // // //   } else {
// // // // // // // // // // // // // //     throw Exception('Failed to load user details');
// // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // }
// // // // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // // // import 'dart:convert';
// // // // // // // // // // // // // import 'package:http/http.dart' as http;

// // // // // // // // // // // // // class OrdersScreen extends StatefulWidget {
// // // // // // // // // // // // //   final String userId;

// // // // // // // // // // // // //   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

// // // // // // // // // // // // //   @override
// // // // // // // // // // // // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // // // // // // // // // // // }

// // // // // // // // // // // // // class _OrdersScreenState extends State<OrdersScreen>
// // // // // // // // // // // // //     with SingleTickerProviderStateMixin {
// // // // // // // // // // // // //   late TabController _tabController;
// // // // // // // // // // // // //   late Future<List<Mission>> missions;

// // // // // // // // // // // // //   @override
// // // // // // // // // // // // //   void initState() {
// // // // // // // // // // // // //     super.initState();
// // // // // // // // // // // // //     _tabController = TabController(length: 2, vsync: this);
// // // // // // // // // // // // //     missions = fetchMissions();
// // // // // // // // // // // // //   }

// // // // // // // // // // // // //   Future<List<Mission>> fetchMissions() async {
// // // // // // // // // // // // //     try {
// // // // // // // // // // // // //       final response = await http.get(Uri.parse(
// // // // // // // // // // // // //           'https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));

// // // // // // // // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // // // //         return data.map((json) => Mission.fromJson(json)).toList();
// // // // // // // // // // // // //       } else {
// // // // // // // // // // // // //         throw Exception('Failed to load missions');
// // // // // // // // // // // // //       }
// // // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // // //       throw Exception('Error fetching missions: $e');
// // // // // // // // // // // // //     }
// // // // // // // // // // // // //   }

// // // // // // // // // // // // //   @override
// // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // //         title: const Text(
// // // // // // // // // // // // //           'User Missions',
// // // // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // // // //         ),
// // // // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // // // //         elevation: 1,
// // // // // // // // // // // // //         bottom: TabBar(
// // // // // // // // // // // // //           controller: _tabController,
// // // // // // // // // // // // //           labelColor: Colors.blue,
// // // // // // // // // // // // //           unselectedLabelColor: Colors.grey,
// // // // // // // // // // // // //           indicatorColor: Colors.blue,
// // // // // // // // // // // // //           tabs: const [
// // // // // // // // // // // // //             Tab(text: 'All Missions'),
// // // // // // // // // // // // //             Tab(text: 'Scheduled Missions'),
// // // // // // // // // // // // //           ],
// // // // // // // // // // // // //         ),
// // // // // // // // // // // // //       ),
// // // // // // // // // // // // //       body: FutureBuilder<List<Mission>>(
// // // // // // // // // // // // //         future: missions,
// // // // // // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // // // // // //             return const Center(child: Text('No missions available'));
// // // // // // // // // // // // //           } else {
// // // // // // // // // // // // //             final allMissions = snapshot.data!;
// // // // // // // // // // // // //             final scheduledMissions = allMissions
// // // // // // // // // // // // //                 .where((mission) => mission.state == MissionState.Scheduled)
// // // // // // // // // // // // //                 .toList();

// // // // // // // // // // // // //             return TabBarView(
// // // // // // // // // // // // //               controller: _tabController,
// // // // // // // // // // // // //               children: [
// // // // // // // // // // // // //                 _buildMissionList(allMissions),
// // // // // // // // // // // // //                 _buildMissionList(scheduledMissions),
// // // // // // // // // // // // //               ],
// // // // // // // // // // // // //             );
// // // // // // // // // // // // //           }
// // // // // // // // // // // // //         },
// // // // // // // // // // // // //       ),
// // // // // // // // // // // // //     );
// // // // // // // // // // // // //   }

// // // // // // // // // // // // //   Widget _buildMissionList(List<Mission> missions) {
// // // // // // // // // // // // //     return ListView.builder(
// // // // // // // // // // // // //       itemCount: missions.length,
// // // // // // // // // // // // //       padding: const EdgeInsets.all(16),
// // // // // // // // // // // // //       itemBuilder: (context, index) {
// // // // // // // // // // // // //         final mission = missions[index];
// // // // // // // // // // // // //         return MissionCard(
// // // // // // // // // // // // //           mission: mission,
// // // // // // // // // // // // //           onTap: () => _showVendorOffers(mission),
// // // // // // // // // // // // //         );
// // // // // // // // // // // // //       },
// // // // // // // // // // // // //     );
// // // // // // // // // // // // //   }

// // // // // // // // // // // // //   void _showVendorOffers(Mission mission) {
// // // // // // // // // // // // //     Navigator.push(
// // // // // // // // // // // // //       context,
// // // // // // // // // // // // //       MaterialPageRoute(
// // // // // // // // // // // // //         builder: (context) => VendorOffersScreen(missionId: mission.id),
// // // // // // // // // // // // //       ),
// // // // // // // // // // // // //     );
// // // // // // // // // // // // //   }
// // // // // // // // // // // // // }

// // // // // // // // // // // // // class MissionCard extends StatelessWidget {
// // // // // // // // // // // // //   final Mission mission;
// // // // // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // // // // //   const MissionCard({
// // // // // // // // // // // // //     required this.mission,
// // // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // // //     Key? key,
// // // // // // // // // // // // //   }) : super(key: key);

// // // // // // // // // // // // //   @override
// // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // //     return Card(
// // // // // // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // // // // // //       elevation: 4,
// // // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // // //         title: Text(mission.name,
// // // // // // // // // // // // //             style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // // //         subtitle: Column(
// // // // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // // //           children: [
// // // // // // // // // // // // //             Text('State: ${mission.state}'),
// // // // // // // // // // // // //             Text('Day: ${mission.day}'),
// // // // // // // // // // // // //           ],
// // // // // // // // // // // // //         ),
// // // // // // // // // // // // //         trailing: mission.image != null
// // // // // // // // // // // // //             ? Image.network(mission.image!,
// // // // // // // // // // // // //                 width: 50, height: 50, fit: BoxFit.cover)
// // // // // // // // // // // // //             : const SizedBox.shrink(),
// // // // // // // // // // // // //       ),
// // // // // // // // // // // // //     );
// // // // // // // // // // // // //   }
// // // // // // // // // // // // // }

// // // // // // // // // // // // // class Mission {
// // // // // // // // // // // // //   final String id;
// // // // // // // // // // // // //   final String name;
// // // // // // // // // // // // //   final MissionState state;
// // // // // // // // // // // // //   final String categoryId;
// // // // // // // // // // // // //   final String userId;
// // // // // // // // // // // // //   final DateTime day;
// // // // // // // // // // // // //   final String location;
// // // // // // // // // // // // //   final String note;
// // // // // // // // // // // // //   final String? image;
// // // // // // // // // // // // //   final String? details;
// // // // // // // // // // // // //   final int? room;
// // // // // // // // // // // // //   final String? grade;
// // // // // // // // // // // // //   final String? hours;

// // // // // // // // // // // // //   Mission({
// // // // // // // // // // // // //     required this.id,
// // // // // // // // // // // // //     required this.name,
// // // // // // // // // // // // //     required this.state,
// // // // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // // // //     required this.userId,
// // // // // // // // // // // // //     required this.day,
// // // // // // // // // // // // //     required this.location,
// // // // // // // // // // // // //     required this.note,
// // // // // // // // // // // // //     this.image,
// // // // // // // // // // // // //     this.details,
// // // // // // // // // // // // //     this.room,
// // // // // // // // // // // // //     this.grade,
// // // // // // // // // // // // //     this.hours,
// // // // // // // // // // // // //   });

// // // // // // // // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // // //     return Mission(
// // // // // // // // // // // // //       id: json['Id'] ?? '',
// // // // // // // // // // // // //       name: json['name'] ?? '',
// // // // // // // // // // // // //       state: MissionState.values[json['state'] ?? 0],
// // // // // // // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // // // // // // //       userId: json['userId'] ?? '',
// // // // // // // // // // // // //       day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
// // // // // // // // // // // // //       location: json['location'] ?? '',
// // // // // // // // // // // // //       note: json['note'] ?? '',
// // // // // // // // // // // // //       image: json['image'],
// // // // // // // // // // // // //       details: json['details'],
// // // // // // // // // // // // //       room: json['room'],
// // // // // // // // // // // // //       grade: json['grade'],
// // // // // // // // // // // // //       hours: json['hours'],
// // // // // // // // // // // // //     );
// // // // // // // // // // // // //   }
// // // // // // // // // // // // // }

// // // // // // // // // // // // // enum MissionState {
// // // // // // // // // // // // //   Pending,
// // // // // // // // // // // // //   Scheduled,
// // // // // // // // // // // // //   Completed,
// // // // // // // // // // // // //   Cancelled,
// // // // // // // // // // // // // }

// // // // // // // // // // // // // class VendorOffersScreen extends StatefulWidget {
// // // // // // // // // // // // //   final String missionId;

// // // // // // // // // // // // //   const VendorOffersScreen({required this.missionId, Key? key})
// // // // // // // // // // // // //       : super(key: key);

// // // // // // // // // // // // //   @override
// // // // // // // // // // // // //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // // // // // // // // // // // // }

// // // // // // // // // // // // // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// // // // // // // // // // // // //   late Future<List<VendorOffer>> offers;

// // // // // // // // // // // // //   @override
// // // // // // // // // // // // //   void initState() {
// // // // // // // // // // // // //     super.initState();
// // // // // // // // // // // // //     offers = fetchVendorOffers();
// // // // // // // // // // // // //   }

// // // // // // // // // // // // //   Future<List<VendorOffer>> fetchVendorOffers() async {
// // // // // // // // // // // // //     try {
// // // // // // // // // // // // //       final response = await http.get(Uri.parse(
// // // // // // // // // // // // //           'https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));
// // // // // // // // // // // // //       print(json.decode(response.body));  // Debugging statement

// // // // // // // // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // // // //         return data.map((json) => VendorOffer.fromJson(json)).toList();
// // // // // // // // // // // // //       } else {
// // // // // // // // // // // // //         throw Exception('Failed to load offers');
// // // // // // // // // // // // //       }
// // // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // // //       throw Exception('Error fetching offers: $e');
// // // // // // // // // // // // //     }
// // // // // // // // // // // // //   }

// // // // // // // // // // // // //   @override
// // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // //         title: const Text(
// // // // // // // // // // // // //           'Vendor Offers',
// // // // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // // // //         ),
// // // // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // // // //         elevation: 1,
// // // // // // // // // // // // //       ),
// // // // // // // // // // // // //       body: FutureBuilder<List<VendorOffer>>(
// // // // // // // // // // // // //         future: offers,
// // // // // // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // // // // // //             return const Center(child: Text('No offers available'));
// // // // // // // // // // // // //           } else {
// // // // // // // // // // // // //             final allOffers = snapshot.data!;
// // // // // // // // // // // // //             return ListView.builder(
// // // // // // // // // // // // //               itemCount: allOffers.length,
// // // // // // // // // // // // //               padding: const EdgeInsets.all(16),
// // // // // // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // // // // // //                 final offer = allOffers[index];
// // // // // // // // // // // // //                 return FutureBuilder<VenderProfileDto>(
// // // // // // // // // // // // //                   future: fetchVenderProfile(offer.vendorProfileId),
// // // // // // // // // // // // //                   builder: (context, profileSnapshot) {
// // // // // // // // // // // // //                     if (profileSnapshot.connectionState ==
// // // // // // // // // // // // //                         ConnectionState.waiting) {
// // // // // // // // // // // // //                       return const CircularProgressIndicator();
// // // // // // // // // // // // //                     } else if (profileSnapshot.hasError) {
// // // // // // // // // // // // //                       return ListTile(
// // // // // // // // // // // // //                         title: Text('Error loading profile data'),
// // // // // // // // // // // // //                         subtitle: Text(offer.category),
// // // // // // // // // // // // //                         trailing: Text('\$${offer.price}'),
// // // // // // // // // // // // //                       );
// // // // // // // // // // // // //                     } else if (!profileSnapshot.hasData) {
// // // // // // // // // // // // //                       return ListTile(
// // // // // // // // // // // // //                         title: Text('Profile data not available'),
// // // // // // // // // // // // //                         subtitle: Text(offer.category),
// // // // // // // // // // // // //                         trailing: Text('\$${offer.price}'),
// // // // // // // // // // // // //                       );
// // // // // // // // // // // // //                     } else {
// // // // // // // // // // // // //                       final profile = profileSnapshot.data!;
// // // // // // // // // // // // //                       return FutureBuilder<User>(
// // // // // // // // // // // // //                         future: fetchUserDetails(profile.venderUserId),
// // // // // // // // // // // // //                         builder: (context, userSnapshot) {
// // // // // // // // // // // // //                           if (userSnapshot.connectionState ==
// // // // // // // // // // // // //                               ConnectionState.waiting) {
// // // // // // // // // // // // //                             return const CircularProgressIndicator();
// // // // // // // // // // // // //                           } else if (userSnapshot.hasError) {
// // // // // // // // // // // // //                             return ListTile(
// // // // // // // // // // // // //                               title: Text('Error loading user data'),
// // // // // // // // // // // // //                               subtitle: Text(offer.category),
// // // // // // // // // // // // //                               trailing: Text('\$${offer.price}'),
// // // // // // // // // // // // //                             );
// // // // // // // // // // // // //                           } else if (!userSnapshot.hasData) {
// // // // // // // // // // // // //                             return ListTile(
// // // // // // // // // // // // //                               title: Text('User data not available'),
// // // // // // // // // // // // //                               subtitle: Text(offer.category),
// // // // // // // // // // // // //                               trailing: Text('\$${offer.price}'),
// // // // // // // // // // // // //                             );
// // // // // // // // // // // // //                           } else {
// // // // // // // // // // // // //                             final user = userSnapshot.data!;
// // // // // // // // // // // // //                             return OfferCard(
// // // // // // // // // // // // //                               userName: user.userName,
// // // // // // // // // // // // //                               email: user.email,
// // // // // // // // // // // // //                               category: offer.category,
// // // // // // // // // // // // //                               price: offer.price,
// // // // // // // // // // // // //                               imageUrl: user.imageUrl,
// // // // // // // // // // // // //                               onTap: () => _showOfferDetails(offer, user),
// // // // // // // // // // // // //                               onAccept: () => _acceptOffer(offer.id),
// // // // // // // // // // // // //                             );
// // // // // // // // // // // // //                           }
// // // // // // // // // // // // //                         },
// // // // // // // // // // // // //                       );
// // // // // // // // // // // // //                     }
// // // // // // // // // // // // //                   },
// // // // // // // // // // // // //                 );
// // // // // // // // // // // // //               },
// // // // // // // // // // // // //             );
// // // // // // // // // // // // //           }
// // // // // // // // // // // // //         },
// // // // // // // // // // // // //       ),
// // // // // // // // // // // // //     );
// // // // // // // // // // // // //   }

// // // // // // // // // // // // //   void _showOfferDetails(VendorOffer offer, User user) {
// // // // // // // // // // // // //     showModalBottomSheet(
// // // // // // // // // // // // //       context: context,
// // // // // // // // // // // // //       shape: const RoundedRectangleBorder(
// // // // // // // // // // // // //         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// // // // // // // // // // // // //       ),
// // // // // // // // // // // // //       builder: (context) {
// // // // // // // // // // // // //         return Padding(
// // // // // // // // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // // // // // // // //           child: Column(
// // // // // // // // // // // // //             mainAxisSize: MainAxisSize.min,
// // // // // // // // // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // // //             children: [
// // // // // // // // // // // // //               Text(
// // // // // // // // // // // // //                 user.userName,
// // // // // // // // // // // // //                 style:
// // // // // // // // // // // // //                     const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // // // // // // // // // // // //               ),
// // // // // // // // // // // // //               const SizedBox(height: 8),
// // // // // // // // // // // // //               Text(user.email, style: const TextStyle(color: Colors.grey)),
// // // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // // //               Text('Price: \$${offer.price}',
// // // // // // // // // // // // //                   style: const TextStyle(fontSize: 18)),
// // // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // // //               Text('Note:',
// // // // // // // // // // // // //                   style: const TextStyle(
// // // // // // // // // // // // //                       fontSize: 16, fontWeight: FontWeight.bold)),
// // // // // // // // // // // // //               Text(offer.note ?? 'No note available.'),
// // // // // // // // // // // // //             ],
// // // // // // // // // // // // //           ),
// // // // // // // // // // // // //         );
// // // // // // // // // // // // //       },
// // // // // // // // // // // // //     );
// // // // // // // // // // // // //   }

// // // // // // // // // // // // //   Future<void> _acceptOffer(String offerId) async {
// // // // // // // // // // // // //     try {
// // // // // // // // // // // // //       final response = await http.put(
// // // // // // // // // // // // //         Uri.parse(
// // // // // // // // // // // // //             'https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted/$offerId'),
// // // // // // // // // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // // // // // // // // //       );
// // // // // // // // // // // // //       print(json.decode(response.body));  // Debugging statement

// // // // // // // // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // // //         setState(() {
// // // // // // // // // // // // //           offers = fetchVendorOffers(); // Refresh offers after updating
// // // // // // // // // // // // //         });
// // // // // // // // // // // // //       } else {
// // // // // // // // // // // // //         throw Exception('Failed to update offer state');
// // // // // // // // // // // // //       }
// // // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // // //       // Show error message
// // // // // // // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // // // // // //         SnackBar(content: Text('Error updating offer: $e')),
// // // // // // // // // // // // //       );
// // // // // // // // // // // // //     }
// // // // // // // // // // // // //   }
// // // // // // // // // // // // // }

// // // // // // // // // // // // // class OfferCard extends StatelessWidget {
// // // // // // // // // // // // //   final String userName;
// // // // // // // // // // // // //   final String email;
// // // // // // // // // // // // //   final String category;
// // // // // // // // // // // // //   final double price;
// // // // // // // // // // // // //   final String? imageUrl;
// // // // // // // // // // // // //   final VoidCallback onTap;
// // // // // // // // // // // // //   final VoidCallback onAccept;

// // // // // // // // // // // // //   const OfferCard({
// // // // // // // // // // // // //     required this.userName,
// // // // // // // // // // // // //     required this.email,
// // // // // // // // // // // // //     required this.category,
// // // // // // // // // // // // //     required this.price,
// // // // // // // // // // // // //     this.imageUrl,
// // // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // // //     required this.onAccept,
// // // // // // // // // // // // //     Key? key,
// // // // // // // // // // // // //   }) : super(key: key);

// // // // // // // // // // // // //   @override
// // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // //     return Card(
// // // // // // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // // // // // //       elevation: 4,
// // // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // // //         leading: imageUrl != null
// // // // // // // // // // // // //             ? CircleAvatar(
// // // // // // // // // // // // //                 backgroundImage: NetworkImage(imageUrl!),
// // // // // // // // // // // // //               )
// // // // // // // // // // // // //             : const CircleAvatar(
// // // // // // // // // // // // //                 child: Icon(Icons.person),
// // // // // // // // // // // // //               ),
// // // // // // // // // // // // //         title:
// // // // // // // // // // // // //             Text(userName, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // // //         subtitle: Column(
// // // // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // // //           children: [
// // // // // // // // // // // // //             Text(email),
// // // // // // // // // // // // //             Text(category),
// // // // // // // // // // // // //           ],
// // // // // // // // // // // // //         ),
// // // // // // // // // // // // //         trailing: Column(
// // // // // // // // // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // // //           children: [
// // // // // // // // // // // // //             Text('\$$price',
// // // // // // // // // // // // //                 style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // // //             ElevatedButton(
// // // // // // // // // // // // //               onPressed: onAccept,
// // // // // // // // // // // // //               child: const Text('Accept'),
// // // // // // // // // // // // //             ),
// // // // // // // // // // // // //           ],
// // // // // // // // // // // // //         ),
// // // // // // // // // // // // //       ),
// // // // // // // // // // // // //     );
// // // // // // // // // // // // //   }
// // // // // // // // // // // // // }

// // // // // // // // // // // // // class VendorOffer {
// // // // // // // // // // // // //   final String id;
// // // // // // // // // // // // //   final String vendorProfileId;
// // // // // // // // // // // // //   final String vendorUserId;
// // // // // // // // // // // // //   final String category;
// // // // // // // // // // // // //   final double price;
// // // // // // // // // // // // //   final bool state;
// // // // // // // // // // // // //   final String? note;

// // // // // // // // // // // // //   VendorOffer({
// // // // // // // // // // // // //     required this.id,
// // // // // // // // // // // // //     required this.vendorProfileId,
// // // // // // // // // // // // //     required this.vendorUserId,
// // // // // // // // // // // // //     required this.category,
// // // // // // // // // // // // //     required this.price,
// // // // // // // // // // // // //     required this.state,
// // // // // // // // // // // // //     this.note,
// // // // // // // // // // // // //   });

// // // // // // // // // // // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // // //     return VendorOffer(
// // // // // // // // // // // // //       id: json['Id'] ?? '',
// // // // // // // // // // // // //       vendorProfileId: json['vendorProfileId'] ?? '',
// // // // // // // // // // // // //       vendorUserId: json['vendorUserId'] ?? '', // Ensure this field is used
// // // // // // // // // // // // //       category: json['category'] ?? 'Unknown',
// // // // // // // // // // // // //       price: json['price']?.toDouble() ?? 0.0,
// // // // // // // // // // // // //       state: json['state'] ?? false,
// // // // // // // // // // // // //       note: json['note'],
// // // // // // // // // // // // //     );
// // // // // // // // // // // // //   }
// // // // // // // // // // // // // }

// // // // // // // // // // // // // class VenderProfileDto {
// // // // // // // // // // // // //   final String id;
// // // // // // // // // // // // //   final String venderUserId; // Updated property name
// // // // // // // // // // // // //   final String categoryId;
// // // // // // // // // // // // //   final String? bio;
// // // // // // // // // // // // //   final int? experience;

// // // // // // // // // // // // //   VenderProfileDto({
// // // // // // // // // // // // //     required this.id,
// // // // // // // // // // // // //     required this.venderUserId, // Updated property name
// // // // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // // // //     this.bio,
// // // // // // // // // // // // //     this.experience,
// // // // // // // // // // // // //   });

// // // // // // // // // // // // //   factory VenderProfileDto.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // // //     return VenderProfileDto(
// // // // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // // // //       venderUserId: json['userId'] ?? '', // JSON key remains 'userId'
// // // // // // // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // // // // // // //       bio: json['bio'],
// // // // // // // // // // // // //       experience: json['experience'],
// // // // // // // // // // // // //     );
// // // // // // // // // // // // //   }
// // // // // // // // // // // // // }

// // // // // // // // // // // // // class User {
// // // // // // // // // // // // //   final String id;
// // // // // // // // // // // // //   final String userName; // updated field
// // // // // // // // // // // // //   final String email;
// // // // // // // // // // // // //   final String? imageUrl;

// // // // // // // // // // // // //   User({
// // // // // // // // // // // // //     required this.id,
// // // // // // // // // // // // //     required this.userName,
// // // // // // // // // // // // //     required this.email,
// // // // // // // // // // // // //     this.imageUrl,
// // // // // // // // // // // // //   });

// // // // // // // // // // // // //   factory User.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // // //     return User(
// // // // // // // // // // // // //       id: json['Id'] ?? '',
// // // // // // // // // // // // //       userName: json['userName'] ?? '',
// // // // // // // // // // // // //       email: json['email'] ?? '',
// // // // // // // // // // // // //       imageUrl: json['imageUrl'],
// // // // // // // // // // // // //     );
// // // // // // // // // // // // //   }
// // // // // // // // // // // // // }

// // // // // // // // // // // // // Future<VenderProfileDto> fetchVenderProfile(String vendorProfileId) async {
// // // // // // // // // // // // //   final response = await http.get(Uri.parse(
// // // // // // // // // // // // //       'https://192.168.0.109:7127/api/VenderProfile/$vendorProfileId'));
// // // // // // // // // // // // //   print(json.decode(response.body));  // Debugging statement

// // // // // // // // // // // // //   if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // // //     final Map<String, dynamic> data = json.decode(response.body);
// // // // // // // // // // // // //     return VenderProfileDto.fromJson(data);
// // // // // // // // // // // // //   } else {
// // // // // // // // // // // // //     throw Exception('Failed to load vendor profile');
// // // // // // // // // // // // //   }
// // // // // // // // // // // // // }
// // // // // // // // // // // // //  print( Widget venderUserId);
// // // // // // // // // // // // // Future<User> fetchUserDetails(String venderUserId) async {

// // // // // // // // // // // // //   final response =
// // // // // // // // // // // // //       await http.get(Uri.parse('https://192.168.0.109:7127/api/User/$venderUserId'));
// // // // // // // // // // // // //   print(json.decode(response.body));  // Debugging statement

// // // // // // // // // // // // //   if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // // //     final Map<String, dynamic> data = json.decode(response.body);
// // // // // // // // // // // // //     return User.fromJson(data);
// // // // // // // // // // // // //   } else {
// // // // // // // // // // // // //     throw Exception('Failed to load user details');
// // // // // // // // // // // // //   }
// // // // // // // // // // // // // }
// // // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // // import 'dart:convert';
// // // // // // // // // // // // import 'package:http/http.dart' as http;

// // // // // // // // // // // // void main() {
// // // // // // // // // // // //   runApp(MyApp());
// // // // // // // // // // // // }

// // // // // // // // // // // // class MyApp extends StatelessWidget {
// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return MaterialApp(
// // // // // // // // // // // //       title: 'Vendor Comments',
// // // // // // // // // // // //       theme: ThemeData(
// // // // // // // // // // // //         primarySwatch: Colors.blue,
// // // // // // // // // // // //       ),
// // // // // // // // // // // //       home: OrdersScreen(userId: 'your-user-id-here'),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // class OrdersScreen extends StatefulWidget {
// // // // // // // // // // // //   final String userId;

// // // // // // // // // // // //   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // // // // // // // // // // }

// // // // // // // // // // // // class _OrdersScreenState extends State<OrdersScreen>
// // // // // // // // // // // //     with SingleTickerProviderStateMixin {
// // // // // // // // // // // //   late TabController _tabController;
// // // // // // // // // // // //   late Future<List<Mission>> missions;

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   void initState() {
// // // // // // // // // // // //     super.initState();
// // // // // // // // // // // //     _tabController = TabController(length: 2, vsync: this);
// // // // // // // // // // // //     missions = fetchMissions();
// // // // // // // // // // // //   }

// // // // // // // // // // // //   Future<List<Mission>> fetchMissions() async {
// // // // // // // // // // // //     try {
// // // // // // // // // // // //       final response = await http.get(Uri.parse(
// // // // // // // // // // // //           'https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));

// // // // // // // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // // //         return data.map((json) => Mission.fromJson(json)).toList();
// // // // // // // // // // // //       } else {
// // // // // // // // // // // //         throw Exception('Failed to load missions');
// // // // // // // // // // // //       }
// // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // //       throw Exception('Error fetching missions: $e');
// // // // // // // // // // // //     }
// // // // // // // // // // // //   }

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // //         title: const Text(
// // // // // // // // // // // //           'User Missions',
// // // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // // //         ),
// // // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // // //         elevation: 1,
// // // // // // // // // // // //         bottom: TabBar(
// // // // // // // // // // // //           controller: _tabController,
// // // // // // // // // // // //           labelColor: Colors.blue,
// // // // // // // // // // // //           unselectedLabelColor: Colors.grey,
// // // // // // // // // // // //           indicatorColor: Colors.blue,
// // // // // // // // // // // //           tabs: const [
// // // // // // // // // // // //             Tab(text: 'All Missions'),
// // // // // // // // // // // //             Tab(text: 'Scheduled Missions'),
// // // // // // // // // // // //           ],
// // // // // // // // // // // //         ),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //       body: FutureBuilder<List<Mission>>(
// // // // // // // // // // // //         future: missions,
// // // // // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // // // // //             return const Center(child: Text('No missions available'));
// // // // // // // // // // // //           } else {
// // // // // // // // // // // //             final allMissions = snapshot.data!;
// // // // // // // // // // // //             final scheduledMissions = allMissions
// // // // // // // // // // // //                 .where((mission) => mission.state == MissionState.Scheduled)
// // // // // // // // // // // //                 .toList();

// // // // // // // // // // // //             return TabBarView(
// // // // // // // // // // // //               controller: _tabController,
// // // // // // // // // // // //               children: [
// // // // // // // // // // // //                 _buildMissionList(allMissions),
// // // // // // // // // // // //                 _buildMissionList(scheduledMissions),
// // // // // // // // // // // //               ],
// // // // // // // // // // // //             );
// // // // // // // // // // // //           }
// // // // // // // // // // // //         },
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }

// // // // // // // // // // // //   Widget _buildMissionList(List<Mission> missions) {
// // // // // // // // // // // //     return ListView.builder(
// // // // // // // // // // // //       itemCount: missions.length,
// // // // // // // // // // // //       padding: const EdgeInsets.all(16),
// // // // // // // // // // // //       itemBuilder: (context, index) {
// // // // // // // // // // // //         final mission = missions[index];
// // // // // // // // // // // //         return MissionCard(
// // // // // // // // // // // //           mission: mission,
// // // // // // // // // // // //           onTap: () => _showVendorOffers(mission),
// // // // // // // // // // // //         );
// // // // // // // // // // // //       },
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }

// // // // // // // // // // // //   void _showVendorOffers(Mission mission) {
// // // // // // // // // // // //     Navigator.push(
// // // // // // // // // // // //       context,
// // // // // // // // // // // //       MaterialPageRoute(
// // // // // // // // // // // //         builder: (context) => VendorOffersScreen(missionId: mission.id),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // class MissionCard extends StatelessWidget {
// // // // // // // // // // // //   final Mission mission;
// // // // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // // // //   const MissionCard({
// // // // // // // // // // // //     required this.mission,
// // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // //     Key? key,
// // // // // // // // // // // //   }) : super(key: key);

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Card(
// // // // // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // // // // //       elevation: 4,
// // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // //         title: Text(mission.name,
// // // // // // // // // // // //             style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // //         subtitle: Column(
// // // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // //           children: [
// // // // // // // // // // // //             Text('State: ${mission.state}'),
// // // // // // // // // // // //             Text('Day: ${mission.day}'),
// // // // // // // // // // // //           ],
// // // // // // // // // // // //         ),
// // // // // // // // // // // //         trailing: mission.image != null
// // // // // // // // // // // //             ? Image.network(mission.image!,
// // // // // // // // // // // //                 width: 50, height: 50, fit: BoxFit.cover)
// // // // // // // // // // // //             : const SizedBox.shrink(),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // class Mission {
// // // // // // // // // // // //   final String id;
// // // // // // // // // // // //   final String name;
// // // // // // // // // // // //   final MissionState state;
// // // // // // // // // // // //   final String categoryId;
// // // // // // // // // // // //   final String userId;
// // // // // // // // // // // //   final DateTime day;
// // // // // // // // // // // //   final String location;
// // // // // // // // // // // //   final String note;
// // // // // // // // // // // //   final String? image;
// // // // // // // // // // // //   final String? details;
// // // // // // // // // // // //   final int? room;
// // // // // // // // // // // //   final String? grade;
// // // // // // // // // // // //   final String? hours;

// // // // // // // // // // // //   Mission({
// // // // // // // // // // // //     required this.id,
// // // // // // // // // // // //     required this.name,
// // // // // // // // // // // //     required this.state,
// // // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // // //     required this.userId,
// // // // // // // // // // // //     required this.day,
// // // // // // // // // // // //     required this.location,
// // // // // // // // // // // //     required this.note,
// // // // // // // // // // // //     this.image,
// // // // // // // // // // // //     this.details,
// // // // // // // // // // // //     this.room,
// // // // // // // // // // // //     this.grade,
// // // // // // // // // // // //     this.hours,
// // // // // // // // // // // //   });

// // // // // // // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // //     return Mission(
// // // // // // // // // // // //       id: json['Id'] ?? '',
// // // // // // // // // // // //       name: json['name'] ?? '',
// // // // // // // // // // // //       state: MissionState.values[json['state'] ?? 0],
// // // // // // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // // // // // //       userId: json['userId'] ?? '',
// // // // // // // // // // // //       day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
// // // // // // // // // // // //       location: json['location'] ?? '',
// // // // // // // // // // // //       note: json['note'] ?? '',
// // // // // // // // // // // //       image: json['image'],
// // // // // // // // // // // //       details: json['details'],
// // // // // // // // // // // //       room: json['room'],
// // // // // // // // // // // //       grade: json['grade'],
// // // // // // // // // // // //       hours: json['hours'],
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // enum MissionState {
// // // // // // // // // // // //   Pending,
// // // // // // // // // // // //   Scheduled,
// // // // // // // // // // // //   Completed,
// // // // // // // // // // // //   Cancelled,
// // // // // // // // // // // // }

// // // // // // // // // // // // class VendorOffersScreen extends StatefulWidget {
// // // // // // // // // // // //   final String missionId;

// // // // // // // // // // // //   const VendorOffersScreen({required this.missionId, Key? key})
// // // // // // // // // // // //       : super(key: key);

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // // // // // // // // // // // }

// // // // // // // // // // // // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// // // // // // // // // // // //   late Future<List<VendorOffer>> offers;

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   void initState() {
// // // // // // // // // // // //     super.initState();
// // // // // // // // // // // //     offers = fetchVendorOffers();
// // // // // // // // // // // //   }

// // // // // // // // // // // //   Future<List<VendorOffer>> fetchVendorOffers() async {
// // // // // // // // // // // //     try {
// // // // // // // // // // // //       final response = await http.get(Uri.parse(
// // // // // // // // // // // //           'https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));
// // // // // // // // // // // //       print(json.decode(response.body)); // Debugging statement

// // // // // // // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // // //         return data.map((json) => VendorOffer.fromJson(json)).toList();
// // // // // // // // // // // //       } else {
// // // // // // // // // // // //         throw Exception('Failed to load offers');
// // // // // // // // // // // //       }
// // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // //       throw Exception('Error fetching offers: $e');
// // // // // // // // // // // //     }
// // // // // // // // // // // //   }

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // //         title: const Text(
// // // // // // // // // // // //           'Vendor Offers',
// // // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // // //         ),
// // // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // // //         elevation: 1,
// // // // // // // // // // // //       ),
// // // // // // // // // // // //       body: FutureBuilder<List<VendorOffer>>(
// // // // // // // // // // // //         future: offers,
// // // // // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // // // // //             return const Center(child: Text('No offers available'));
// // // // // // // // // // // //           } else {
// // // // // // // // // // // //             final allOffers = snapshot.data!;
// // // // // // // // // // // //             return ListView.builder(
// // // // // // // // // // // //               itemCount: allOffers.length,
// // // // // // // // // // // //               padding: const EdgeInsets.all(16),
// // // // // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // // // // //                 final offer = allOffers[index];
// // // // // // // // // // // //                 return FutureBuilder<VenderProfileDto>(
// // // // // // // // // // // //                   future: fetchVenderProfile(offer.vendorProfileId),
// // // // // // // // // // // //                   builder: (context, profileSnapshot) {
// // // // // // // // // // // //                     if (profileSnapshot.connectionState ==
// // // // // // // // // // // //                         ConnectionState.waiting) {
// // // // // // // // // // // //                       return const CircularProgressIndicator();
// // // // // // // // // // // //                     } else if (profileSnapshot.hasError) {
// // // // // // // // // // // //                       return ListTile(
// // // // // // // // // // // //                         title: Text('Error loading profile data'),
// // // // // // // // // // // //                         subtitle: Text(offer.category),
// // // // // // // // // // // //                         trailing: Text('\$${offer.price}'),
// // // // // // // // // // // //                       );
// // // // // // // // // // // //                     } else if (!profileSnapshot.hasData) {
// // // // // // // // // // // //                       return ListTile(
// // // // // // // // // // // //                         title: Text('Profile data not available'),
// // // // // // // // // // // //                         subtitle: Text(offer.category),
// // // // // // // // // // // //                         trailing: Text('\$${offer.price}'),
// // // // // // // // // // // //                       );
// // // // // // // // // // // //                     } else {
// // // // // // // // // // // //                       final profile = profileSnapshot.data!;
// // // // // // // // // // // //                       // Print statement to check vendorProfileId
// // // // // // // // // // // //                       print('Vendor Profile ID: ${profile.id}');
// // // // // // // // // // // //                       print('Vendor User ID: ${profile.venderUserId}');
// // // // // // // // // // // //                       return FutureBuilder<User>(
// // // // // // // // // // // //                         future: fetchUserDetails(profile.venderUserId),
// // // // // // // // // // // //                         builder: (context, userSnapshot) {
// // // // // // // // // // // //                           if (userSnapshot.connectionState ==
// // // // // // // // // // // //                               ConnectionState.waiting) {
// // // // // // // // // // // //                             return const CircularProgressIndicator();
// // // // // // // // // // // //                           } else if (userSnapshot.hasError) {
// // // // // // // // // // // //                             return ListTile(
// // // // // // // // // // // //                               title: Text('Error loading user data'),
// // // // // // // // // // // //                               subtitle: Text(offer.category),
// // // // // // // // // // // //                               trailing: Text('\$${offer.price}'),
// // // // // // // // // // // //                             );
// // // // // // // // // // // //                           } else if (!userSnapshot.hasData) {
// // // // // // // // // // // //                             return ListTile(
// // // // // // // // // // // //                               title: Text('User data not available'),
// // // // // // // // // // // //                               subtitle: Text(offer.category),
// // // // // // // // // // // //                               trailing: Text('\$${offer.price}'),
// // // // // // // // // // // //                             );
// // // // // // // // // // // //                           } else {
// // // // // // // // // // // //                             final user = userSnapshot.data!;
// // // // // // // // // // // //                             return OfferCard(
// // // // // // // // // // // //                               userName: user.userName,
// // // // // // // // // // // //                               email: user.email,
// // // // // // // // // // // //                               category: offer.category,
// // // // // // // // // // // //                               price: offer.price,
// // // // // // // // // // // //                               imageUrl: user.imageUrl,
// // // // // // // // // // // //                               onTap: () => _showOfferDetails(offer, user),
// // // // // // // // // // // //                               onAccept: () => _acceptOffer(offer.id),
// // // // // // // // // // // //                             );
// // // // // // // // // // // //                           }
// // // // // // // // // // // //                         },
// // // // // // // // // // // //                       );
// // // // // // // // // // // //                     }
// // // // // // // // // // // //                   },
// // // // // // // // // // // //                 );
// // // // // // // // // // // //               },
// // // // // // // // // // // //             );
// // // // // // // // // // // //           }
// // // // // // // // // // // //         },
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }

// // // // // // // // // // // //   void _showOfferDetails(VendorOffer offer, User user) {
// // // // // // // // // // // //     showModalBottomSheet(
// // // // // // // // // // // //       context: context,
// // // // // // // // // // // //       shape: const RoundedRectangleBorder(
// // // // // // // // // // // //         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //       builder: (context) {
// // // // // // // // // // // //         return Padding(
// // // // // // // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // // // // // // //           child: Column(
// // // // // // // // // // // //             mainAxisSize: MainAxisSize.min,
// // // // // // // // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // //             children: [
// // // // // // // // // // // //               Text(
// // // // // // // // // // // //                 user.userName,
// // // // // // // // // // // //                 style:
// // // // // // // // // // // //                     const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // // // // // // // // // // //               ),
// // // // // // // // // // // //               const SizedBox(height: 8),
// // // // // // // // // // // //               Text(user.email, style: const TextStyle(color: Colors.grey)),
// // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // //               Text('Price: \$${offer.price}',
// // // // // // // // // // // //                   style: const TextStyle(fontSize: 18)),
// // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // //               Text('Note:',
// // // // // // // // // // // //                   style: const TextStyle(
// // // // // // // // // // // //                       fontSize: 16, fontWeight: FontWeight.bold)),
// // // // // // // // // // // //               Text(offer.note ?? 'No note available.'),
// // // // // // // // // // // //             ],
// // // // // // // // // // // //           ),
// // // // // // // // // // // //         );
// // // // // // // // // // // //       },
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }

// // // // // // // // // // // //   Future<void> _acceptOffer(String offerId) async {
// // // // // // // // // // // //     try {
// // // // // // // // // // // //       final response = await http.put(
// // // // // // // // // // // //         Uri.parse(
// // // // // // // // // // // //             'https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted/$offerId'),
// // // // // // // // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // // // // // // // //       );
// // // // // // // // // // // //       print(json.decode(response.body)); // Debugging statement

// // // // // // // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // //         setState(() {
// // // // // // // // // // // //           offers = fetchVendorOffers(); // Refresh offers after updating
// // // // // // // // // // // //         });
// // // // // // // // // // // //       } else {
// // // // // // // // // // // //         throw Exception('Failed to update offer state');
// // // // // // // // // // // //       }
// // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // //       // Show error message
// // // // // // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // // // // //         SnackBar(content: Text('Error updating offer: $e')),
// // // // // // // // // // // //       );
// // // // // // // // // // // //     }
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // class OfferCard extends StatelessWidget {
// // // // // // // // // // // //   final String userName;
// // // // // // // // // // // //   final String email;
// // // // // // // // // // // //   final String category;
// // // // // // // // // // // //   final double price;
// // // // // // // // // // // //   final String? imageUrl;
// // // // // // // // // // // //   final VoidCallback onTap;
// // // // // // // // // // // //   final VoidCallback onAccept;

// // // // // // // // // // // //   const OfferCard({
// // // // // // // // // // // //     required this.userName,
// // // // // // // // // // // //     required this.email,
// // // // // // // // // // // //     required this.category,
// // // // // // // // // // // //     required this.price,
// // // // // // // // // // // //     this.imageUrl,
// // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // //     required this.onAccept,
// // // // // // // // // // // //     Key? key,
// // // // // // // // // // // //   }) : super(key: key);

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Card(
// // // // // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // // // // //       elevation: 4,
// // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // //         leading: imageUrl != null
// // // // // // // // // // // //             ? CircleAvatar(
// // // // // // // // // // // //                 backgroundImage: NetworkImage(imageUrl!),
// // // // // // // // // // // //               )
// // // // // // // // // // // //             : const CircleAvatar(
// // // // // // // // // // // //                 child: Icon(Icons.person),
// // // // // // // // // // // //               ),
// // // // // // // // // // // //         title:
// // // // // // // // // // // //             Text(userName, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // //         subtitle: Column(
// // // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // //           children: [
// // // // // // // // // // // //             Text(email),
// // // // // // // // // // // //             Text(category),
// // // // // // // // // // // //           ],
// // // // // // // // // // // //         ),
// // // // // // // // // // // //         trailing: Column(
// // // // // // // // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // //           children: [
// // // // // // // // // // // //             Text('\$$price',
// // // // // // // // // // // //                 style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // //             ElevatedButton(
// // // // // // // // // // // //               onPressed: onAccept,
// // // // // // // // // // // //               child: const Text('Accept'),
// // // // // // // // // // // //             ),
// // // // // // // // // // // //           ],
// // // // // // // // // // // //         ),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // class VendorOffer {
// // // // // // // // // // // //   final String id;
// // // // // // // // // // // //   final String vendorProfileId;
// // // // // // // // // // // //   final String vendorUserId;
// // // // // // // // // // // //   final String category;
// // // // // // // // // // // //   final double price;
// // // // // // // // // // // //   final bool state;
// // // // // // // // // // // //   final String? note;

// // // // // // // // // // // //   VendorOffer({
// // // // // // // // // // // //     required this.id,
// // // // // // // // // // // //     required this.vendorProfileId,
// // // // // // // // // // // //     required this.vendorUserId,
// // // // // // // // // // // //     required this.category,
// // // // // // // // // // // //     required this.price,
// // // // // // // // // // // //     required this.state,
// // // // // // // // // // // //     this.note,
// // // // // // // // // // // //   });

// // // // // // // // // // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // //     return VendorOffer(
// // // // // // // // // // // //       id: json['Id'] ?? '',
// // // // // // // // // // // //       vendorProfileId: json['vendorProfileId'] ?? '',
// // // // // // // // // // // //       vendorUserId: json['vendorUserId'] ?? '', // Ensure this field is used
// // // // // // // // // // // //       category: json['category'] ?? 'Unknown',
// // // // // // // // // // // //       price: json['price']?.toDouble() ?? 0.0,
// // // // // // // // // // // //       state: json['state'] ?? false,
// // // // // // // // // // // //       note: json['note'],
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // class VenderProfileDto {
// // // // // // // // // // // //   final String id;
// // // // // // // // // // // //   final String venderUserId; // Updated property name
// // // // // // // // // // // //   final String categoryId;
// // // // // // // // // // // //   final String? bio;
// // // // // // // // // // // //   final int? experience;

// // // // // // // // // // // //   VenderProfileDto({
// // // // // // // // // // // //     required this.id,
// // // // // // // // // // // //     required this.venderUserId, // Updated property name
// // // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // // //     this.bio,
// // // // // // // // // // // //     this.experience,
// // // // // // // // // // // //   });

// // // // // // // // // // // //   factory VenderProfileDto.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // //     return VenderProfileDto(
// // // // // // // // // // // //       id: json['Id'] ?? '',
// // // // // // // // // // // //       venderUserId: json['UserId'] ?? '', // JSON key remains 'userId'
// // // // // // // // // // // //       categoryId: json['CategoryId'] ?? '',
// // // // // // // // // // // //       bio: json['Bio'],
// // // // // // // // // // // //       experience: json['Experience'],
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // class User {
// // // // // // // // // // // //   final String id;
// // // // // // // // // // // //   final String userName; // updated field
// // // // // // // // // // // //   final String email;
// // // // // // // // // // // //   final String? imageUrl;

// // // // // // // // // // // //   User({
// // // // // // // // // // // //     required this.id,
// // // // // // // // // // // //     required this.userName,
// // // // // // // // // // // //     required this.email,
// // // // // // // // // // // //     this.imageUrl,
// // // // // // // // // // // //   });

// // // // // // // // // // // //   factory User.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // //     return User(
// // // // // // // // // // // //       id: json['Id'] ?? '',
// // // // // // // // // // // //       userName: json['UserName'] ?? '',
// // // // // // // // // // // //       email: json['Email'] ?? '',
// // // // // // // // // // // //       imageUrl: json['Image'],
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // // Future<VenderProfileDto> fetchVenderProfile(String vendorProfileId) async {
// // // // // // // // // // // // //   final response = await http.get(Uri.parse(
// // // // // // // // // // // // //       'https://192.168.0.109:7127/api/VenderProfile/$vendorProfileId'));
// // // // // // // // // // // // //   print(json.decode(response.body));  // Debugging statement

// // // // // // // // // // // // //   if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // // //     final Map<String, dynamic> data = json.decode(response.body);

// // // // // // // // // // // // //     return VenderProfileDto.fromJson(data);

// // // // // // // // // // // // //   } else {
// // // // // // // // // // // // //     throw Exception('Failed to load vendor profile');
// // // // // // // // // // // // //   }
// // // // // // // // // // // // // }

// // // // // // // // // // // // Future<VenderProfileDto> fetchVenderProfile(String vendorProfileId) async {
// // // // // // // // // // // //   final response = await http.get(Uri.parse(
// // // // // // // // // // // //       'https://192.168.0.109:7127/api/VenderProfile/$vendorProfileId'));
// // // // // // // // // // // //   print('Response: ${json.decode(response.body)}'); // Debugging statement
// // // // // // // // // // // //   print("ggdhuhihuf");
// // // // // // // // // // // //   if (response.statusCode == 200 &&response.statusCode<300) {
// // // // // // // // // // // //     final Map<String, dynamic> data = json.decode(response.body);
// // // // // // // // // // // //     print("ggdhuhihuf");
// // // // // // // // // // // //     // Create the profile object and then print the user ID before returning it
// // // // // // // // // // // //     final profile = VenderProfileDto.fromJson(data);
// // // // // // // // // // // //     print('Vendor Profile ID: ${profile.id}');
// // // // // // // // // // // //     print('Vendor User ID: ${profile.venderUserId}');

// // // // // // // // // // // //     return profile;
// // // // // // // // // // // //   } else {
// // // // // // // // // // // //     throw Exception('Failed to load vendor profile');
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // Future<User> fetchUserDetails(String venderUserId) async {
// // // // // // // // // // // //    print("ggdhuhihuf1");
// // // // // // // // // // // //   final response = await http
// // // // // // // // // // // //       .get(Uri.parse('https://192.168.0.109:7127/api/User/$venderUserId'));
// // // // // // // // // // // //        print("ggdhuhihuf1");
// // // // // // // // // // // //   print(json.decode(response.body)); // Debugging statement
// // // // // // // // // // // //  print("ggdhuhihuf1");
// // // // // // // // // // // //   if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // //     final Map<String, dynamic> data = json.decode(response.body);
// // // // // // // // // // // //     return User.fromJson(data);
// // // // // // // // // // // //   } else {
// // // // // // // // // // // //     throw Exception('Failed to load user details');
// // // // // // // // // // // //   }
// // // // // // // // // // // // }
// // // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // // import 'dart:convert';
// // // // // // // // // // // // import 'package:http/http.dart' as http;

// // // // // // // // // // // // void main() {
// // // // // // // // // // // //   runApp(MyApp());
// // // // // // // // // // // // }

// // // // // // // // // // // // class MyApp extends StatelessWidget {
// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return MaterialApp(
// // // // // // // // // // // //       title: 'Vendor Comments',
// // // // // // // // // // // //       theme: ThemeData(
// // // // // // // // // // // //         primarySwatch: Colors.blue,
// // // // // // // // // // // //       ),
// // // // // // // // // // // //       home: OrdersScreen(userId: 'your-user-id-here'),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // class OrdersScreen extends StatefulWidget {
// // // // // // // // // // // //   final String userId;

// // // // // // // // // // // //   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // // // // // // // // // // }

// // // // // // // // // // // // class _OrdersScreenState extends State<OrdersScreen>
// // // // // // // // // // // //     with SingleTickerProviderStateMixin {
// // // // // // // // // // // //   late TabController _tabController;
// // // // // // // // // // // //   late Future<List<Mission>> missions;

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   void initState() {
// // // // // // // // // // // //     super.initState();
// // // // // // // // // // // //     _tabController = TabController(length: 2, vsync: this);
// // // // // // // // // // // //     missions = fetchMissions();
// // // // // // // // // // // //   }

// // // // // // // // // // // //   Future<List<Mission>> fetchMissions() async {
// // // // // // // // // // // //     try {
// // // // // // // // // // // //       final response = await http.get(Uri.parse(
// // // // // // // // // // // //           'https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));

// // // // // // // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // // //         return data.map((json) => Mission.fromJson(json)).toList();
// // // // // // // // // // // //       } else {
// // // // // // // // // // // //         throw Exception('Failed to load missions');
// // // // // // // // // // // //       }
// // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // //       throw Exception('Error fetching missions: $e');
// // // // // // // // // // // //     }
// // // // // // // // // // // //   }

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // //         title: const Text(
// // // // // // // // // // // //           'User Missions',
// // // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // // //         ),
// // // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // // //         elevation: 1,
// // // // // // // // // // // //         bottom: TabBar(
// // // // // // // // // // // //           controller: _tabController,
// // // // // // // // // // // //           labelColor: Colors.blue,
// // // // // // // // // // // //           unselectedLabelColor: Colors.grey,
// // // // // // // // // // // //           indicatorColor: Colors.blue,
// // // // // // // // // // // //           tabs: const [
// // // // // // // // // // // //             Tab(text: 'All Missions'),
// // // // // // // // // // // //             Tab(text: 'Scheduled Missions'),
// // // // // // // // // // // //           ],
// // // // // // // // // // // //         ),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //       body: FutureBuilder<List<Mission>>(
// // // // // // // // // // // //         future: missions,
// // // // // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // // // // //             return const Center(child: Text('No missions available'));
// // // // // // // // // // // //           } else {
// // // // // // // // // // // //             final allMissions = snapshot.data!;
// // // // // // // // // // // //             final scheduledMissions = allMissions
// // // // // // // // // // // //                 .where((mission) => mission.state == MissionState.Scheduled)
// // // // // // // // // // // //                 .toList();

// // // // // // // // // // // //             return TabBarView(
// // // // // // // // // // // //               controller: _tabController,
// // // // // // // // // // // //               children: [
// // // // // // // // // // // //                 _buildMissionList(allMissions),
// // // // // // // // // // // //                 _buildMissionList(scheduledMissions),
// // // // // // // // // // // //               ],
// // // // // // // // // // // //             );
// // // // // // // // // // // //           }
// // // // // // // // // // // //         },
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }

// // // // // // // // // // // //   Widget _buildMissionList(List<Mission> missions) {
// // // // // // // // // // // //     return ListView.builder(
// // // // // // // // // // // //       itemCount: missions.length,
// // // // // // // // // // // //       padding: const EdgeInsets.all(16),
// // // // // // // // // // // //       itemBuilder: (context, index) {
// // // // // // // // // // // //         final mission = missions[index];
// // // // // // // // // // // //         return MissionCard(
// // // // // // // // // // // //           mission: mission,
// // // // // // // // // // // //           onTap: () => _showVendorOffers(mission),
// // // // // // // // // // // //         );
// // // // // // // // // // // //       },
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }

// // // // // // // // // // // //   void _showVendorOffers(Mission mission) {
// // // // // // // // // // // //     Navigator.push(
// // // // // // // // // // // //       context,
// // // // // // // // // // // //       MaterialPageRoute(
// // // // // // // // // // // //         builder: (context) => VendorOffersScreen(missionId: mission.id),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // class MissionCard extends StatelessWidget {
// // // // // // // // // // // //   final Mission mission;
// // // // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // // // //   const MissionCard({
// // // // // // // // // // // //     required this.mission,
// // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // //     Key? key,
// // // // // // // // // // // //   }) : super(key: key);

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Card(
// // // // // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // // // // //       elevation: 4,
// // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // //         title: Text(mission.name,
// // // // // // // // // // // //             style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // //         subtitle: Column(
// // // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // //           children: [
// // // // // // // // // // // //             Text('State: ${mission.state}'),
// // // // // // // // // // // //             Text('Day: ${mission.day}'),
// // // // // // // // // // // //           ],
// // // // // // // // // // // //         ),
// // // // // // // // // // // //         trailing: mission.image != null
// // // // // // // // // // // //             ? Image.network(mission.image!,
// // // // // // // // // // // //                 width: 50, height: 50, fit: BoxFit.cover)
// // // // // // // // // // // //             : const SizedBox.shrink(),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // class Mission {
// // // // // // // // // // // //   final String id;
// // // // // // // // // // // //   final String name;
// // // // // // // // // // // //   final MissionState state;
// // // // // // // // // // // //   final String categoryId;
// // // // // // // // // // // //   final String userId;
// // // // // // // // // // // //   final DateTime day;
// // // // // // // // // // // //   final String location;
// // // // // // // // // // // //   final String note;
// // // // // // // // // // // //   final String? image;
// // // // // // // // // // // //   final String? details;
// // // // // // // // // // // //   final int? room;
// // // // // // // // // // // //   final String? grade;
// // // // // // // // // // // //   final String? hours;

// // // // // // // // // // // //   Mission({
// // // // // // // // // // // //     required this.id,
// // // // // // // // // // // //     required this.name,
// // // // // // // // // // // //     required this.state,
// // // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // // //     required this.userId,
// // // // // // // // // // // //     required this.day,
// // // // // // // // // // // //     required this.location,
// // // // // // // // // // // //     required this.note,
// // // // // // // // // // // //     this.image,
// // // // // // // // // // // //     this.details,
// // // // // // // // // // // //     this.room,
// // // // // // // // // // // //     this.grade,
// // // // // // // // // // // //     this.hours,
// // // // // // // // // // // //   });

// // // // // // // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // //     return Mission(
// // // // // // // // // // // //       id: json['Id'] ?? '',
// // // // // // // // // // // //       name: json['name'] ?? '',
// // // // // // // // // // // //       state: MissionState.values[json['state'] ?? 0],
// // // // // // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // // // // // //       userId: json['userId'] ?? '',
// // // // // // // // // // // //       day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
// // // // // // // // // // // //       location: json['location'] ?? '',
// // // // // // // // // // // //       note: json['note'] ?? '',
// // // // // // // // // // // //       image: json['image'],
// // // // // // // // // // // //       details: json['details'],
// // // // // // // // // // // //       room: json['room'],
// // // // // // // // // // // //       grade: json['grade'],
// // // // // // // // // // // //       hours: json['hours'],
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // enum MissionState {
// // // // // // // // // // // //   Pending,
// // // // // // // // // // // //   Scheduled,
// // // // // // // // // // // //   Completed,
// // // // // // // // // // // //   Cancelled,
// // // // // // // // // // // // }

// // // // // // // // // // // // class VendorOffersScreen extends StatefulWidget {
// // // // // // // // // // // //   final String missionId;

// // // // // // // // // // // //   const VendorOffersScreen({required this.missionId, Key? key})
// // // // // // // // // // // //       : super(key: key);

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // // // // // // // // // // // }

// // // // // // // // // // // // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// // // // // // // // // // // //   late Future<List<VendorOffer>> offers;

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   void initState() {
// // // // // // // // // // // //     super.initState();
// // // // // // // // // // // //     offers = fetchVendorOffers();
// // // // // // // // // // // //   }

// // // // // // // // // // // //   Future<List<VendorOffer>> fetchVendorOffers() async {
// // // // // // // // // // // //     try {
// // // // // // // // // // // //       final response = await http.get(Uri.parse(
// // // // // // // // // // // //           'https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));
// // // // // // // // // // // //       print(json.decode(response.body)); // Debugging statement

// // // // // // // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // // //         return data.map((json) => VendorOffer.fromJson(json)).toList();
// // // // // // // // // // // //       } else {
// // // // // // // // // // // //         throw Exception('Failed to load offers');
// // // // // // // // // // // //       }
// // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // //       throw Exception('Error fetching offers: $e');
// // // // // // // // // // // //     }
// // // // // // // // // // // //   }

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // //         title: const Text(
// // // // // // // // // // // //           'Vendor Offers',
// // // // // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // // // // //         ),
// // // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // // // // //         elevation: 1,
// // // // // // // // // // // //       ),
// // // // // // // // // // // //       body: FutureBuilder<List<VendorOffer>>(
// // // // // // // // // // // //         future: offers,
// // // // // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // // // // //             return const Center(child: Text('No offers available'));
// // // // // // // // // // // //           } else {
// // // // // // // // // // // //             final allOffers = snapshot.data!;
// // // // // // // // // // // //             return ListView.builder(
// // // // // // // // // // // //               itemCount: allOffers.length,
// // // // // // // // // // // //               padding: const EdgeInsets.all(16),
// // // // // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // // // // //                 final offer = allOffers[index];
// // // // // // // // // // // //                 return FutureBuilder<VenderProfileDto>(
// // // // // // // // // // // //                   future: fetchVenderProfile(offer.vendorProfileId),
// // // // // // // // // // // //                   builder: (context, profileSnapshot) {
// // // // // // // // // // // //                     if (profileSnapshot.connectionState ==
// // // // // // // // // // // //                         ConnectionState.waiting) {
// // // // // // // // // // // //                       return const CircularProgressIndicator();
// // // // // // // // // // // //                     } else if (profileSnapshot.hasError) {
// // // // // // // // // // // //                       return ListTile(
// // // // // // // // // // // //                         title: Text('Error loading profile data'),
// // // // // // // // // // // //                         subtitle: Text(offer.category),
// // // // // // // // // // // //                         trailing: Text('\$${offer.price}'),
// // // // // // // // // // // //                       );
// // // // // // // // // // // //                     } else if (!profileSnapshot.hasData) {
// // // // // // // // // // // //                       return ListTile(
// // // // // // // // // // // //                         title: Text('Profile data not available'),
// // // // // // // // // // // //                         subtitle: Text(offer.category),
// // // // // // // // // // // //                         trailing: Text('\$${offer.price}'),
// // // // // // // // // // // //                       );
// // // // // // // // // // // //                     } else {
// // // // // // // // // // // //                       final profile = profileSnapshot.data!;
// // // // // // // // // // // //                       // Print statement to check vendorProfileId
// // // // // // // // // // // //                       print('Vendor Profile ID: ${profile.id}');
// // // // // // // // // // // //                       print('Vendor User ID: ${profile.userId}');
// // // // // // // // // // // //                       return FutureBuilder<User>(
// // // // // // // // // // // //                         future: fetchUserDetails(profile.userId),
// // // // // // // // // // // //                         builder: (context, userSnapshot)
// // // // // // // // // // // //                          {print("I am inside the fetch");
// // // // // // // // // // // //                           if (userSnapshot.connectionState ==
// // // // // // // // // // // //                               ConnectionState.waiting) {

// // // // // // // // // // // //                             return const CircularProgressIndicator();
// // // // // // // // // // // //                           } else if (userSnapshot.hasError) {
// // // // // // // // // // // //                             return ListTile(
// // // // // // // // // // // //                               title: Text('Error loading user data'),
// // // // // // // // // // // //                               subtitle: Text(offer.category),
// // // // // // // // // // // //                               trailing: Text('\$${offer.price}'),
// // // // // // // // // // // //                             );
// // // // // // // // // // // //                           } else if (!userSnapshot.hasData) {
// // // // // // // // // // // //                             return ListTile(
// // // // // // // // // // // //                               title: Text('User data not available'),
// // // // // // // // // // // //                               subtitle: Text(offer.category),
// // // // // // // // // // // //                               trailing: Text('\$${offer.price}'),
// // // // // // // // // // // //                             );
// // // // // // // // // // // //                           } else {
// // // // // // // // // // // //                             final user = userSnapshot.data!;
// // // // // // // // // // // //                             return OfferCard(
// // // // // // // // // // // //                               userName: user.userName,
// // // // // // // // // // // //                               email: user.email,
// // // // // // // // // // // //                               category: offer.category,
// // // // // // // // // // // //                               price: offer.price,
// // // // // // // // // // // //                               imageUrl: user.image,
// // // // // // // // // // // //                               onTap: () => _showOfferDetails(offer, user),
// // // // // // // // // // // //                               onAccept: () => _acceptOffer(offer.id),
// // // // // // // // // // // //                             );
// // // // // // // // // // // //                           }
// // // // // // // // // // // //                         },
// // // // // // // // // // // //                       );
// // // // // // // // // // // //                     }
// // // // // // // // // // // //                   },
// // // // // // // // // // // //                 );
// // // // // // // // // // // //               },
// // // // // // // // // // // //             );
// // // // // // // // // // // //           }
// // // // // // // // // // // //         },
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }

// // // // // // // // // // // //   void _showOfferDetails(VendorOffer offer, User user) {
// // // // // // // // // // // //     showModalBottomSheet(
// // // // // // // // // // // //       context: context,
// // // // // // // // // // // //       shape: const RoundedRectangleBorder(
// // // // // // // // // // // //         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //       builder: (context) {
// // // // // // // // // // // //         return Padding(
// // // // // // // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // // // // // // //           child: Column(
// // // // // // // // // // // //             mainAxisSize: MainAxisSize.min,
// // // // // // // // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // //             children: [
// // // // // // // // // // // //               Text(
// // // // // // // // // // // //                 user.userName,
// // // // // // // // // // // //                 style:
// // // // // // // // // // // //                     const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // // // // // // // // // // //               ),
// // // // // // // // // // // //               const SizedBox(height: 8),
// // // // // // // // // // // //               Text(user.email, style: const TextStyle(color: Colors.grey)),
// // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // //               Text('Price: \$${offer.price}',
// // // // // // // // // // // //                   style: const TextStyle(fontSize: 18)),
// // // // // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // // // // //               Text('Note:',
// // // // // // // // // // // //                   style: const TextStyle(
// // // // // // // // // // // //                       fontSize: 16, fontWeight: FontWeight.bold)),
// // // // // // // // // // // //               Text(offer.note ?? 'No note available.'),
// // // // // // // // // // // //             ],
// // // // // // // // // // // //           ),
// // // // // // // // // // // //         );
// // // // // // // // // // // //       },
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }

// // // // // // // // // // // //   Future<void> _acceptOffer(String offerId) async {
// // // // // // // // // // // //     try {
// // // // // // // // // // // //       final response = await http.put(
// // // // // // // // // // // //         Uri.parse(
// // // // // // // // // // // //             'https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted/$offerId'),
// // // // // // // // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // // // // // // // //       );
// // // // // // // // // // // //       print(json.decode(response.body)); // Debugging statement

// // // // // // // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // //         setState(() {
// // // // // // // // // // // //           offers = fetchVendorOffers(); // Refresh offers after updating
// // // // // // // // // // // //         });
// // // // // // // // // // // //       } else {
// // // // // // // // // // // //         throw Exception('Failed to update offer state');
// // // // // // // // // // // //       }
// // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // //       // Show error message
// // // // // // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // // // // //         SnackBar(content: Text('Error updating offer: $e')),
// // // // // // // // // // // //       );
// // // // // // // // // // // //     }
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // class OfferCard extends StatelessWidget {
// // // // // // // // // // // //   final String userName;
// // // // // // // // // // // //   final String email;
// // // // // // // // // // // //   final String category;
// // // // // // // // // // // //   final double price;
// // // // // // // // // // // //   final String? imageUrl;
// // // // // // // // // // // //   final VoidCallback onTap;
// // // // // // // // // // // //   final VoidCallback onAccept;

// // // // // // // // // // // //   const OfferCard({
// // // // // // // // // // // //     required this.userName,
// // // // // // // // // // // //     required this.email,
// // // // // // // // // // // //     required this.category,
// // // // // // // // // // // //     required this.price,
// // // // // // // // // // // //     this.imageUrl,
// // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // //     required this.onAccept,
// // // // // // // // // // // //     Key? key,
// // // // // // // // // // // //   }) : super(key: key);

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Card(
// // // // // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // // // // //       elevation: 4,
// // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // //         leading: imageUrl != null
// // // // // // // // // // // //             ? CircleAvatar(
// // // // // // // // // // // //                 backgroundImage: NetworkImage(imageUrl!),
// // // // // // // // // // // //               )
// // // // // // // // // // // //             : const CircleAvatar(
// // // // // // // // // // // //                 child: Icon(Icons.person),
// // // // // // // // // // // //               ),
// // // // // // // // // // // //         title:
// // // // // // // // // // // //             Text(userName, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // //         subtitle: Column(
// // // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // //           children: [
// // // // // // // // // // // //             Text(email),
// // // // // // // // // // // //             Text(category),
// // // // // // // // // // // //           ],
// // // // // // // // // // // //         ),
// // // // // // // // // // // //         trailing: Column(
// // // // // // // // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // //           children: [
// // // // // // // // // // // //             Text('\$$price',
// // // // // // // // // // // //                 style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // // // // //             ElevatedButton(
// // // // // // // // // // // //               onPressed: onAccept,
// // // // // // // // // // // //               child: const Text('Accept'),
// // // // // // // // // // // //             ),
// // // // // // // // // // // //           ],
// // // // // // // // // // // //         ),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // class VendorOffer {
// // // // // // // // // // // //   final String id;
// // // // // // // // // // // //   final String vendorProfileId;
// // // // // // // // // // // //   final String vendorUserId;
// // // // // // // // // // // //   final String category;
// // // // // // // // // // // //   final double price;
// // // // // // // // // // // //   final bool state;
// // // // // // // // // // // //   final String? note;

// // // // // // // // // // // //   VendorOffer({
// // // // // // // // // // // //     required this.id,
// // // // // // // // // // // //     required this.vendorProfileId,
// // // // // // // // // // // //     required this.vendorUserId,
// // // // // // // // // // // //     required this.category,
// // // // // // // // // // // //     required this.price,
// // // // // // // // // // // //     required this.state,
// // // // // // // // // // // //     this.note,
// // // // // // // // // // // //   });

// // // // // // // // // // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // //     return VendorOffer(
// // // // // // // // // // // //       id: json['Id'] ?? '',
// // // // // // // // // // // //       vendorProfileId: json['vendorProfileId'] ?? '',
// // // // // // // // // // // //       vendorUserId: json['vendorUserId'] ?? '', // Ensure this field is used
// // // // // // // // // // // //       category: json['category'] ?? 'Unknown',
// // // // // // // // // // // //       price: json['price']?.toDouble() ?? 0.0,
// // // // // // // // // // // //       state: json['state'] ?? false,
// // // // // // // // // // // //       note: json['note'],
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // class VenderProfileDto {
// // // // // // // // // // // //   final String id;
// // // // // // // // // // // //   final String userId; // Updated property name
// // // // // // // // // // // //   final String categoryId;
// // // // // // // // // // // //   final String? bio;
// // // // // // // // // // // //   final int? experience;

// // // // // // // // // // // //   VenderProfileDto({
// // // // // // // // // // // //     required this.id,
// // // // // // // // // // // //     required this.userId, // Updated property name
// // // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // // //     this.bio,
// // // // // // // // // // // //     this.experience,
// // // // // // // // // // // //   });

// // // // // // // // // // // //   factory VenderProfileDto.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // //     return VenderProfileDto(
// // // // // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // // // // //       userId: json['userId'] ?? '', // JSON key remains 'userId'
// // // // // // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // // // // // //       bio: json['bio'],
// // // // // // // // // // // //       experience: json['experience'],
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // class User {
// // // // // // // // // // // //   final String id;
// // // // // // // // // // // //   final String userName; // updated field
// // // // // // // // // // // //   final String email;
// // // // // // // // // // // //   final String? image;

// // // // // // // // // // // //   User({
// // // // // // // // // // // //     required this.id,
// // // // // // // // // // // //     required this.userName,
// // // // // // // // // // // //     required this.email,
// // // // // // // // // // // //     this.image,
// // // // // // // // // // // //   });

// // // // // // // // // // // //   factory User.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // //     return User(
// // // // // // // // // // // //       id: json['Id'] ?? '',
// // // // // // // // // // // //       userName: json['userName'] ?? '',
// // // // // // // // // // // //       email: json['email'] ?? '',
// // // // // // // // // // // //       image: json['image'],
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // Future<VenderProfileDto> fetchVenderProfile(String vendorProfileId) async {
// // // // // // // // // // // //   final response = await http.get(Uri.parse(
// // // // // // // // // // // //       'https://192.168.0.109:7127/api/VenderProfile/$vendorProfileId'));
// // // // // // // // // // // //   print('Response: ${json.decode(response.body)}'); // Debugging statement

// // // // // // // // // // // //   if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // //     final Map<String, dynamic> data = json.decode(response.body);

// // // // // // // // // // // //     // Create the profile object and then print the user ID before returning it
// // // // // // // // // // // //     final profile = VenderProfileDto.fromJson(data);
// // // // // // // // // // // //     print('Vendor Profile ID: ${profile.id}');
// // // // // // // // // // // //     print('Vendor User ID: ${profile.userId}');

// // // // // // // // // // // //     return profile;
// // // // // // // // // // // //   } else {
// // // // // // // // // // // //     throw Exception('Failed to load vendor profile');
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // Future<User> fetchUserDetails(String userId) async {
// // // // // // // // // // // //   final response =
// // // // // // // // // // // //       await http.get(Uri.parse('https://192.168.0.109:7127/api/User/$userId'));
// // // // // // // // // // // //   print('Response: ${json.decode(response.body)}'); // Debugging statement

// // // // // // // // // // // //   if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // // // // // //     final Map<String, dynamic> data = json.decode(response.body);
// // // // // // // // // // // //     print('User Data: $data'); // Debugging statement
// // // // // // // // // // // //     return User.fromJson(data);
// // // // // // // // // // // //   } else {
// // // // // // // // // // // //     throw Exception('Failed to load user details');
// // // // // // // // // // // //   }
// // // // // // // // // // // // }
// // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // import 'dart:convert';
// // // // // // // // // import 'package:http/http.dart' as http;

// // // // // // // // // class OrdersScreen extends StatefulWidget {
// // // // // // // // //   final String userId;

// // // // // // // // //   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

// // // // // // // // //   @override
// // // // // // // // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // // // // // // // }

// // // // // // // // // class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin {
// // // // // // // // //   late TabController _tabController;
// // // // // // // // //   late Future<List<Mission>> missions;

// // // // // // // // //   @override
// // // // // // // // //   void initState() {
// // // // // // // // //     super.initState();
// // // // // // // // //     _tabController = TabController(length: 2, vsync: this);
// // // // // // // // //     missions = fetchMissions();
// // // // // // // // //   }

// // // // // // // // //   Future<List<Mission>> fetchMissions() async {
// // // // // // // // //     try {
// // // // // // // // //       final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));

// // // // // // // // //       if (response.statusCode == 200) {
// // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // //         return data.map((json) => Mission.fromJson(json)).toList();
// // // // // // // // //       } else {
// // // // // // // // //         throw Exception('Failed to load missions');
// // // // // // // // //       }
// // // // // // // // //     } catch (e) {
// // // // // // // // //       throw Exception('Error fetching missions: $e');
// // // // // // // // //     }
// // // // // // // // //   }

// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Scaffold(
// // // // // // // // //       appBar: AppBar(
// // // // // // // // //         title: const Text(
// // // // // // // // //           'User Missions',
// // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // //         ),
// // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // //         elevation: 1,
// // // // // // // // //         bottom: TabBar(
// // // // // // // // //           controller: _tabController,
// // // // // // // // //           labelColor: Colors.blue,
// // // // // // // // //           unselectedLabelColor: Colors.grey,
// // // // // // // // //           indicatorColor: Colors.blue,
// // // // // // // // //           tabs: const [
// // // // // // // // //             Tab(text: 'All Missions'),
// // // // // // // // //             Tab(text: 'Scheduled Missions'),
// // // // // // // // //           ],
// // // // // // // // //         ),
// // // // // // // // //       ),
// // // // // // // // //       body: FutureBuilder<List<Mission>>(
// // // // // // // // //         future: missions,
// // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // //             return const Center(child: Text('No missions available'));
// // // // // // // // //           } else {
// // // // // // // // //             final allMissions = snapshot.data!;
// // // // // // // // //             final scheduledMissions = allMissions.where((mission) => mission.state == MissionState.Scheduled).toList();

// // // // // // // // //             return TabBarView(
// // // // // // // // //               controller: _tabController,
// // // // // // // // //               children: [
// // // // // // // // //                 _buildMissionList(allMissions),
// // // // // // // // //                 _buildMissionList(scheduledMissions),
// // // // // // // // //               ],
// // // // // // // // //             );
// // // // // // // // //           }
// // // // // // // // //         },
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }

// // // // // // // // //   Widget _buildMissionList(List<Mission> missions) {
// // // // // // // // //     return ListView.builder(
// // // // // // // // //       itemCount: missions.length,
// // // // // // // // //       padding: const EdgeInsets.all(16),
// // // // // // // // //       itemBuilder: (context, index) {
// // // // // // // // //         final mission = missions[index];
// // // // // // // // //         return MissionCard(
// // // // // // // // //           mission: mission,
// // // // // // // // //           onTap: () => _showVendorOffers(mission),
// // // // // // // // //         );
// // // // // // // // //       },
// // // // // // // // //     );
// // // // // // // // //   }

// // // // // // // // //   void _showVendorOffers(Mission mission) {
// // // // // // // // //     Navigator.push(
// // // // // // // // //       context,
// // // // // // // // //       MaterialPageRoute(
// // // // // // // // //         builder: (context) => VendorOffersScreen(missionId: mission.id),
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // // // Widget to display each mission card
// // // // // // // // // class MissionCard extends StatelessWidget {
// // // // // // // // //   final Mission mission;
// // // // // // // // //   final VoidCallback onTap;

// // // // // // // // //   const MissionCard({
// // // // // // // // //     required this.mission,
// // // // // // // // //     required this.onTap,
// // // // // // // // //     Key? key,
// // // // // // // // //   }) : super(key: key);

// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Card(
// // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // //       elevation: 4,
// // // // // // // // //       child: ListTile(
// // // // // // // // //         onTap: onTap,
// // // // // // // // //         title: Text(mission.name, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // //         subtitle: Column(
// // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // //           children: [
// // // // // // // // //             Text('State: ${mission.state}'),
// // // // // // // // //             Text('Day: ${mission.day}'),
// // // // // // // // //           ],
// // // // // // // // //         ),
// // // // // // // // //         trailing: mission.image != null
// // // // // // // // //             ? Image.network(mission.image!, width: 50, height: 50, fit: BoxFit.cover)
// // // // // // // // //             : const SizedBox.shrink(),
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // // // Model class for Mission
// // // // // // // // // class Mission {
// // // // // // // // //   final String id;
// // // // // // // // //   final String name;
// // // // // // // // //   final MissionState state;
// // // // // // // // //   final String categoryId;
// // // // // // // // //   final String userId;
// // // // // // // // //   final DateTime day;
// // // // // // // // //   final String location;
// // // // // // // // //   final String note;
// // // // // // // // //   final String? image;
// // // // // // // // //   final String? details;
// // // // // // // // //   final int? room;
// // // // // // // // //   final String? grade;
// // // // // // // // //   final String? hours;

// // // // // // // // //   Mission({
// // // // // // // // //     required this.id,
// // // // // // // // //     required this.name,
// // // // // // // // //     required this.state,
// // // // // // // // //     required this.categoryId,
// // // // // // // // //     required this.userId,
// // // // // // // // //     required this.day,
// // // // // // // // //     required this.location,
// // // // // // // // //     required this.note,
// // // // // // // // //     this.image,
// // // // // // // // //     this.details,
// // // // // // // // //     this.room,
// // // // // // // // //     this.grade,
// // // // // // // // //     this.hours,
// // // // // // // // //   });

// // // // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // // // //     return Mission(
// // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // //       name: json['name'] ?? '',
// // // // // // // // //       state: MissionState.values[json['state'] ?? 0],
// // // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // // //       userId: json['userId'] ?? '',
// // // // // // // // //       day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
// // // // // // // // //       location: json['location'] ?? '',
// // // // // // // // //       note: json['note'] ?? '',
// // // // // // // // //       image: json['image'],
// // // // // // // // //       details: json['details'],
// // // // // // // // //       room: json['room'],
// // // // // // // // //       grade: json['grade'],
// // // // // // // // //       hours: json['hours'],
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // // enum MissionState {
// // // // // // // // //   Pending,
// // // // // // // // //   Scheduled,
// // // // // // // // //   Completed,
// // // // // // // // //   Cancelled,
// // // // // // // // // }

// // // // // // // // // // Screen to display vendor offers for a specific mission
// // // // // // // // // class VendorOffersScreen extends StatefulWidget {
// // // // // // // // //   final String missionId;

// // // // // // // // //   const VendorOffersScreen({required this.missionId, Key? key}) : super(key: key);

// // // // // // // // //   @override
// // // // // // // // //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // // // // // // // // }

// // // // // // // // // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// // // // // // // // //   late Future<List<VendorOffer>> offers;

// // // // // // // // //   @override
// // // // // // // // //   void initState() {
// // // // // // // // //     super.initState();
// // // // // // // // //     offers = fetchVendorOffers();
// // // // // // // // //   }

// // // // // // // // //   Future<List<VendorOffer>> fetchVendorOffers() async {
// // // // // // // // //     try {
// // // // // // // // //       final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));

// // // // // // // // //       if (response.statusCode == 200) {
// // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // //         return data.map((json) => VendorOffer.fromJson(json)).toList();
// // // // // // // // //       } else {
// // // // // // // // //         throw Exception('Failed to load offers');
// // // // // // // // //       }
// // // // // // // // //     } catch (e) {
// // // // // // // // //       throw Exception('Error fetching offers: $e');
// // // // // // // // //     }
// // // // // // // // //   }

// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Scaffold(
// // // // // // // // //       appBar: AppBar(
// // // // // // // // //         title: const Text(
// // // // // // // // //           'Vendor Offers',
// // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // //         ),
// // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // //         elevation: 1,
// // // // // // // // //       ),
// // // // // // // // //       body: FutureBuilder<List<VendorOffer>>(
// // // // // // // // //         future: offers,
// // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // //             return const Center(child: Text('No offers available'));
// // // // // // // // //           } else {
// // // // // // // // //             final allOffers = snapshot.data!;
// // // // // // // // //             return ListView.builder(
// // // // // // // // //               itemCount: allOffers.length,
// // // // // // // // //               padding: const EdgeInsets.all(16),
// // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // //                 final offer = allOffers[index];
// // // // // // // // //                 return OfferCard(
// // // // // // // // //                   // vendorName: offer.vendorName,
// // // // // // // // //                   // vendorEmail: offer.vendorEmail,
// // // // // // // // //                   // vendorImage: offer.vendorImage,
// // // // // // // // //                   category: offer.category,
// // // // // // // // //                   price: offer.price,
// // // // // // // // //                   onTap: () => _showOfferDetails(offer),
// // // // // // // // //                 );
// // // // // // // // //               },
// // // // // // // // //             );
// // // // // // // // //           }
// // // // // // // // //         },
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }

// // // // // // // // //   void _showOfferDetails(VendorOffer offer) {
// // // // // // // // //     showModalBottomSheet(
// // // // // // // // //       context: context,
// // // // // // // // //       shape: const RoundedRectangleBorder(
// // // // // // // // //         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// // // // // // // // //       ),
// // // // // // // // //       builder: (context) {
// // // // // // // // //         return Padding(
// // // // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // // // //           child: Column(
// // // // // // // // //             mainAxisSize: MainAxisSize.min,
// // // // // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // //             children: [
// // // // // // // // //               // Text(
// // // // // // // // //               //   offer.vendorName,
// // // // // // // // //               //   style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // // // // // // // //               // ),
// // // // // // // // //               // const SizedBox(height: 8),
// // // // // // // // //               // Text(offer.vendorEmail, style: const TextStyle(fontSize: 16, color: Colors.grey)),
// // // // // // // // //               // const SizedBox(height: 16),
// // // // // // // // //               Text('Price: \$${offer.price}', style: const TextStyle(fontSize: 18)),
// // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // //               Text('Note:', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
// // // // // // // // //               Text(offer.note ?? 'No note available.'),
// // // // // // // // //               const SizedBox(height: 16),
// // // // // // // // //               ElevatedButton(
// // // // // // // // //                 onPressed: offer.state ? null : () {
// // // // // // // // //                   _updateOfferState(offer.id, true); // Change state to "Accepted"
// // // // // // // // //                   Navigator.pop(context); // Close modal
// // // // // // // // //                 },
// // // // // // // // //                 child: Text(offer.state ? 'Already Accepted' : 'Accept Offer'),
// // // // // // // // //               ),
// // // // // // // // //             ],
// // // // // // // // //           ),
// // // // // // // // //         );
// // // // // // // // //       },
// // // // // // // // //     );
// // // // // // // // //   }

// // // // // // // // //   Future<void> _updateOfferState(String offerId, bool newState) async {
// // // // // // // // //     try {
// // // // // // // // //       final response = await http.put(
// // // // // // // // //         Uri.parse('https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted//$offerId'),
// // // // // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // // // // //         body: json.encode({'state': newState}),
// // // // // // // // //       );

// // // // // // // // //       if (response.statusCode == 204) {
// // // // // // // // //         setState(() {
// // // // // // // // //           offers = fetchVendorOffers(); // Refresh offers after updating
// // // // // // // // //         });
// // // // // // // // //       } else {
// // // // // // // // //         throw Exception('Failed to update offer state');
// // // // // // // // //       }
// // // // // // // // //     } catch (e) {
// // // // // // // // //       // Show error message
// // // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // //         SnackBar(content: Text('Error updating offer: $e')),
// // // // // // // // //       );
// // // // // // // // //     }
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // // // Widget to display each offer card
// // // // // // // // // class OfferCard extends StatelessWidget {
// // // // // // // // //   //final String vendorName;
// // // // // // // // //   //final String vendorEmail;
// // // // // // // // //   final String category;
// // // // // // // // //   final double price;
// // // // // // // // //  // final String? vendorImage;
// // // // // // // // //   final VoidCallback onTap;

// // // // // // // // //   const OfferCard({
// // // // // // // // //     //required this.vendorName,
// // // // // // // // //     //required this.vendorEmail,
// // // // // // // // //     required this.category,
// // // // // // // // //     required this.price,
// // // // // // // // //     required this.onTap,
// // // // // // // // //     //this.vendorImage,
// // // // // // // // //     Key? key,
// // // // // // // // //   }) : super(key: key);

// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Card(
// // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // //       elevation: 4,
// // // // // // // // //       child: ListTile(
// // // // // // // // //         onTap: onTap,
// // // // // // // // //         leading: CircleAvatar(
// // // // // // // // //           radius: 30,
// // // // // // // // //           backgroundImage: vendorImage != null ? NetworkImage(vendorImage!) : null,
// // // // // // // // //           child: vendorImage == null ? const Icon(Icons.person, size: 30) : null,
// // // // // // // // //         ),
// // // // // // // // //         title: Text(vendorName, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // //         subtitle: Column(
// // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // //           children: [
// // // // // // // // //             Text(vendorEmail),
// // // // // // // // //             Text(category),
// // // // // // // // //           ],
// // // // // // // // //         ),
// // // // // // // // //         trailing: Text('\$$price', style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // // // Model class for VendorOffer
// // // // // // // // // class VendorOffer {
// // // // // // // // //   final String id;
// // // // // // // // //   //final String vendorName;
// // // // // // // // //   //final String vendorEmail;
// // // // // // // // //   final String category;
// // // // // // // // //   final double price;
// // // // // // // // //   final bool state;
// // // // // // // // //   final String? note;
// // // // // // // // //   //final String? vendorImage;

// // // // // // // // //   VendorOffer({
// // // // // // // // //     required this.id,
// // // // // // // // //     //required this.vendorName,
// // // // // // // // //     //required this.vendorEmail,
// // // // // // // // //     required this.category,
// // // // // // // // //     required this.price,
// // // // // // // // //     required this.state,
// // // // // // // // //     this.note,
// // // // // // // // //    // this.vendorImage,
// // // // // // // // //   });

// // // // // // // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // // // // // // // //     return VendorOffer(
// // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // //       //vendorName: json['venderProfile']?['user']?['userName'] ?? 'Unknown',
// // // // // // // // //      // vendorEmail: json['venderProfile']?['user']?['email'] ?? 'Unknown',
// // // // // // // // //       category: json['venderProfile']?['category']?['name'] ?? 'Unknown',
// // // // // // // // //       price: json['price']?.toDouble() ?? 0.0,
// // // // // // // // //       state: json['state'] ?? false,
// // // // // // // // //       note: json['note'],
// // // // // // // // //     //  vendorImage: json['venderProfile']?['user']?['image'],
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }
// // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // import 'dart:convert';
// // // // // // // // import 'package:http/http.dart' as http;
// // // // // // // // import 'vendor_details_screen.dart';

// // // // // // // // class OrdersScreen extends StatefulWidget {
// // // // // // // //   final String userId;

// // // // // // // //   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

// // // // // // // //   @override
// // // // // // // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // // // // // // }

// // // // // // // // class _OrdersScreenState extends State<OrdersScreen>
// // // // // // // //     with SingleTickerProviderStateMixin {
// // // // // // // //   late TabController _tabController;
// // // // // // // //   late Future<List<Mission>> missions;

// // // // // // // //   @override
// // // // // // // //   void initState() {
// // // // // // // //     super.initState();
// // // // // // // //     _tabController = TabController(length: 2, vsync: this);
// // // // // // // //     missions = fetchMissions();
// // // // // // // //   }

// // // // // // // //   Future<List<Mission>> fetchMissions() async {
// // // // // // // //     try {
// // // // // // // //       final response = await http.get(Uri.parse(
// // // // // // // //           'https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));

// // // // // // // //       if (response.statusCode == 200) {
// // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // //         return data.map((json) => Mission.fromJson(json)).toList();
// // // // // // // //       } else {
// // // // // // // //         throw Exception('Failed to load missions');
// // // // // // // //       }
// // // // // // // //     } catch (e) {
// // // // // // // //       throw Exception('Error fetching missions: $e');
// // // // // // // //     }
// // // // // // // //   }

// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return Scaffold(
// // // // // // // //       appBar: AppBar(
// // // // // // // //         title: const Text(
// // // // // // // //           'User Missions',
// // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // //         ),
// // // // // // // //         backgroundColor: Colors.white,
// // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // //         elevation: 1,
// // // // // // // //         bottom: TabBar(
// // // // // // // //           controller: _tabController,
// // // // // // // //           labelColor: Colors.blue,
// // // // // // // //           unselectedLabelColor: Colors.grey,
// // // // // // // //           indicatorColor: Colors.blue,
// // // // // // // //           tabs: const [
// // // // // // // //             Tab(text: 'All Missions'),
// // // // // // // //             Tab(text: 'Scheduled Missions'),
// // // // // // // //           ],
// // // // // // // //         ),
// // // // // // // //       ),
// // // // // // // //       body: FutureBuilder<List<Mission>>(
// // // // // // // //         future: missions,
// // // // // // // //         builder: (context, snapshot) {
// // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // //             return const Center(child: Text('No missions available'));
// // // // // // // //           } else {
// // // // // // // //             final allMissions = snapshot.data!;
// // // // // // // //             final scheduledMissions = allMissions
// // // // // // // //                 .where((mission) => mission.state == MissionState.Scheduled)
// // // // // // // //                 .toList();

// // // // // // // //             return TabBarView(
// // // // // // // //               controller: _tabController,
// // // // // // // //               children: [
// // // // // // // //                 _buildMissionList(allMissions),
// // // // // // // //                 _buildMissionList(scheduledMissions),
// // // // // // // //               ],
// // // // // // // //             );
// // // // // // // //           }
// // // // // // // //         },
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }

// // // // // // // //   Widget _buildMissionList(List<Mission> missions) {
// // // // // // // //     return ListView.builder(
// // // // // // // //       itemCount: missions.length,
// // // // // // // //       padding: const EdgeInsets.all(16),
// // // // // // // //       itemBuilder: (context, index) {
// // // // // // // //         final mission = missions[index];
// // // // // // // //         return MissionCard(
// // // // // // // //           mission: mission,
// // // // // // // //           onTap: () => _showVendorOffers(mission),
// // // // // // // //         );
// // // // // // // //       },
// // // // // // // //     );
// // // // // // // //   }

// // // // // // // //   void _showVendorOffers(Mission mission) {
// // // // // // // //     Navigator.push(
// // // // // // // //       context,
// // // // // // // //       MaterialPageRoute(
// // // // // // // //         builder: (context) => VendorOffersScreen(missionId: mission.id),
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }

// // // // // // // // // Widget to display each mission card
// // // // // // // // class MissionCard extends StatelessWidget {
// // // // // // // //   final Mission mission;
// // // // // // // //   final VoidCallback onTap;

// // // // // // // //   const MissionCard({
// // // // // // // //     required this.mission,
// // // // // // // //     required this.onTap,
// // // // // // // //     Key? key,
// // // // // // // //   }) : super(key: key);

// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return Card(
// // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // //       elevation: 4,
// // // // // // // //       child: ListTile(
// // // // // // // //         onTap: onTap,
// // // // // // // //         title: Text(mission.name,
// // // // // // // //             style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // //         subtitle: Column(
// // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // //           children: [
// // // // // // // //             Text('State: ${mission.state}'),
// // // // // // // //             Text('Day: ${mission.day}'),
// // // // // // // //           ],
// // // // // // // //         ),
// // // // // // // //         trailing: mission.image != null
// // // // // // // //             ? Image.network(mission.image!,
// // // // // // // //                 width: 50, height: 50, fit: BoxFit.cover)
// // // // // // // //             : const SizedBox.shrink(),
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }

// // // // // // // // // Model class for Mission
// // // // // // // // class Mission {
// // // // // // // //   final String id;
// // // // // // // //   final String name;
// // // // // // // //   final MissionState state;
// // // // // // // //   final String categoryId;
// // // // // // // //   final String userId;
// // // // // // // //   final DateTime day;
// // // // // // // //   final String location;
// // // // // // // //   final String note;
// // // // // // // //   final String? image;
// // // // // // // //   final String? details;
// // // // // // // //   final int? room;
// // // // // // // //   final String? grade;
// // // // // // // //   final String? hours;

// // // // // // // //   Mission({
// // // // // // // //     required this.id,
// // // // // // // //     required this.name,
// // // // // // // //     required this.state,
// // // // // // // //     required this.categoryId,
// // // // // // // //     required this.userId,
// // // // // // // //     required this.day,
// // // // // // // //     required this.location,
// // // // // // // //     required this.note,
// // // // // // // //     this.image,
// // // // // // // //     this.details,
// // // // // // // //     this.room,
// // // // // // // //     this.grade,
// // // // // // // //     this.hours,
// // // // // // // //   });

// // // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // // //     return Mission(
// // // // // // // //       id: json['id'] ?? '',
// // // // // // // //       name: json['name'] ?? '',
// // // // // // // //       state: MissionState.values[json['state'] ?? 0],
// // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // //       userId: json['userId'] ?? '',
// // // // // // // //       day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
// // // // // // // //       location: json['location'] ?? '',
// // // // // // // //       note: json['note'] ?? '',
// // // // // // // //       image: json['image'],
// // // // // // // //       details: json['details'],
// // // // // // // //       room: json['room'],
// // // // // // // //       grade: json['grade'],
// // // // // // // //       hours: json['hours'],
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }

// // // // // // // // enum MissionState {
// // // // // // // //   Pending,
// // // // // // // //   Scheduled,
// // // // // // // //   Completed,
// // // // // // // //   Cancelled,
// // // // // // // // }

// // // // // // // // // Screen to display vendor offers for a specific mission
// // // // // // // // class VendorOffersScreen extends StatefulWidget {
// // // // // // // //   final String missionId;

// // // // // // // //   const VendorOffersScreen({required this.missionId, Key? key})
// // // // // // // //       : super(key: key);

// // // // // // // //   @override
// // // // // // // //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // // // // // // // }

// // // // // // // // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// // // // // // // //   late Future<List<VendorOffer>> offers;

// // // // // // // //   @override
// // // // // // // //   void initState() {
// // // // // // // //     super.initState();
// // // // // // // //     offers = fetchVendorOffers();
// // // // // // // //   }

// // // // // // // //   Future<List<VendorOffer>> fetchVendorOffers() async {
// // // // // // // //     try {
// // // // // // // //       final response = await http.get(Uri.parse(
// // // // // // // //           'https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));

// // // // // // // //       if (response.statusCode == 200) {
// // // // // // // //         final List<dynamic> data = json.decode(response.body);

// // // // // // // //         // Fetch vendor profiles and user details
// // // // // // // //         List<VendorOffer> vendorOffers = [];
// // // // // // // //         for (var json in data) {
// // // // // // // //           var offer = VendorOffer.fromJson(json);
// // // // // // // //           offer = await fetchVendorDetails(
// // // // // // // //               offer); // Fetch and update vendor details
// // // // // // // //           vendorOffers.add(offer);
// // // // // // // //         }

// // // // // // // //         return vendorOffers;
// // // // // // // //       } else {
// // // // // // // //         throw Exception('Failed to load offers');
// // // // // // // //       }
// // // // // // // //     } catch (e) {
// // // // // // // //       throw Exception('Error fetching offers: $e');
// // // // // // // //     }
// // // // // // // //   }

// // // // // // // //   // Future<VendorOffer> fetchVendorDetails(VendorOffer offer) async {
// // // // // // // //   //   try {
// // // // // // // //   //     // Fetch vendor profile
// // // // // // // //   //     final profileResponse = await http.get(Uri.parse(
// // // // // // // //   //         'https://192.168.0.109:7127/api/VenderProfile/${offer.venderProfileId}'));
// // // // // // // //   //     if (profileResponse.statusCode == 200) {
// // // // // // // //   //       final profileData = json.decode(profileResponse.body);

// // // // // // // //   //       // Fetch user details
// // // // // // // //   //       final userId = profileData['userId'];
// // // // // // // //   //       final userResponse = await http
// // // // // // // //   //           .get(Uri.parse('https://192.168.0.109:7127/api/User/$userId'));
// // // // // // // //   //       if (userResponse.statusCode == 200) {
// // // // // // // //   //         final userData = json.decode(userResponse.body);
// // // // // // // //   //         offer.vendorName = userData['userName'];
// // // // // // // //   //         offer.vendorEmail = userData['email'];
// // // // // // // //   //         offer.vendorImage = userData['image'];
// // // // // // // //   //       //  offer.age = userData['age'];
// // // // // // // //   //       //  offer.useradress = userData['userAddress'];
// // // // // // // //   //       /// offer.phone = userData//
// // // // // // // //   //       //  offer.location = userData['location'];
// // // // // // // //   //        // offer.gender= userData['Gender']
// // // // // // // //   //       }
// // // // // // // //   //     }
// // // // // // // //   //     return offer;
// // // // // // // //   //   } catch (e) {
// // // // // // // //   //     throw Exception('Error fetching vendor details: $e');
// // // // // // // //   //   }
// // // // // // // //   // }
// // // // // // // // Future<VendorOffer> fetchVendorDetails(VendorOffer offer) async {
// // // // // // // //   try {
// // // // // // // //     // Fetch vendor profile
// // // // // // // //     final profileResponse = await http.get(Uri.parse(
// // // // // // // //         'https://192.168.0.109:7127/api/VenderProfile/${offer.venderProfileId}'));
// // // // // // // //     if (profileResponse.statusCode == 200) {
// // // // // // // //       final profileData = json.decode(profileResponse.body);

// // // // // // // //       // Fetch user details
// // // // // // // //       final userId = profileData['userId'];
// // // // // // // //       final userResponse = await http
// // // // // // // //           .get(Uri.parse('https://192.168.0.109:7127/api/User/$userId'));
// // // // // // // //       if (userResponse.statusCode == 200) {
// // // // // // // //         final userData = json.decode(userResponse.body);
// // // // // // // //         offer.vendorName = userData['userName'];
// // // // // // // //         offer.vendorEmail = userData['email'];
// // // // // // // //         offer.vendorImage = userData['image'];
// // // // // // // //         offer.vendorAge = userData['age'];
// // // // // // // //         offer.vendorAddress = userData['userAddress'];
// // // // // // // //         offer.vendorLocation = userData['location'];
// // // // // // // //       }
// // // // // // // //     }
// // // // // // // //     return offer;
// // // // // // // //   } catch (e) {
// // // // // // // //     throw Exception('Error fetching vendor details: $e');
// // // // // // // //   }
// // // // // // // // }
// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return Scaffold(
// // // // // // // //       appBar: AppBar(
// // // // // // // //         title: const Text(
// // // // // // // //           'Vendor Offers',
// // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // //         ),
// // // // // // // //         backgroundColor: Colors.white,
// // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // //         elevation: 1,
// // // // // // // //       ),
// // // // // // // //       body: FutureBuilder<List<VendorOffer>>(
// // // // // // // //         future: offers,
// // // // // // // //         builder: (context, snapshot) {
// // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // //             return const Center(child: Text('No offers available'));
// // // // // // // //           } else {
// // // // // // // //             final allOffers = snapshot.data!;
// // // // // // // //             return ListView.builder(
// // // // // // // //               itemCount: allOffers.length,
// // // // // // // //               padding: const EdgeInsets.all(16),
// // // // // // // //               itemBuilder: (context, index) {
// // // // // // // //                 final offer = allOffers[index];
// // // // // // // //                 return OfferCard(
// // // // // // // //                   vendorName: offer.vendorName,
// // // // // // // //                   vendorEmail: offer.vendorEmail,
// // // // // // // //                   vendorImage: offer.vendorImage,
// // // // // // // //                   category: offer.category,
// // // // // // // //                   price: offer.price,
// // // // // // // //                   onTap: () => _showOfferDetails(offer),
// // // // // // // //                 );
// // // // // // // //               },
// // // // // // // //             );
// // // // // // // //           }
// // // // // // // //         },
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }

// // // // // // // //   void _showOfferDetails(VendorOffer offer) {
// // // // // // // //     showModalBottomSheet(
// // // // // // // //       context: context,
// // // // // // // //       shape: const RoundedRectangleBorder(
// // // // // // // //         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// // // // // // // //       ),
// // // // // // // //       builder: (context) {
// // // // // // // //         return Padding(
// // // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // // //           child: Column(
// // // // // // // //             mainAxisSize: MainAxisSize.min,
// // // // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // //             children: [
// // // // // // // //               Text(
// // // // // // // //                 offer.vendorName,
// // // // // // // //                 style:
// // // // // // // //                     const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // // // // // // //               ),
// // // // // // // //               const SizedBox(height: 8),
// // // // // // // //               Text(offer.vendorEmail,
// // // // // // // //                   style: const TextStyle(fontSize: 16, color: Colors.grey)),
// // // // // // // //               const SizedBox(height: 16),
// // // // // // // //               Text('Price: \$${offer.price}',
// // // // // // // //                   style: const TextStyle(fontSize: 18)),
// // // // // // // //               const SizedBox(height: 16),
// // // // // // // //               Text('Note:',
// // // // // // // //                   style: const TextStyle(
// // // // // // // //                       fontSize: 16, fontWeight: FontWeight.bold)),
// // // // // // // //               Text(offer.note ?? 'No note available.'),
// // // // // // // //               const SizedBox(height: 16),
// // // // // // // //               ElevatedButton(
// // // // // // // //                 onPressed: offer.state
// // // // // // // //                     ? null
// // // // // // // //                     : () {
// // // // // // // //                         _updateOfferState(
// // // // // // // //                             offer.id, true); // Change state to "Accepted"
// // // // // // // //                         Navigator.pop(context); // Close modal
// // // // // // // //                       },
// // // // // // // //                 child: Text(offer.state ? 'Already Accepted' : 'Accept Offer'),
// // // // // // // //               ),
// // // // // // // //             ],
// // // // // // // //           ),
// // // // // // // //         );
// // // // // // // //       },
// // // // // // // //     );
// // // // // // // //   }

// // // // // // // //   Future<void> _updateOfferState(String offerId, bool newState) async {
// // // // // // // //     try {
// // // // // // // //       final response = await http.put(
// // // // // // // //         Uri.parse(
// // // // // // // //             'https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted//$offerId'),
// // // // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // // // //         body: json.encode({'state': newState}),
// // // // // // // //       );

// // // // // // // //       if (response.statusCode == 204) {
// // // // // // // //         setState(() {
// // // // // // // //           offers = fetchVendorOffers(); // Refresh offers after updating
// // // // // // // //         });
// // // // // // // //       } else {
// // // // // // // //         throw Exception('Failed to update offer state');
// // // // // // // //       }
// // // // // // // //     } catch (e) {
// // // // // // // //       // Show error message
// // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // //         SnackBar(content: Text('Error updating offer: $e')),
// // // // // // // //       );
// // // // // // // //     }
// // // // // // // //   }
// // // // // // // // }

// // // // // // // // // Widget to display each offer card
// // // // // // // // // class OfferCard extends StatelessWidget {
// // // // // // // // //   final String vendorName;
// // // // // // // // //   final String vendorEmail;
// // // // // // // // //   final String category;
// // // // // // // // //   final double price;
// // // // // // // // //   final String? vendorImage;
// // // // // // // // //   final VoidCallback onTap;

// // // // // // // // //   const OfferCard({
// // // // // // // // //     required this.vendorName,
// // // // // // // // //     required this.vendorEmail,
// // // // // // // // //     required this.category,
// // // // // // // // //     required this.price,
// // // // // // // // //     required this.onTap,
// // // // // // // // //     this.vendorImage,
// // // // // // // // //     Key? key,
// // // // // // // // //   }) : super(key: key);

// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Card(
// // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // //       elevation: 4,
// // // // // // // // //       child: ListTile(
// // // // // // // // //         onTap: onTap,
// // // // // // // // //         leading: CircleAvatar(
// // // // // // // // //           radius: 30,
// // // // // // // // //           backgroundImage:
// // // // // // // // //               vendorImage != null ? NetworkImage(vendorImage!) : null,
// // // // // // // // //           child:
// // // // // // // // //               vendorImage == null ? const Icon(Icons.person, size: 30) : null,
// // // // // // // // //         ),
// // // // // // // // //         title: GestureDetector(
// // // // // // // // //           onTap: () {
// // // // // // // // //             Navigator.push(
// // // // // // // // //               context,
// // // // // // // // //               MaterialPageRoute(
// // // // // // // // //                 builder: (context) => VendorDetailsScreen(
// // // // // // // // //                   vendorName: vendorName,
// // // // // // // // //                   vendorEmail: vendorEmail,
// // // // // // // // //                   vendorImage: vendorImage,
// // // // // // // // //                 ),
// // // // // // // // //               ),
// // // // // // // // //             );
// // // // // // // // //           },
// // // // // // // // //           child: Text(vendorName,
// // // // // // // // //               style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // //         ),
// // // // // // // // //         subtitle: GestureDetector(
// // // // // // // // //           onTap: () {
// // // // // // // // //             Navigator.push(
// // // // // // // // //               context,
// // // // // // // // //               MaterialPageRoute(
// // // // // // // // //                 builder: (context) => VendorDetailsScreen(
// // // // // // // // //                   vendorName: vendorName,
// // // // // // // // //                   vendorEmail: vendorEmail,
// // // // // // // // //                   vendorImage: vendorImage,
// // // // // // // // //                 ),
// // // // // // // // //               ),
// // // // // // // // //             );
// // // // // // // // //           },
// // // // // // // // //           child: Column(
// // // // // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // //             children: [
// // // // // // // // //               Text(vendorEmail),
// // // // // // // // //               Text(category),
// // // // // // // // //             ],
// // // // // // // // //           ),
// // // // // // // // //         ),
// // // // // // // // //         trailing: Text('\$$price',
// // // // // // // // //             style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }
// // // // // // // // class OfferCard extends StatelessWidget {
// // // // // // // //   final String vendorName;
// // // // // // // //   final String vendorEmail;
// // // // // // // //   final String category;
// // // // // // // //   final double price;
// // // // // // // //   final String? vendorImage;
// // // // // // // //   final int? vendorAge;
// // // // // // // //   final String? vendorAddress;
// // // // // // // //   final String? vendorLocation;
// // // // // // // //   final VoidCallback onTap;

// // // // // // // //   const OfferCard({
// // // // // // // //     required this.vendorName,
// // // // // // // //     required this.vendorEmail,
// // // // // // // //     required this.category,
// // // // // // // //     required this.price,
// // // // // // // //     required this.onTap,
// // // // // // // //     this.vendorImage,
// // // // // // // //     this.vendorAge,
// // // // // // // //     this.vendorAddress,
// // // // // // // //     this.vendorLocation,
// // // // // // // //     Key? key,
// // // // // // // //   }) : super(key: key);

// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return Card(
// // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // //       elevation: 4,
// // // // // // // //       child: ListTile(
// // // // // // // //         onTap: onTap,
// // // // // // // //         leading: CircleAvatar(
// // // // // // // //           radius: 30,
// // // // // // // //           backgroundImage:
// // // // // // // //               vendorImage != null ? NetworkImage(vendorImage!) : null,
// // // // // // // //           child:
// // // // // // // //               vendorImage == null ? const Icon(Icons.person, size: 30) : null,
// // // // // // // //         ),
// // // // // // // //         title: GestureDetector(
// // // // // // // //           onTap: () {
// // // // // // // //             Navigator.push(
// // // // // // // //               context,
// // // // // // // //               MaterialPageRoute(
// // // // // // // //                 builder: (context) => VendorDetailsScreen(
// // // // // // // //                   vendorName: vendorName,
// // // // // // // //                   vendorEmail: vendorEmail,
// // // // // // // //                   vendorImage: vendorImage,
// // // // // // // //                   vendorAge: vendorAge,
// // // // // // // //                   vendorAddress: vendorAddress,
// // // // // // // //                   vendorLocation: vendorLocation,
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //             );
// // // // // // // //           },
// // // // // // // //           child: Text(vendorName,
// // // // // // // //               style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // //         ),
// // // // // // // //         subtitle: GestureDetector(
// // // // // // // //           onTap: () {
// // // // // // // //             Navigator.push(
// // // // // // // //               context,
// // // // // // // //               MaterialPageRoute(
// // // // // // // //                 builder: (context) => VendorDetailsScreen(
// // // // // // // //                   vendorName: vendorName,
// // // // // // // //                   vendorEmail: vendorEmail,
// // // // // // // //                   vendorImage: vendorImage,
// // // // // // // //                   vendorAge: vendorAge,
// // // // // // // //                   vendorAddress: vendorAddress,
// // // // // // // //                   vendorLocation: vendorLocation,
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //             );
// // // // // // // //           },
// // // // // // // //           child: Column(
// // // // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // //             children: [
// // // // // // // //               Text(vendorEmail),
// // // // // // // //               Text(category),
// // // // // // // //             ],
// // // // // // // //           ),
// // // // // // // //         ),
// // // // // // // //         trailing: Text('\$$price',
// // // // // // // //             style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }
// // // // // // // // // Model class for VendorOffer
// // // // // // // // class VendorOffer {
// // // // // // // //   final String id;
// // // // // // // //   final String venderProfileId;
// // // // // // // //   final String missionId;
// // // // // // // //   final String? note;
// // // // // // // //   final double price;
// // // // // // // //   final bool state;
// // // // // // // //   String vendorName;
// // // // // // // //   String vendorEmail;

// // // // // // // //   String? vendorImage;
// // // // // // // //   final String category;

// // // // // // // //   VendorOffer({
// // // // // // // //     required this.id,
// // // // // // // //     required this.venderProfileId,
// // // // // // // //     required this.missionId,
// // // // // // // //     this.note,
// // // // // // // //     required this.price,
// // // // // // // //     required this.state,
// // // // // // // //     required this.vendorName,
// // // // // // // //     required this.vendorEmail,
// // // // // // // //     this.vendorImage,
// // // // // // // //     required this.category,
   
// // // // // // // //   });

// // // // // // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // // // // // // //     return VendorOffer(
// // // // // // // //       id: json['id'] ?? '',
// // // // // // // //       venderProfileId: json['venderProfileId'] ?? '',
// // // // // // // //       missionId: json['missionId'] ?? '',
// // // // // // // //       note: json['note'],
// // // // // // // //       price: json['price']?.toDouble() ?? 0.0,
// // // // // // // //       state: json['state'] ?? false,
// // // // // // // //       vendorName:
// // // // // // // //           'Unknown', // Default value, will be updated in fetchVendorDetails
// // // // // // // //       vendorEmail:
// // // // // // // //           'Unknown', // Default value, will be updated in fetchVendorDetails
// // // // // // // //       vendorImage: null, // Default value, will be updated in fetchVendorDetails
// // // // // // // //       category:
// // // // // // // //           'Unknown', // Default value, will be updated in fetchVendorDetails
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }
// // // // // // // // // //
// // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // import 'dart:convert';
// // // // // // // // // import 'package:http/http.dart' as http;
// // // // // // // // // import 'vendor_details_screen.dart';

// // // // // // // // // class OrdersScreen extends StatefulWidget {
// // // // // // // // //   final String userId;

// // // // // // // // //   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

// // // // // // // // //   @override
// // // // // // // // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // // // // // // // }

// // // // // // // // // class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin {
// // // // // // // // //   late TabController _tabController;
// // // // // // // // //   late Future<List<Mission>> missions;

// // // // // // // // //   @override
// // // // // // // // //   void initState() {
// // // // // // // // //     super.initState();
// // // // // // // // //     _tabController = TabController(length: 2, vsync: this);
// // // // // // // // //     missions = fetchMissions();
// // // // // // // // //   }

// // // // // // // // //   Future<List<Mission>> fetchMissions() async {
// // // // // // // // //     try {
// // // // // // // // //       final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));

// // // // // // // // //       if (response.statusCode == 200) {
// // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // //         return data.map((json) => Mission.fromJson(json)).toList();
// // // // // // // // //       } else {
// // // // // // // // //         throw Exception('Failed to load missions');
// // // // // // // // //       }
// // // // // // // // //     } catch (e) {
// // // // // // // // //       throw Exception('Error fetching missions: $e');
// // // // // // // // //     }
// // // // // // // // //   }

// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Scaffold(
// // // // // // // // //       appBar: AppBar(
// // // // // // // // //         title: const Text(
// // // // // // // // //           'User Missions',
// // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // //         ),
// // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // //         elevation: 1,
// // // // // // // // //         bottom: TabBar(
// // // // // // // // //           controller: _tabController,
// // // // // // // // //           labelColor: Colors.blue,
// // // // // // // // //           unselectedLabelColor: Colors.grey,
// // // // // // // // //           indicatorColor: Colors.blue,
// // // // // // // // //           tabs: const [
// // // // // // // // //             Tab(text: 'All Missions'),
// // // // // // // // //             Tab(text: 'Scheduled Missions'),
// // // // // // // // //           ],
// // // // // // // // //         ),
// // // // // // // // //       ),
// // // // // // // // //       body: FutureBuilder<List<Mission>>(
// // // // // // // // //         future: missions,
// // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // //             return const Center(child: Text('No missions available'));
// // // // // // // // //           } else {
// // // // // // // // //             final allMissions = snapshot.data!;
// // // // // // // // //             final scheduledMissions = allMissions.where((mission) => mission.state == MissionState.Scheduled).toList();

// // // // // // // // //             return TabBarView(
// // // // // // // // //               controller: _tabController,
// // // // // // // // //               children: [
// // // // // // // // //                 _buildMissionList(allMissions),
// // // // // // // // //                 _buildMissionList(scheduledMissions),
// // // // // // // // //               ],
// // // // // // // // //             );
// // // // // // // // //           }
// // // // // // // // //         },
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }

// // // // // // // // //   Widget _buildMissionList(List<Mission> missions) {
// // // // // // // // //     return ListView.builder(
// // // // // // // // //       itemCount: missions.length,
// // // // // // // // //       padding: const EdgeInsets.all(16),
// // // // // // // // //       itemBuilder: (context, index) {
// // // // // // // // //         final mission = missions[index];
// // // // // // // // //         return MissionCard(
// // // // // // // // //           mission: mission,
// // // // // // // // //           onTap: () => _showVendorOffers(mission),
// // // // // // // // //         );
// // // // // // // // //       },
// // // // // // // // //     );
// // // // // // // // //   }

// // // // // // // // //   void _showVendorOffers(Mission mission) {
// // // // // // // // //     Navigator.push(
// // // // // // // // //       context,
// // // // // // // // //       MaterialPageRoute(
// // // // // // // // //         builder: (context) => VendorOffersScreen(missionId: mission.id),
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // // // Widget to display each mission card
// // // // // // // // // class MissionCard extends StatelessWidget {
// // // // // // // // //   final Mission mission;
// // // // // // // // //   final VoidCallback onTap;

// // // // // // // // //   const MissionCard({
// // // // // // // // //     required this.mission,
// // // // // // // // //     required this.onTap,
// // // // // // // // //     Key? key,
// // // // // // // // //   }) : super(key: key);

// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Card(
// // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // //       elevation: 4,
// // // // // // // // //       child: ListTile(
// // // // // // // // //         onTap: onTap,
// // // // // // // // //         title: Text(mission.name, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // //         subtitle: Column(
// // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // //           children: [
// // // // // // // // //             Text('State: ${mission.state}'),
// // // // // // // // //             Text('Day: ${mission.day}'),
// // // // // // // // //           ],
// // // // // // // // //         ),
// // // // // // // // //         trailing: mission.image != null
// // // // // // // // //             ? Image.network(mission.image!, width: 50, height: 50, fit: BoxFit.cover)
// // // // // // // // //             : const SizedBox.shrink(),
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // // // Model class for Mission
// // // // // // // // // class Mission {
// // // // // // // // //   final String id;
// // // // // // // // //   final String name;
// // // // // // // // //   final MissionState state;
// // // // // // // // //   final String categoryId;
// // // // // // // // //   final String userId;
// // // // // // // // //   final DateTime day;
// // // // // // // // //   final String location;
// // // // // // // // //   final String note;
// // // // // // // // //   final String? image;
// // // // // // // // //   final String? details;
// // // // // // // // //   final int? room;
// // // // // // // // //   final String? grade;
// // // // // // // // //   final String? hours;

// // // // // // // // //   Mission({
// // // // // // // // //     required this.id,
// // // // // // // // //     required this.name,
// // // // // // // // //     required this.state,
// // // // // // // // //     required this.categoryId,
// // // // // // // // //     required this.userId,
// // // // // // // // //     required this.day,
// // // // // // // // //     required this.location,
// // // // // // // // //     required this.note,
// // // // // // // // //     this.image,
// // // // // // // // //     this.details,
// // // // // // // // //     this.room,
// // // // // // // // //     this.grade,
// // // // // // // // //     this.hours,
// // // // // // // // //   });

// // // // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // // // //     return Mission(
// // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // //       name: json['name'] ?? '',
// // // // // // // // //       state: MissionState.values[json['state'] ?? 0],
// // // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // // //       userId: json['userId'] ?? '',
// // // // // // // // //       day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
// // // // // // // // //       location: json['location'] ?? '',
// // // // // // // // //       note: json['note'] ?? '',
// // // // // // // // //       image: json['image'],
// // // // // // // // //       details: json['details'],
// // // // // // // // //       room: json['room'],
// // // // // // // // //       grade: json['grade'],
// // // // // // // // //       hours: json['hours'],
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // // enum MissionState {
// // // // // // // // //   Pending,
// // // // // // // // //   Scheduled,
// // // // // // // // //   Completed,
// // // // // // // // //   Cancelled,
// // // // // // // // // }

// // // // // // // // // // Screen to display vendor offers for a specific mission
// // // // // // // // // class VendorOffersScreen extends StatefulWidget {
// // // // // // // // //   final String missionId;

// // // // // // // // //   const VendorOffersScreen({required this.missionId, Key? key}) : super(key: key);

// // // // // // // // //   @override
// // // // // // // // //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // // // // // // // // }

// // // // // // // // // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// // // // // // // // //   late Future<List<VendorOffer>> offers;

// // // // // // // // //   @override
// // // // // // // // //   void initState() {
// // // // // // // // //     super.initState();
// // // // // // // // //     offers = fetchVendorOffers();
// // // // // // // // //   }

// // // // // // // // //   Future<List<VendorOffer>> fetchVendorOffers() async {
// // // // // // // // //     try {
// // // // // // // // //       final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));

// // // // // // // // //       if (response.statusCode == 200) {
// // // // // // // // //         final List<dynamic> data = json.decode(response.body);

// // // // // // // // //         // Fetch vendor profiles and user details
// // // // // // // // //         List<VendorOffer> vendorOffers = [];
// // // // // // // // //         for (var json in data) {
// // // // // // // // //           var offer = VendorOffer.fromJson(json);
// // // // // // // // //           offer = await fetchVendorDetails(offer); // Fetch and update vendor details
// // // // // // // // //           vendorOffers.add(offer);
// // // // // // // // //         }

// // // // // // // // //         return vendorOffers;
// // // // // // // // //       } else {
// // // // // // // // //         throw Exception('Failed to load offers');
// // // // // // // // //       }
// // // // // // // // //     } catch (e) {
// // // // // // // // //       throw Exception('Error fetching offers: $e');
// // // // // // // // //     }
// // // // // // // // //   }

// // // // // // // // //   Future<VendorOffer> fetchVendorDetails(VendorOffer offer) async {
// // // // // // // // //     try {
// // // // // // // // //       // Fetch vendor profile
// // // // // // // // //       final profileResponse = await http.get(Uri.parse('https://192.168.0.109:7127/api/VenderProfile/${offer.venderProfileId}'));
// // // // // // // // //       if (profileResponse.statusCode == 200) {
// // // // // // // // //         final profileData = json.decode(profileResponse.body);

// // // // // // // // //         // Fetch user details
// // // // // // // // //         final userId = profileData['userId'];
// // // // // // // // //         final userResponse = await http.get(Uri.parse('https://192.168.0.109:7127/api/User/$userId'));
// // // // // // // // //         if (userResponse.statusCode == 200) {
// // // // // // // // //           final userData = json.decode(userResponse.body);
// // // // // // // // //           offer.vendorName = userData['userName'];
// // // // // // // // //           offer.vendorEmail = userData['email'];
// // // // // // // // //           offer.vendorImage = userData['image'];
// // // // // // // // //           offer.age = userData['age'];
// // // // // // // // //           offer.userAddress = userData['userAddress'];
// // // // // // // // //           offer.phoneNumber = userData['phone'];
// // // // // // // // //           offer.location = userData['location'];
// // // // // // // // //           offer.gender = userData['gender'];
// // // // // // // // //         }
// // // // // // // // //       }
// // // // // // // // //       return offer;
// // // // // // // // //     } catch (e) {
// // // // // // // // //       throw Exception('Error fetching vendor details: $e');
// // // // // // // // //     }
// // // // // // // // //   }

// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Scaffold(
// // // // // // // // //       appBar: AppBar(
// // // // // // // // //         title: const Text(
// // // // // // // // //           'Vendor Offers',
// // // // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // // // //         ),
// // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // // // //         elevation: 1,
// // // // // // // // //       ),
// // // // // // // // //       body: FutureBuilder<List<VendorOffer>>(
// // // // // // // // //         future: offers,
// // // // // // // // //         builder: (context, snapshot) {
// // // // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // // // //           } else if (snapshot.hasError) {
// // // // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // // // //             return const Center(child: Text('No offers available'));
// // // // // // // // //           } else {
// // // // // // // // //             final allOffers = snapshot.data!;
// // // // // // // // //             return ListView.builder(
// // // // // // // // //               itemCount: allOffers.length,
// // // // // // // // //               padding: const EdgeInsets.all(16),
// // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // //                 final offer = allOffers[index];
// // // // // // // // //                 return OfferCard(
// // // // // // // // //                   vendorName: offer.vendorName,
// // // // // // // // //                   vendorEmail: offer.vendorEmail,
// // // // // // // // //                   vendorImage: offer.vendorImage,
// // // // // // // // //                   category: offer.category,
// // // // // // // // //                   price: offer.price,
// // // // // // // // //                   bio: offer.bio,
// // // // // // // // //                   experience: offer.experience,
// // // // // // // // //                   age: offer.age,
// // // // // // // // //                   phoneNumber: offer.phoneNumber,
// // // // // // // // //                   location: offer.location,
// // // // // // // // //                   gender: offer.gender,
// // // // // // // // //                   userAddress: offer.userAddress,
// // // // // // // // //                   onTap: () => _showVendorDetails(offer),
// // // // // // // // //                 );
// // // // // // // // //               },
// // // // // // // // //             );
// // // // // // // // //           }
// // // // // // // // //         },
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }

// // // // // // // // //   void _showVendorDetails(VendorOffer offer) {
// // // // // // // // //     Navigator.push(
// // // // // // // // //       context,
// // // // // // // // //       MaterialPageRoute(
// // // // // // // // //         builder: (context) => VendorDetailsScreen(
// // // // // // // // //           vendorName: offer.vendorName,
// // // // // // // // //           vendorEmail: offer.vendorEmail,
// // // // // // // // //           vendorImage: offer.vendorImage,
// // // // // // // // //           bio: offer.bio,
// // // // // // // // //           experience: offer.experience,
// // // // // // // // //           age: offer.age,
// // // // // // // // //           phoneNumber: offer.phoneNumber,
// // // // // // // // //           location: offer.location,
// // // // // // // // //           gender: offer.gender,
// // // // // // // // //           userAddress: offer.userAddress,
// // // // // // // // //         ),
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }

// // // // // // // // //   Future<void> _updateOfferState(String offerId, bool newState) async {
// // // // // // // // //     try {
// // // // // // // // //       final response = await http.put(
// // // // // // // // //         Uri.parse('https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted//$offerId'),
// // // // // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // // // // //         body: json.encode({'state': newState}),
// // // // // // // // //       );

// // // // // // // // //       if (response.statusCode == 204) {
// // // // // // // // //         setState(() {
// // // // // // // // //           offers = fetchVendorOffers(); // Refresh offers after updating
// // // // // // // // //         });
// // // // // // // // //       } else {
// // // // // // // // //         throw Exception('Failed to update offer state');
// // // // // // // // //       }
// // // // // // // // //     } catch (e) {
// // // // // // // // //       // Show error message
// // // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // //         SnackBar(content: Text('Error updating offer: $e')),
// // // // // // // // //       );
// // // // // // // // //     }
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // // // Widget to display each offer card
// // // // // // // // // class OfferCard extends StatelessWidget {
// // // // // // // // //   final String vendorName;
// // // // // // // // //   final String vendorEmail;
// // // // // // // // //   final String category;
// // // // // // // // //   final double price;
// // // // // // // // //   final String? vendorImage;
// // // // // // // // //   final VoidCallback onTap;
// // // // // // // // //   final String bio;
// // // // // // // // //   final int experience;
// // // // // // // // //   final int age;
// // // // // // // // //   final String phoneNumber;
// // // // // // // // //   final String location;
// // // // // // // // //   final String gender;
// // // // // // // // //   final String userAddress;

// // // // // // // // //   const OfferCard({
// // // // // // // // //     required this.vendorName,
// // // // // // // // //     required this.vendorEmail,
// // // // // // // // //     required this.category,
// // // // // // // // //     required this.price,
// // // // // // // // //     required this.onTap,
// // // // // // // // //     this.vendorImage,
// // // // // // // // //     required this.bio,
// // // // // // // // //     required this.experience,
// // // // // // // // //     required this.age,
// // // // // // // // //     required this.phoneNumber,
// // // // // // // // //     required this.location,
// // // // // // // // //     required this.gender,
// // // // // // // // //     required this.userAddress,
// // // // // // // // //     Key? key,
// // // // // // // // //   }) : super(key: key);

// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Card(
// // // // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // // // //       elevation: 4,
// // // // // // // // //       child: ListTile(
// // // // // // // // //         onTap: onTap,
// // // // // // // // //         leading: CircleAvatar(
// // // // // // // // //           radius: 30,
// // // // // // // // //           backgroundImage: vendorImage != null ? NetworkImage(vendorImage!) : null,
// // // // // // // // //           child: vendorImage == null ? const Icon(Icons.person, size: 30) : null,
// // // // // // // // //         ),
// // // // // // // // //         title: GestureDetector(
// // // // // // // // //           onTap: () {
// // // // // // // // //             Navigator.push(
// // // // // // // // //               context,
// // // // // // // // //               MaterialPageRoute(
// // // // // // // // //                 builder: (context) => VendorDetailsScreen(
// // // // // // // // //                   vendorName: vendorName,
// // // // // // // // //                   vendorEmail: vendorEmail,
// // // // // // // // //                   vendorImage: vendorImage,
// // // // // // // // //                   bio: bio,
// // // // // // // // //                   experience: experience,
// // // // // // // // //                   age: age,
// // // // // // // // //                   phoneNumber: phoneNumber,
// // // // // // // // //                   location: location,
// // // // // // // // //                   gender: gender,
// // // // // // // // //                   userAddress: userAddress,
// // // // // // // // //                 ),
// // // // // // // // //               ),
// // // // // // // // //             );
// // // // // // // // //           },
// // // // // // // // //           child: Text(vendorName, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // //         ),
// // // // // // // // //         subtitle: GestureDetector(
// // // // // // // // //           onTap: () {
// // // // // // // // //             Navigator.push(
// // // // // // // // //               context,
// // // // // // // // //               MaterialPageRoute(
// // // // // // // // //                 builder: (context) => VendorDetailsScreen(
// // // // // // // // //                   vendorName: vendorName,
// // // // // // // // //                   vendorEmail: vendorEmail,
// // // // // // // // //                   vendorImage: vendorImage,
// // // // // // // // //                   bio: bio,
// // // // // // // // //                   experience: experience,
// // // // // // // // //                   age: age,
// // // // // // // // //                   phoneNumber: phoneNumber,
// // // // // // // // //                   location: location,
// // // // // // // // //                   gender: gender,
// // // // // // // // //                   userAddress: userAddress,
// // // // // // // // //                 ),
// // // // // // // // //               ),
// // // // // // // // //             );
// // // // // // // // //           },
// // // // // // // // //           child: Column(
// // // // // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // //             children: [
// // // // // // // // //               Text(vendorEmail),
// // // // // // // // //               Text(category),
// // // // // // // // //             ],
// // // // // // // // //           ),
// // // // // // // // //         ),
// // // // // // // // //         trailing: Text('\$$price', style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // // // Model class for VendorOffer
// // // // // // // // // class VendorOffer {
// // // // // // // // //   final String id;
// // // // // // // // //   final String venderProfileId;
// // // // // // // // //   final String missionId;
// // // // // // // // //   final String? note;
// // // // // // // // //   final double price;
// // // // // // // // //   final bool state;
// // // // // // // // //   String vendorName;
// // // // // // // // //   String vendorEmail;
// // // // // // // // //   String? vendorImage;
// // // // // // // // //   String bio;
// // // // // // // // //   int experience;
// // // // // // // // //   int age;
// // // // // // // // //   String phoneNumber;
// // // // // // // // //   String location;
// // // // // // // // //   String gender;
// // // // // // // // //   String userAddress;
// // // // // // // // //   final String category;

// // // // // // // // //   VendorOffer({
// // // // // // // // //     required this.id,
// // // // // // // // //     required this.venderProfileId,
// // // // // // // // //     required this.missionId,
// // // // // // // // //     this.note,
// // // // // // // // //     required this.price,
// // // // // // // // //     required this.state,
// // // // // // // // //     required this.vendorName,
// // // // // // // // //     required this.vendorEmail,
// // // // // // // // //     this.vendorImage,
// // // // // // // // //     required this.bio,
// // // // // // // // //     required this.experience,
// // // // // // // // //     required this.age,
// // // // // // // // //     required this.phoneNumber,
// // // // // // // // //     required this.location,
// // // // // // // // //     required this.gender,
// // // // // // // // //     required this.userAddress,
// // // // // // // // //     required this.category,
// // // // // // // // //   });

// // // // // // // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // // // // // // // //     return VendorOffer(
// // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // //       venderProfileId: json['venderProfileId'] ?? '',
// // // // // // // // //       missionId: json['missionId'] ?? '',
// // // // // // // // //       note: json['note'],
// // // // // // // // //       price: json['price']?.toDouble() ?? 0.0,
// // // // // // // // //       state: json['state'] ?? false,
// // // // // // // // //       vendorName: 'Unknown', // Default value, will be updated in fetchVendorDetails
// // // // // // // // //       vendorEmail: 'Unknown', // Default value, will be updated in fetchVendorDetails
// // // // // // // // //       vendorImage: null, // Default value, will be updated in fetchVendorDetails
// // // // // // // // //       bio: '',
// // // // // // // // //       experience: 0,
// // // // // // // // //       age: 0,
// // // // // // // // //       phoneNumber: '',
// // // // // // // // //       location: '',
// // // // // // // // //       gender: '',
// // // // // // // // //       userAddress: '',
// // // // // // // // //       category: 'Unknown', // Default value, will be updated in fetchVendorDetails
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }
// // // // // // // import 'package:flutter/material.dart';
// // // // // // // import 'dart:convert';
// // // // // // // import 'package:http/http.dart' as http;
// // // // // // // import 'vendor_details_screen.dart';

// // // // // // // class OrdersScreen extends StatefulWidget {
// // // // // // //   final String userId;

// // // // // // //   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

// // // // // // //   @override
// // // // // // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // // // // // }

// // // // // // // class _OrdersScreenState extends State<OrdersScreen>
// // // // // // //     with SingleTickerProviderStateMixin {
// // // // // // //   late TabController _tabController;
// // // // // // //   late Future<List<Mission>> missions;

// // // // // // //   @override
// // // // // // //   void initState() {
// // // // // // //     super.initState();
// // // // // // //     _tabController = TabController(length: 2, vsync: this);
// // // // // // //     missions = fetchMissions();
// // // // // // //   }

// // // // // // //   Future<List<Mission>> fetchMissions() async {
// // // // // // //     try {
// // // // // // //       final response = await http.get(Uri.parse(
// // // // // // //           'https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));

// // // // // // //       if (response.statusCode == 200) {
// // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // //         return data.map((json) => Mission.fromJson(json)).toList();
// // // // // // //       } else {
// // // // // // //         throw Exception('Failed to load missions');
// // // // // // //       }
// // // // // // //     } catch (e) {
// // // // // // //       throw Exception('Error fetching missions: $e');
// // // // // // //     }
// // // // // // //   }

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return Scaffold(
// // // // // // //       appBar: AppBar(
// // // // // // //         title: const Text(
// // // // // // //           'User Missions',
// // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // //         ),
// // // // // // //         backgroundColor: Colors.white,
// // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // //         elevation: 1,
// // // // // // //         bottom: TabBar(
// // // // // // //           controller: _tabController,
// // // // // // //           labelColor: Colors.blue,
// // // // // // //           unselectedLabelColor: Colors.grey,
// // // // // // //           indicatorColor: Colors.blue,
// // // // // // //           tabs: const [
// // // // // // //             Tab(text: 'All Missions'),
// // // // // // //             Tab(text: 'Scheduled Missions'),
// // // // // // //           ],
// // // // // // //         ),
// // // // // // //       ),
// // // // // // //       body: FutureBuilder<List<Mission>>(
// // // // // // //         future: missions,
// // // // // // //         builder: (context, snapshot) {
// // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // //           } else if (snapshot.hasError) {
// // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // //             return const Center(child: Text('No missions available'));
// // // // // // //           } else {
// // // // // // //             final allMissions = snapshot.data!;
// // // // // // //             final scheduledMissions = allMissions
// // // // // // //                 .where((mission) => mission.state == MissionState.Scheduled)
// // // // // // //                 .toList();

// // // // // // //             return TabBarView(
// // // // // // //               controller: _tabController,
// // // // // // //               children: [
// // // // // // //                 _buildMissionList(allMissions),
// // // // // // //                 _buildMissionList(scheduledMissions),
// // // // // // //               ],
// // // // // // //             );
// // // // // // //           }
// // // // // // //         },
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }

// // // // // // //   Widget _buildMissionList(List<Mission> missions) {
// // // // // // //     return ListView.builder(
// // // // // // //       itemCount: missions.length,
// // // // // // //       padding: const EdgeInsets.all(16),
// // // // // // //       itemBuilder: (context, index) {
// // // // // // //         final mission = missions[index];
// // // // // // //         return MissionCard(
// // // // // // //           mission: mission,
// // // // // // //           onTap: () => _showVendorOffers(mission),
// // // // // // //         );
// // // // // // //       },
// // // // // // //     );
// // // // // // //   }

// // // // // // //   void _showVendorOffers(Mission mission) {
// // // // // // //     Navigator.push(
// // // // // // //       context,
// // // // // // //       MaterialPageRoute(
// // // // // // //         builder: (context) => VendorOffersScreen(missionId: mission.id),
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }

// // // // // // // class MissionCard extends StatelessWidget {
// // // // // // //   final Mission mission;
// // // // // // //   final VoidCallback onTap;

// // // // // // //   const MissionCard({
// // // // // // //     required this.mission,
// // // // // // //     required this.onTap,
// // // // // // //     Key? key,
// // // // // // //   }) : super(key: key);

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return Card(
// // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // //       elevation: 4,
// // // // // // //       child: ListTile(
// // // // // // //         onTap: onTap,
// // // // // // //         title: Text(mission.name,
// // // // // // //             style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // //         subtitle: Column(
// // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //           children: [
// // // // // // //             Text('State: ${mission.state}'),
// // // // // // //             Text('Day: ${mission.day}'),
// // // // // // //           ],
// // // // // // //         ),
// // // // // // //         trailing: mission.image != null
// // // // // // //             ? Image.network(mission.image!,
// // // // // // //                 width: 50, height: 50, fit: BoxFit.cover)
// // // // // // //             : const SizedBox.shrink(),
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }

// // // // // // // class Mission {
// // // // // // //   final String id;
// // // // // // //   final String name;
// // // // // // //   final MissionState state;
// // // // // // //   final String categoryId;
// // // // // // //   final String userId;
// // // // // // //   final DateTime day;
// // // // // // //   final String location;
// // // // // // //   final String note;
// // // // // // //   final String? image;
// // // // // // //   final String? details;
// // // // // // //   final int? room;
// // // // // // //   final String? grade;
// // // // // // //   final String? hours;

// // // // // // //   Mission({
// // // // // // //     required this.id,
// // // // // // //     required this.name,
// // // // // // //     required this.state,
// // // // // // //     required this.categoryId,
// // // // // // //     required this.userId,
// // // // // // //     required this.day,
// // // // // // //     required this.location,
// // // // // // //     required this.note,
// // // // // // //     this.image,
// // // // // // //     this.details,
// // // // // // //     this.room,
// // // // // // //     this.grade,
// // // // // // //     this.hours,
// // // // // // //   });

// // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // //     return Mission(
// // // // // // //       id: json['id'] ?? '',
// // // // // // //       name: json['name'] ?? '',
// // // // // // //       state: MissionState.values[json['state'] ?? 0],
// // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // //       userId: json['userId'] ?? '',
// // // // // // //       day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
// // // // // // //       location: json['location'] ?? '',
// // // // // // //       note: json['note'] ?? '',
// // // // // // //       image: json['image'],
// // // // // // //       details: json['details'],
// // // // // // //       room: json['room'],
// // // // // // //       grade: json['grade'],
// // // // // // //       hours: json['hours'],
// // // // // // //     );
// // // // // // //   }
// // // // // // // }

// // // // // // // enum MissionState {
// // // // // // //   Pending,
// // // // // // //   Scheduled,
// // // // // // //   Completed,
// // // // // // //   Cancelled,
// // // // // // // }

// // // // // // // class VendorOffersScreen extends StatefulWidget {
// // // // // // //   final String missionId;

// // // // // // //   const VendorOffersScreen({required this.missionId, Key? key})
// // // // // // //       : super(key: key);

// // // // // // //   @override
// // // // // // //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // // // // // // }

// // // // // // // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// // // // // // //   late Future<List<VendorOffer>> offers;

// // // // // // //   @override
// // // // // // //   void initState() {
// // // // // // //     super.initState();
// // // // // // //     offers = fetchVendorOffers();
// // // // // // //   }

// // // // // // //   Future<List<VendorOffer>> fetchVendorOffers() async {
// // // // // // //     try {
// // // // // // //       final response = await http.get(Uri.parse(
// // // // // // //           'https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));

// // // // // // //       if (response.statusCode == 200) {
// // // // // // //         final List<dynamic> data = json.decode(response.body);

// // // // // // //         List<VendorOffer> vendorOffers = [];
// // // // // // //         for (var json in data) {
// // // // // // //           var offer = VendorOffer.fromJson(json);
// // // // // // //           offer = await fetchVendorDetails(offer); // Fetch and update vendor details
// // // // // // //           vendorOffers.add(offer);
// // // // // // //         }

// // // // // // //         return vendorOffers;
// // // // // // //       } else {
// // // // // // //         throw Exception('Failed to load offers');
// // // // // // //       }
// // // // // // //     } catch (e) {
// // // // // // //       throw Exception('Error fetching offers: $e');
// // // // // // //     }
// // // // // // //   }

// // // // // // //   Future<VendorOffer> fetchVendorDetails(VendorOffer offer) async {
// // // // // // //     try {
// // // // // // //       // Fetch vendor profile
// // // // // // //       final profileResponse = await http.get(Uri.parse(
// // // // // // //           'https://192.168.0.109:7127/api/VenderProfile/${offer.venderProfileId}'));
// // // // // // //       if (profileResponse.statusCode == 200) {
// // // // // // //         final profileData = json.decode(profileResponse.body);

// // // // // // //         // Fetch user details
// // // // // // //         final userId = profileData['userId'];
// // // // // // //         final userResponse = await http
// // // // // // //             .get(Uri.parse('https://192.168.0.109:7127/api/User/$userId'));
// // // // // // //         if (userResponse.statusCode == 200) {
// // // // // // //           final userData = json.decode(userResponse.body);
// // // // // // //           offer.vendorName = userData['userName'];
// // // // // // //           offer.vendorEmail = userData['email'];
// // // // // // //           offer.vendorImage = userData['image'];
// // // // // // //           offer.vendorAge = userData['age'];
// // // // // // //           offer.vendorAddress = userData['userAddress'];
// // // // // // //           offer.vendorLocation = userData['location'];
// // // // // // //         }
// // // // // // //       }
// // // // // // //       return offer;
// // // // // // //     } catch (e) {
// // // // // // //       throw Exception('Error fetching vendor details: $e');
// // // // // // //     }
// // // // // // //   }

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return Scaffold(
// // // // // // //       appBar: AppBar(
// // // // // // //         title: const Text(
// // // // // // //           'Vendor Offers',
// // // // // // //           style: TextStyle(color: Colors.black),
// // // // // // //         ),
// // // // // // //         backgroundColor: Colors.white,
// // // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // // //         elevation: 1,
// // // // // // //       ),
// // // // // // //       body: FutureBuilder<List<VendorOffer>>(
// // // // // // //         future: offers,
// // // // // // //         builder: (context, snapshot) {
// // // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // // //           } else if (snapshot.hasError) {
// // // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // //             return const Center(child: Text('No offers available'));
// // // // // // //           } else {
// // // // // // //             final allOffers = snapshot.data!;
// // // // // // //             return ListView.builder(
// // // // // // //               itemCount: allOffers.length,
// // // // // // //               padding: const EdgeInsets.all(16),
// // // // // // //               itemBuilder: (context, index) {
// // // // // // //                 final offer = allOffers[index];
// // // // // // //                 return OfferCard(
// // // // // // //                   vendorName: offer.vendorName,
// // // // // // //                   vendorEmail: offer.vendorEmail,
// // // // // // //                   vendorImage: offer.vendorImage,
// // // // // // //                   category: offer.category,
// // // // // // //                   price: offer.price,
// // // // // // //                   vendorAge: offer.vendorAge,
// // // // // // //                   vendorAddress: offer.vendorAddress,
// // // // // // //                   vendorLocation: offer.vendorLocation,
// // // // // // //                   onTap: () => _showOfferDetails(offer),
// // // // // // //                 );
// // // // // // //               },
// // // // // // //             );
// // // // // // //           }
// // // // // // //         },
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }

// // // // // // //   void _showOfferDetails(VendorOffer offer) {
// // // // // // //     showModalBottomSheet(
// // // // // // //       context: context,
// // // // // // //       shape: const RoundedRectangleBorder(
// // // // // // //         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// // // // // // //       ),
// // // // // // //       builder: (context) {
// // // // // // //         return Padding(
// // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // //           child: Column(
// // // // // // //             mainAxisSize: MainAxisSize.min,
// // // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //             children: [
// // // // // // //               Text(
// // // // // // //                 offer.vendorName,
// // // // // // //                 style:
// // // // // // //                     const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // // // // // //               ),
// // // // // // //               const SizedBox(height: 8),
// // // // // // //               Text(offer.vendorEmail,
// // // // // // //                   style: const TextStyle(fontSize: 16, color: Colors.grey)),
// // // // // // //               const SizedBox(height: 16),
// // // // // // //               Text('Price: \$${offer.price}',
// // // // // // //                   style: const TextStyle(fontSize: 18)),
// // // // // // //               const SizedBox(height: 16),
// // // // // // //               Text('Note:',
// // // // // // //                   style: const TextStyle(
// // // // // // //                       fontSize: 16, fontWeight: FontWeight.bold)),
// // // // // // //               Text(offer.note ?? 'No note available.'),
// // // // // // //               const SizedBox(height: 16),
// // // // // // //               ElevatedButton(
// // // // // // //                 onPressed: offer.state
// // // // // // //                     ? null
// // // // // // //                     : () {
// // // // // // //                         _updateOfferState(
// // // // // // //                             offer.id, true); // Change state to "Accepted"
// // // // // // //                         Navigator.pop(context); // Close modal
// // // // // // //                       },
// // // // // // //                 child: Text(offer.state ? 'Already Accepted' : 'Accept Offer'),
// // // // // // //               ),
// // // // // // //             ],
// // // // // // //           ),
// // // // // // //         );
// // // // // // //       },
// // // // // // //     );
// // // // // // //   }

// // // // // // //   Future<void> _updateOfferState(String offerId, bool newState) async {
// // // // // // //     try {
// // // // // // //       final response = await http.put(
// // // // // // //         Uri.parse(
// // // // // // //             'https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted//$offerId'),
// // // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // // //         body: json.encode({'state': newState}),
// // // // // // //       );

// // // // // // //       if (response.statusCode == 204) {
// // // // // // //         setState(() {
// // // // // // //           offers = fetchVendorOffers(); // Refresh offers after updating
// // // // // // //         });
// // // // // // //       } else {
// // // // // // //         throw Exception('Failed to update offer state');
// // // // // // //       }
// // // // // // //     } catch (e) {
// // // // // // //       // Show error message
// // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // //         SnackBar(content: Text('Error updating offer: $e')),
// // // // // // //       );
// // // // // // //     }
// // // // // // //   }
// // // // // // // }

// // // // // // // class OfferCard extends StatelessWidget {
// // // // // // //   final String vendorName;
// // // // // // //   final String vendorEmail;
// // // // // // //   final String category;
// // // // // // //   final double price;
// // // // // // //   final String? vendorImage;
// // // // // // //   final int? vendorAge;
// // // // // // //   final String? vendorAddress;
// // // // // // //   final String? vendorLocation;
// // // // // // //   final VoidCallback onTap;

// // // // // // //   const OfferCard({
// // // // // // //     required this.vendorName,
// // // // // // //     required this.vendorEmail,
// // // // // // //     required this.category,
// // // // // // //     required this.price,
// // // // // // //     required this.onTap,
// // // // // // //     this.vendorImage,
// // // // // // //     this.vendorAge,
// // // // // // //     this.vendorAddress,
// // // // // // //     this.vendorLocation,
// // // // // // //     Key? key,
// // // // // // //   }) : super(key: key);

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return Card(
// // // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // //       elevation: 4,
// // // // // // //       child: ListTile(
// // // // // // //         onTap: onTap,
// // // // // // //         leading: CircleAvatar(
// // // // // // //           radius: 30,
// // // // // // //           backgroundImage:
// // // // // // //               vendorImage != null ? NetworkImage(vendorImage!) : null,
// // // // // // //           child:
// // // // // // //               vendorImage == null ? const Icon(Icons.person, size: 30) : null,
// // // // // // //         ),
// // // // // // //         title: GestureDetector(
// // // // // // //           onTap: () {
// // // // // // //             Navigator.push(
// // // // // // //               context,
// // // // // // //               MaterialPageRoute(
// // // // // // //                 builder: (context) => VendorDetailsScreen(
// // // // // // //                   vendorName: vendorName,
// // // // // // //                   vendorEmail: vendorEmail,
// // // // // // //                   vendorImage: vendorImage,
// // // // // // //                   vendorAge: vendorAge,
// // // // // // //                   vendorAddress: vendorAddress,
// // // // // // //                   vendorLocation: vendorLocation,
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //             );
// // // // // // //           },
// // // // // // //           child: Text(vendorName,
// // // // // // //               style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // //         ),
// // // // // // //         subtitle: GestureDetector(
// // // // // // //           onTap: () {
// // // // // // //             Navigator.push(
// // // // // // //               context,
// // // // // // //               MaterialPageRoute(
// // // // // // //                 builder: (context) => VendorDetailsScreen(
// // // // // // //                   vendorName: vendorName,
// // // // // // //                   vendorEmail: vendorEmail,
// // // // // // //                   vendorImage: vendorImage,
// // // // // // //                   vendorAge: vendorAge,
// // // // // // //                   vendorAddress: vendorAddress,
// // // // // // //                   vendorLocation: vendorLocation,
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //             );
// // // // // // //           },
// // // // // // //           child: Column(
// // // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //             children: [
// // // // // // //               Text(vendorEmail),
// // // // // // //               Text(category),
// // // // // // //             ],
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //         trailing: Text('\$$price',
// // // // // // //             style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }

// // // // // // // class VendorOffer {
// // // // // // //   final String id;
// // // // // // //   final String venderProfileId;
// // // // // // //   final String missionId;
// // // // // // //   final String? note;
// // // // // // //   final double price;
// // // // // // //   final bool state;
// // // // // // //   String vendorName;
// // // // // // //   String vendorEmail;
// // // // // // //   String? vendorImage;
// // // // // // //   final String category;
// // // // // // //   int? vendorAge;
// // // // // // //   String? vendorAddress;
// // // // // // //   String? vendorLocation;

// // // // // // //   VendorOffer({
// // // // // // //     required this.id,
// // // // // // //     required this.venderProfileId,
// // // // // // //     required this.missionId,
// // // // // // //     this.note,
// // // // // // //     required this.price,
// // // // // // //     required this.state,
// // // // // // //     required this.vendorName,
// // // // // // //     required this.vendorEmail,
// // // // // // //     this.vendorImage,
// // // // // // //     required this.category,
// // // // // // //     this.vendorAge,
// // // // // // //     this.vendorAddress,
// // // // // // //     this.vendorLocation,
// // // // // // //   });

// // // // // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // // // // // //     return VendorOffer(
// // // // // // //       id: json['id'] ?? '',
// // // // // // //       venderProfileId: json['venderProfileId'] ?? '',
// // // // // // //       missionId: json['missionId'] ?? '',
// // // // // // //       note: json['note'],
// // // // // // //       price: json['price']?.toDouble() ?? 0.0,
// // // // // // //       state: json['state'] ?? false,
// // // // // // //       vendorName: 'Unknown', // Default value, will be updated in fetchVendorDetails
// // // // // // //       vendorEmail: 'Unknown', // Default value, will be updated in fetchVendorDetails
// // // // // // //       vendorImage: null, // Default value, will be updated in fetchVendorDetails
// // // // // // //       category: 'Unknown', // Default value, will be updated in fetchVendorDetails
// // // // // // //       vendorAge: null, // Default value, will be updated in fetchVendorDetails
// // // // // // //       vendorAddress: null, // Default value, will be updated in fetchVendorDetails
// // // // // // //       vendorLocation: null, // Default value, will be updated in fetchVendorDetails
// // // // // // //     );
// // // // // // //   }
// // // // // // // }
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'dart:convert';
// // // // // // import 'package:http/http.dart' as http;
// // // // // // import 'vendor_details_screen.dart';

// // // // // // class OrdersScreen extends StatefulWidget {
// // // // // //   final String userId;

// // // // // //   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

// // // // // //   @override
// // // // // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // // // // }

// // // // // // class _OrdersScreenState extends State<OrdersScreen>
// // // // // //     with SingleTickerProviderStateMixin {
// // // // // //   late TabController _tabController;
// // // // // //   late Future<List<Mission>> missions;

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     _tabController = TabController(length: 2, vsync: this);
// // // // // //     missions = fetchMissions();
// // // // // //   }

// // // // // //   Future<List<Mission>> fetchMissions() async {
// // // // // //     try {
// // // // // //       final response = await http.get(Uri.parse(
// // // // // //           'https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));

// // // // // //       if (response.statusCode == 200) {
// // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // //         return data.map((json) => Mission.fromJson(json)).toList();
// // // // // //       } else {
// // // // // //         throw Exception('Failed to load missions');
// // // // // //       }
// // // // // //     } catch (e) {
// // // // // //       throw Exception('Error fetching missions: $e');
// // // // // //     }
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       appBar: AppBar(
// // // // // //         title: const Text(
// // // // // //           'User Missions',
// // // // // //           style: TextStyle(color: Colors.black),
// // // // // //         ),
// // // // // //         backgroundColor: Colors.white,
// // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // //         elevation: 1,
// // // // // //         bottom: TabBar(
// // // // // //           controller: _tabController,
// // // // // //           labelColor: Colors.blue,
// // // // // //           unselectedLabelColor: Colors.grey,
// // // // // //           indicatorColor: Colors.blue,
// // // // // //           tabs: const [
// // // // // //             Tab(text: 'All Missions'),
// // // // // //             Tab(text: 'Scheduled Missions'),
// // // // // //           ],
// // // // // //         ),
// // // // // //       ),
// // // // // //       body: FutureBuilder<List<Mission>>(
// // // // // //         future: missions,
// // // // // //         builder: (context, snapshot) {
// // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // //           } else if (snapshot.hasError) {
// // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // //             return const Center(child: Text('No missions available'));
// // // // // //           } else {
// // // // // //             final allMissions = snapshot.data!;
// // // // // //             final scheduledMissions = allMissions
// // // // // //                 .where((mission) => mission.state == MissionState.Scheduled)
// // // // // //                 .toList();

// // // // // //             return TabBarView(
// // // // // //               controller: _tabController,
// // // // // //               children: [
// // // // // //                 _buildMissionList(allMissions),
// // // // // //                 _buildMissionList(scheduledMissions),
// // // // // //               ],
// // // // // //             );
// // // // // //           }
// // // // // //         },
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   Widget _buildMissionList(List<Mission> missions) {
// // // // // //     return ListView.builder(
// // // // // //       itemCount: missions.length,
// // // // // //       padding: const EdgeInsets.all(16),
// // // // // //       itemBuilder: (context, index) {
// // // // // //         final mission = missions[index];
// // // // // //         return MissionCard(
// // // // // //           mission: mission,
// // // // // //           onTap: () => _showVendorOffers(mission),
// // // // // //         );
// // // // // //       },
// // // // // //     );
// // // // // //   }

// // // // // //   void _showVendorOffers(Mission mission) {
// // // // // //     Navigator.push(
// // // // // //       context,
// // // // // //       MaterialPageRoute(
// // // // // //         builder: (context) => VendorOffersScreen(missionId: mission.id),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // class MissionCard extends StatelessWidget {
// // // // // //   final Mission mission;
// // // // // //   final VoidCallback onTap;

// // // // // //   const MissionCard({
// // // // // //     required this.mission,
// // // // // //     required this.onTap,
// // // // // //     Key? key,
// // // // // //   }) : super(key: key);

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Card(
// // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // //       elevation: 4,
// // // // // //       child: ListTile(
// // // // // //         onTap: onTap,
// // // // // //         title: Text(mission.name,
// // // // // //             style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // //         subtitle: Column(
// // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //           children: [
// // // // // //             Text('State: ${mission.state}'),
// // // // // //             Text('Day: ${mission.day}'),
// // // // // //           ],
// // // // // //         ),
// // // // // //         trailing: mission.image != null
// // // // // //             ? Image.network(mission.image!,
// // // // // //                 width: 50, height: 50, fit: BoxFit.cover)
// // // // // //             : const SizedBox.shrink(),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // class Mission {
// // // // // //   final String id;
// // // // // //   final String name;
// // // // // //   final MissionState state;
// // // // // //   final String categoryId;
// // // // // //   final String userId;
// // // // // //   final DateTime day;
// // // // // //   final String location;
// // // // // //   final String note;
// // // // // //   final String? image;
// // // // // //   final String? details;
// // // // // //   final int? room;
// // // // // //   final String? grade;
// // // // // //   final String? hours;

// // // // // //   Mission({
// // // // // //     required this.id,
// // // // // //     required this.name,
// // // // // //     required this.state,
// // // // // //     required this.categoryId,
// // // // // //     required this.userId,
// // // // // //     required this.day,
// // // // // //     required this.location,
// // // // // //     required this.note,
// // // // // //     this.image,
// // // // // //     this.details,
// // // // // //     this.room,
// // // // // //     this.grade,
// // // // // //     this.hours,
// // // // // //   });

// // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // //     return Mission(
// // // // // //       id: json['id'] ?? '',
// // // // // //       name: json['name'] ?? '',
// // // // // //       state: MissionState.values[json['state'] ?? 0],
// // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // //       userId: json['userId'] ?? '',
// // // // // //       day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
// // // // // //       location: json['location'] ?? '',
// // // // // //       note: json['note'] ?? '',
// // // // // //       image: json['image'],
// // // // // //       details: json['details'],
// // // // // //       room: json['room'],
// // // // // //       grade: json['grade'],
// // // // // //       hours: json['hours'],
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // enum MissionState {
// // // // // //   Pending,
// // // // // //   Scheduled,
// // // // // //   Completed,
// // // // // //   Cancelled,
// // // // // // }

// // // // // // class VendorOffersScreen extends StatefulWidget {
// // // // // //   final String missionId;

// // // // // //   const VendorOffersScreen({required this.missionId, Key? key})
// // // // // //       : super(key: key);

// // // // // //   @override
// // // // // //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // // // // // }

// // // // // // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// // // // // //   late Future<List<VendorOffer>> offers;

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     offers = fetchVendorOffers();
// // // // // //   }

// // // // // //   Future<List<VendorOffer>> fetchVendorOffers() async {
// // // // // //     try {
// // // // // //       final response = await http.get(Uri.parse(
// // // // // //           'https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));

// // // // // //       if (response.statusCode == 200) {
// // // // // //         final List<dynamic> data = json.decode(response.body);

// // // // // //         List<VendorOffer> vendorOffers = [];
// // // // // //         for (var json in data) {
// // // // // //           var offer = VendorOffer.fromJson(json);
// // // // // //           offer = await fetchVendorDetails(offer); // Fetch and update vendor details
// // // // // //           vendorOffers.add(offer);
// // // // // //         }

// // // // // //         return vendorOffers;
// // // // // //       } else {
// // // // // //         throw Exception('Failed to load offers');
// // // // // //       }
// // // // // //     } catch (e) {
// // // // // //       throw Exception('Error fetching offers: $e');
// // // // // //     }
// // // // // //   }

// // // // // //   Future<VendorOffer> fetchVendorDetails(VendorOffer offer) async {
// // // // // //     try {
// // // // // //       // Fetch vendor profile
// // // // // //       final profileResponse = await http.get(Uri.parse(
// // // // // //           'https://192.168.0.109:7127/api/VenderProfile/${offer.venderProfileId}'));
// // // // // //       if (profileResponse.statusCode == 200) {
// // // // // //         final profileData = json.decode(profileResponse.body);

// // // // // //         // Set vendor profile details
// // // // // //         offer.vendorBio = profileData['bio'];
// // // // // //         offer.vendorExperience = profileData['experience'];

// // // // // //         // Fetch user details
// // // // // //         final userId = profileData['userId'];
// // // // // //         final userResponse = await http
// // // // // //             .get(Uri.parse('https://192.168.0.109:7127/api/User/$userId'));
// // // // // //         if (userResponse.statusCode == 200) {
// // // // // //           final userData = json.decode(userResponse.body);
// // // // // //           offer.vendorName = userData['userName'];
// // // // // //           offer.vendorEmail = userData['email'];
// // // // // //           offer.vendorImage = userData['image'];
// // // // // //           offer.vendorAge = userData['age'];
// // // // // //           offer.vendorAddress = userData['userAddress'];
// // // // // //           offer.vendorLocation = userData['location'];
// // // // // //         }
// // // // // //       }
// // // // // //       return offer;
// // // // // //     } catch (e) {
// // // // // //       throw Exception('Error fetching vendor details: $e');
// // // // // //     }
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       appBar: AppBar(
// // // // // //         title: const Text(
// // // // // //           'Vendor Offers',
// // // // // //           style: TextStyle(color: Colors.black),
// // // // // //         ),
// // // // // //         backgroundColor: Colors.white,
// // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // //         elevation: 1,
// // // // // //       ),
// // // // // //       body: FutureBuilder<List<VendorOffer>>(
// // // // // //         future: offers,
// // // // // //         builder: (context, snapshot) {
// // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // //           } else if (snapshot.hasError) {
// // // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // //             return const Center(child: Text('No offers available'));
// // // // // //           } else {
// // // // // //             final allOffers = snapshot.data!;
// // // // // //             return ListView.builder(
// // // // // //               itemCount: allOffers.length,
// // // // // //               padding: const EdgeInsets.all(16),
// // // // // //               itemBuilder: (context, index) {
// // // // // //                 final offer = allOffers[index];
// // // // // //                 return OfferCard(
// // // // // //                   vendorName: offer.vendorName,
// // // // // //                   vendorEmail: offer.vendorEmail,
// // // // // //                   vendorImage: offer.vendorImage,
// // // // // //                   category: offer.category,
// // // // // //                   price: offer.price,
// // // // // //                   vendorAge: offer.vendorAge,
// // // // // //                   vendorAddress: offer.vendorAddress,
// // // // // //                   vendorLocation: offer.vendorLocation,
// // // // // //                   vendorBio: offer.vendorBio,
// // // // // //                   vendorExperience: offer.vendorExperience,
// // // // // //                   onTap: () => _showOfferDetails(offer),
// // // // // //                 );
// // // // // //               },
// // // // // //             );
// // // // // //           }
// // // // // //         },
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   void _showOfferDetails(VendorOffer offer) {
// // // // // //     showModalBottomSheet(
// // // // // //       context: context,
// // // // // //       shape: const RoundedRectangleBorder(
// // // // // //         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// // // // // //       ),
// // // // // //       builder: (context) {
// // // // // //         return Padding(
// // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // //           child: Column(
// // // // // //             mainAxisSize: MainAxisSize.min,
// // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //             children: [
// // // // // //               Text(
// // // // // //                 offer.vendorName,
// // // // // //                 style:
// // // // // //                     const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // // // // //               ),
// // // // // //               const SizedBox(height: 8),
// // // // // //               Text(offer.vendorEmail,
// // // // // //                   style: const TextStyle(fontSize: 16, color: Colors.grey)),
// // // // // //               const SizedBox(height: 16),
// // // // // //               Text('Price: \$${offer.price}',
// // // // // //                   style: const TextStyle(fontSize: 18)),
// // // // // //               const SizedBox(height: 16),
// // // // // //               Text('Note:',
// // // // // //                   style: const TextStyle(
// // // // // //                       fontSize: 16, fontWeight: FontWeight.bold)),
// // // // // //               Text(offer.note ?? 'No note available.'),
// // // // // //               const SizedBox(height: 16),
// // // // // //               ElevatedButton(
// // // // // //                 onPressed: offer.state
// // // // // //                     ? null
// // // // // //                     : () {
// // // // // //                         _updateOfferState(
// // // // // //                             offer.id, true); // Change state to "Accepted"
// // // // // //                         Navigator.pop(context); // Close modal
// // // // // //                       },
// // // // // //                 child: Text(offer.state ? 'Already Accepted' : 'Accept Offer'),
// // // // // //               ),
// // // // // //             ],
// // // // // //           ),
// // // // // //         );
// // // // // //       },
// // // // // //     );
// // // // // //   }

// // // // // //   Future<void> _updateOfferState(String offerId, bool newState) async {
// // // // // //     try {
// // // // // //       final response = await http.put(
// // // // // //         Uri.parse(
// // // // // //             'https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted//$offerId'),
// // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // //         body: json.encode({'state': newState}),
// // // // // //       );

// // // // // //       if (response.statusCode == 204) {
// // // // // //         setState(() {
// // // // // //           offers = fetchVendorOffers(); // Refresh offers after updating
// // // // // //         });
// // // // // //       } else {
// // // // // //         throw Exception('Failed to update offer state');
// // // // // //       }
// // // // // //     } catch (e) {
// // // // // //       // Show error message
// // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // //         SnackBar(content: Text('Error updating offer: $e')),
// // // // // //       );
// // // // // //     }
// // // // // //   }
// // // // // // }

// // // // // // class OfferCard extends StatelessWidget {
// // // // // //   final String vendorName;
// // // // // //   final String vendorEmail;
// // // // // //   final String category;
// // // // // //   final double price;
// // // // // //   final String? vendorImage;
// // // // // //   final int? vendorAge;
// // // // // //   final String? vendorAddress;
// // // // // //   final String? vendorLocation;
// // // // // //   final String? vendorBio;
// // // // // //   final String? vendorExperience;
// // // // // //   final VoidCallback onTap;

// // // // // //   const OfferCard({
// // // // // //     required this.vendorName,
// // // // // //     required this.vendorEmail,
// // // // // //     required this.category,
// // // // // //     required this.price,
// // // // // //     required this.onTap,
// // // // // //     this.vendorImage,
// // // // // //     this.vendorAge,
// // // // // //     this.vendorAddress,
// // // // // //     this.vendorLocation,
// // // // // //     this.vendorBio,
// // // // // //     this.vendorExperience,
// // // // // //     Key? key,
// // // // // //   }) : super(key: key);

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Card(
// // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // //       elevation: 4,
// // // // // //       child: ListTile(
// // // // // //         onTap: onTap,
// // // // // //         leading: CircleAvatar(
// // // // // //           radius: 30,
// // // // // //           backgroundImage:
// // // // // //               vendorImage != null ? NetworkImage(vendorImage!) : null,
// // // // // //           child:
// // // // // //               vendorImage == null ? const Icon(Icons.person, size: 30) : null,
// // // // // //         ),
// // // // // //         title: GestureDetector(
// // // // // //           onTap: () {
// // // // // //             Navigator.push(
// // // // // //               context,
// // // // // //               MaterialPageRoute(
// // // // // //                 builder: (context) => VendorDetailsScreen(
// // // // // //                   vendorName: vendorName,
// // // // // //                   vendorEmail: vendorEmail,
// // // // // //                   vendorImage: vendorImage,
// // // // // //                   vendorAge: vendorAge,
// // // // // //                   vendorAddress: vendorAddress,
// // // // // //                   vendorLocation: vendorLocation,
// // // // // //                   vendorBio: vendorBio,
// // // // // //                   vendorExperience: vendorExperience,
// // // // // //                 ),
// // // // // //               ),
// // // // // //             );
// // // // // //           },
// // // // // //           child: Text(vendorName,
// // // // // //               style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // //         ),
// // // // // //         subtitle: GestureDetector(
// // // // // //           onTap: () {
// // // // // //             Navigator.push(
// // // // // //               context,
// // // // // //               MaterialPageRoute(
// // // // // //                 builder: (context) => VendorDetailsScreen(
// // // // // //                   vendorName: vendorName,
// // // // // //                   vendorEmail: vendorEmail,
// // // // // //                   vendorImage: vendorImage,
// // // // // //                   vendorAge: vendorAge,
// // // // // //                   vendorAddress: vendorAddress,
// // // // // //                   vendorLocation: vendorLocation,
// // // // // //                   vendorBio: vendorBio,
// // // // // //                   vendorExperience: vendorExperience,
// // // // // //                 ),
// // // // // //               ),
// // // // // //             );
// // // // // //           },
// // // // // //           child: Column(
// // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //             children: [
// // // // // //               Text(vendorEmail),
// // // // // //               Text(category),
// // // // // //             ],
// // // // // //           ),
// // // // // //         ),
// // // // // //         trailing: Text('\$$price',
// // // // // //             style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // class VendorOffer {
// // // // // //   final String id;
// // // // // //   final String venderProfileId;
// // // // // //   final String missionId;
// // // // // //   final String? note;
// // // // // //   final double price;
// // // // // //   final bool state;
// // // // // //   String vendorName;
// // // // // //   String vendorEmail;
// // // // // //   String? vendorImage;
// // // // // //   final String category;
// // // // // //   int? vendorAge;
// // // // // //   String? vendorAddress;
// // // // // //   String? vendorLocation;
// // // // // //   String? vendorBio;
// // // // // //   String? vendorExperience;

// // // // // //   VendorOffer({
// // // // // //     required this.id,
// // // // // //     required this.venderProfileId,
// // // // // //     required this.missionId,
// // // // // //     this.note,
// // // // // //     required this.price,
// // // // // //     required this.state,
// // // // // //     required this.vendorName,
// // // // // //     required this.vendorEmail,
// // // // // //     this.vendorImage,
// // // // // //     required this.category,
// // // // // //     this.vendorAge,
// // // // // //     this.vendorAddress,
// // // // // //     this.vendorLocation,
// // // // // //     this.vendorBio,
// // // // // //     this.vendorExperience,
// // // // // //   });

// // // // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // // // // //     return VendorOffer(
// // // // // //       id: json['id'] ?? '',
// // // // // //       venderProfileId: json['venderProfileId'] ?? '',
// // // // // //       missionId: json['missionId'] ?? '',
// // // // // //       note: json['note'],
// // // // // //       price: json['price']?.toDouble() ?? 0.0,
// // // // // //       state: json['state'] ?? false,
// // // // // //       vendorName: 'Unknown', // Default value, will be updated in fetchVendorDetails
// // // // // //       vendorEmail: 'Unknown', // Default value, will be updated in fetchVendorDetails
// // // // // //       vendorImage: null, // Default value, will be updated in fetchVendorDetails
// // // // // //       category: 'Unknown', // Default value, will be updated in fetchVendorDetails
// // // // // //       vendorAge: null, // Default value, will be updated in fetchVendorDetails
// // // // // //       vendorAddress: null, // Default value, will be updated in fetchVendorDetails
// // // // // //       vendorLocation: null, // Default value, will be updated in fetchVendorDetails
// // // // // //       vendorBio: null, // Default value, will be updated in fetchVendorDetails
// // // // // //       vendorExperience: null, // Default value, will be updated in fetchVendorDetails
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // // import 'package:flutter/material.dart';
// // // // // import 'dart:convert';
// // // // // import 'package:http/http.dart' as http;
// // // // // import 'vendor_details_screen.dart';

// // // // // class OrdersScreen extends StatefulWidget {
// // // // //   final String userId;

// // // // //   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

// // // // //   @override
// // // // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // // // }

// // // // // class _OrdersScreenState extends State<OrdersScreen>
// // // // //     with SingleTickerProviderStateMixin {
// // // // //   late TabController _tabController;
// // // // //   late Future<List<Mission>> missions;

// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     _tabController = TabController(length: 2, vsync: this);
// // // // //     missions = fetchMissions();
// // // // //   }

// // // // //   Future<List<Mission>> fetchMissions() async {
// // // // //     try {
// // // // //       final response = await http.get(Uri.parse(
// // // // //           'https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));

// // // // //       if (response.statusCode == 200) {
// // // // //         final List<dynamic> data = json.decode(response.body);
// // // // //         return data.map((json) => Mission.fromJson(json)).toList();
// // // // //       } else {
// // // // //         throw Exception('Failed to load missions');
// // // // //       }
// // // // //     } catch (e) {
// // // // //       throw Exception('Error fetching missions: $e');
// // // // //     }
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: const Text(
// // // // //           'User Missions',
// // // // //           style: TextStyle(color: Colors.black),
// // // // //         ),
// // // // //         backgroundColor: Colors.white,
// // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // //         elevation: 1,
// // // // //         bottom: TabBar(
// // // // //           controller: _tabController,
// // // // //           labelColor: Colors.blue,
// // // // //           unselectedLabelColor: Colors.grey,
// // // // //           indicatorColor: Colors.blue,
// // // // //           tabs: const [
// // // // //             Tab(text: 'All Missions'),
// // // // //             Tab(text: 'Scheduled Missions'),
// // // // //           ],
// // // // //         ),
// // // // //       ),
// // // // //       body: FutureBuilder<List<Mission>>(
// // // // //         future: missions,
// // // // //         builder: (context, snapshot) {
// // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // //             return const Center(child: CircularProgressIndicator());
// // // // //           } else if (snapshot.hasError) {
// // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // //             return const Center(child: Text('No missions available'));
// // // // //           } else {
// // // // //             final allMissions = snapshot.data!;
// // // // //             final scheduledMissions = allMissions
// // // // //                 .where((mission) => mission.state == MissionState.Scheduled)
// // // // //                 .toList();

// // // // //             return TabBarView(
// // // // //               controller: _tabController,
// // // // //               children: [
// // // // //                 _buildMissionList(allMissions),
// // // // //                 _buildMissionList(scheduledMissions),
// // // // //               ],
// // // // //             );
// // // // //           }
// // // // //         },
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildMissionList(List<Mission> missions) {
// // // // //     return ListView.builder(
// // // // //       itemCount: missions.length,
// // // // //       padding: const EdgeInsets.all(16),
// // // // //       itemBuilder: (context, index) {
// // // // //         final mission = missions[index];
// // // // //         return MissionCard(
// // // // //           mission: mission,
// // // // //           onTap: () => _showVendorOffers(mission),
// // // // //         );
// // // // //       },
// // // // //     );
// // // // //   }

// // // // //   void _showVendorOffers(Mission mission) {
// // // // //     Navigator.push(
// // // // //       context,
// // // // //       MaterialPageRoute(
// // // // //         builder: (context) => VendorOffersScreen(missionId: mission.id),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // // class MissionCard extends StatelessWidget {
// // // // //   final Mission mission;
// // // // //   final VoidCallback onTap;

// // // // //   const MissionCard({
// // // // //     required this.mission,
// // // // //     required this.onTap,
// // // // //     Key? key,
// // // // //   }) : super(key: key);

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Card(
// // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // //       elevation: 4,
// // // // //       child: ListTile(
// // // // //         onTap: onTap,
// // // // //         title: Text(mission.name,
// // // // //             style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // //         subtitle: Column(
// // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // //           children: [
// // // // //             Text('State: ${mission.state}'),
// // // // //             Text('Day: ${mission.day}'),
// // // // //           ],
// // // // //         ),
// // // // //         trailing: mission.image != null
// // // // //             ? Image.network(mission.image!,
// // // // //                 width: 50, height: 50, fit: BoxFit.cover)
// // // // //             : const SizedBox.shrink(),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // // class Mission {
// // // // //   final String id;
// // // // //   final String name;
// // // // //   final MissionState state;
// // // // //   final String categoryId;
// // // // //   final String userId;
// // // // //   final DateTime day;
// // // // //   final String location;
// // // // //   final String note;
// // // // //   final String? image;
// // // // //   final String? details;
// // // // //   final int? room;
// // // // //   final String? grade;
// // // // //   final String? hours;

// // // // //   Mission({
// // // // //     required this.id,
// // // // //     required this.name,
// // // // //     required this.state,
// // // // //     required this.categoryId,
// // // // //     required this.userId,
// // // // //     required this.day,
// // // // //     required this.location,
// // // // //     required this.note,
// // // // //     this.image,
// // // // //     this.details,
// // // // //     this.room,
// // // // //     this.grade,
// // // // //     this.hours,
// // // // //   });

// // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // //     return Mission(
// // // // //       id: json['id'] ?? '',
// // // // //       name: json['name'] ?? '',
// // // // //       state: MissionState.values[json['state'] ?? 0],
// // // // //       categoryId: json['categoryId'] ?? '',
// // // // //       userId: json['userId'] ?? '',
// // // // //       day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
// // // // //       location: json['location'] ?? '',
// // // // //       note: json['note'] ?? '',
// // // // //       image: json['image'],
// // // // //       details: json['details'],
// // // // //       room: json['room'],
// // // // //       grade: json['grade'],
// // // // //       hours: json['hours'],
// // // // //     );
// // // // //   }
// // // // // }

// // // // // enum MissionState {
// // // // //   Pending,
// // // // //   Scheduled,
// // // // //   Completed,
// // // // //   Cancelled,
// // // // // }

// // // // // class VendorOffersScreen extends StatefulWidget {
// // // // //   final String missionId;

// // // // //   const VendorOffersScreen({required this.missionId, Key? key})
// // // // //       : super(key: key);

// // // // //   @override
// // // // //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // // // // }

// // // // // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// // // // //   late Future<List<VendorOffer>> offers;

// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     offers = fetchVendorOffers();
// // // // //   }

// // // // //   Future<List<VendorOffer>> fetchVendorOffers() async {
// // // // //     try {
// // // // //       final response = await http.get(Uri.parse(
// // // // //           'https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));

// // // // //       if (response.statusCode == 200) {
// // // // //         final List<dynamic> data = json.decode(response.body);

// // // // //         List<VendorOffer> vendorOffers = [];
// // // // //         for (var json in data) {
// // // // //           var offer = VendorOffer.fromJson(json);
// // // // //           offer = await fetchVendorDetails(offer); // Fetch and update vendor details
// // // // //           vendorOffers.add(offer);
// // // // //         }

// // // // //         return vendorOffers;
// // // // //       } else {
// // // // //         throw Exception('Failed to load offers');
// // // // //       }
// // // // //     } catch (e) {
// // // // //       throw Exception('Error fetching offers: $e');
// // // // //     }
// // // // //   }

// // // // //   Future<VendorOffer> fetchVendorDetails(VendorOffer offer) async {
// // // // //     try {
// // // // //       // Fetch vendor profile
// // // // //       final profileResponse = await http.get(Uri.parse(
// // // // //           'https://192.168.0.109:7127/api/VenderProfile/${offer.venderProfileId}'));
// // // // //       if (profileResponse.statusCode == 200) {
// // // // //         final profileData = json.decode(profileResponse.body);

// // // // //         // Set vendor profile details with type checks
// // // // //         offer.vendorBio = profileData['bio'] ?? '';
// // // // //         offer.vendorExperience = profileData['experience'] != null ? profileData['experience'].toString() : '';

// // // // //         // Fetch user details
// // // // //         final userId = profileData['userId'].toString();
// // // // //         final userResponse = await http
// // // // //             .get(Uri.parse('https://192.168.0.109:7127/api/User/$userId'));
// // // // //         if (userResponse.statusCode == 200) {
// // // // //           final userData = json.decode(userResponse.body);
// // // // //           offer.vendorName = userData['userName'] ?? '';
// // // // //           offer.vendorEmail = userData['email'] ?? '';
// // // // //           offer.vendorImage = userData['image'];
// // // // //           offer.vendorAge = userData['age'] is int ? userData['age'] : null;
// // // // //           offer.vendorAddress = userData['userAddress'] ?? '';
// // // // //           offer.vendorLocation = userData['location'] ?? '';
// // // // //           offer.vendorGender = userData['gender'] ?? '';
// // // // //         }
// // // // //       }
// // // // //       return offer;
// // // // //     } catch (e) {
// // // // //       throw Exception('Error fetching vendor details: $e');
// // // // //     }
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: const Text(
// // // // //           'Vendor Offers',
// // // // //           style: TextStyle(color: Colors.black),
// // // // //         ),
// // // // //         backgroundColor: Colors.white,
// // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // //         elevation: 1,
// // // // //       ),
// // // // //       body: FutureBuilder<List<VendorOffer>>(
// // // // //         future: offers,
// // // // //         builder: (context, snapshot) {
// // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // //             return const Center(child: CircularProgressIndicator());
// // // // //           } else if (snapshot.hasError) {
// // // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // //             return const Center(child: Text('No offers available'));
// // // // //           } else {
// // // // //             final allOffers = snapshot.data!;
// // // // //             return ListView.builder(
// // // // //               itemCount: allOffers.length,
// // // // //               padding: const EdgeInsets.all(16),
// // // // //               itemBuilder: (context, index) {
// // // // //                 final offer = allOffers[index];
// // // // //                 return OfferCard(
// // // // //                   vendorId: offer.venderProfileId,
// // // // //                   vendorName: offer.vendorName,
// // // // //                   vendorEmail: offer.vendorEmail,
// // // // //                   vendorImage: offer.vendorImage,
// // // // //                   category: offer.category,
// // // // //                   price: offer.price,
// // // // //                   vendorAge: offer.vendorAge,
// // // // //                   vendorAddress: offer.vendorAddress,
// // // // //                   vendorLocation: offer.vendorLocation,
// // // // //                   vendorBio: offer.vendorBio,
// // // // //                   vendorExperience: offer.vendorExperience,
// // // // //                   vendorGender: offer.vendorGender,
// // // // //                   onTap: () => _showOfferDetails(offer),
// // // // //                 );
// // // // //               },
// // // // //             );
// // // // //           }
// // // // //         },
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   void _showOfferDetails(VendorOffer offer) {
// // // // //     showModalBottomSheet(
// // // // //       context: context,
// // // // //       shape: const RoundedRectangleBorder(
// // // // //         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// // // // //       ),
// // // // //       builder: (context) {
// // // // //         return Padding(
// // // // //           padding: const EdgeInsets.all(16.0),
// // // // //           child: Column(
// // // // //             mainAxisSize: MainAxisSize.min,
// // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // //             children: [
// // // // //               Text(
// // // // //                 offer.vendorName,
// // // // //                 style:
// // // // //                     const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // // // //               ),
// // // // //               const SizedBox(height: 8),
// // // // //               Text(offer.vendorEmail,
// // // // //                   style: const TextStyle(fontSize: 16, color: Colors.grey)),
// // // // //               const SizedBox(height: 16),
// // // // //               Text('Price: \$${offer.price}',
// // // // //                   style: const TextStyle(fontSize: 18)),
// // // // //               const SizedBox(height: 16),
// // // // //               Text('Note:',
// // // // //                   style: const TextStyle(
// // // // //                       fontSize: 16, fontWeight: FontWeight.bold)),
// // // // //               Text(offer.note ?? 'No note available.'),
// // // // //               const SizedBox(height: 16),
// // // // //               ElevatedButton(
// // // // //                 onPressed: offer.state
// // // // //                     ? null
// // // // //                     : () {
// // // // //                         _updateOfferState(
// // // // //                             offer.id, true); // Change state to "Accepted"
// // // // //                         Navigator.pop(context); // Close modal
// // // // //                       },
// // // // //                 child: Text(offer.state ? 'Already Accepted' : 'Accept Offer'),
// // // // //               ),
// // // // //             ],
// // // // //           ),
// // // // //         );
// // // // //       },
// // // // //     );
// // // // //   }

// // // // //   Future<void> _updateOfferState(String offerId, bool newState) async {
// // // // //     try {
// // // // //       final response = await http.put(
// // // // //         Uri.parse(
// // // // //             'https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted//$offerId'),
// // // // //         headers: {'Content-Type': 'application/json'},
// // // // //         body: json.encode({'state': newState}),
// // // // //       );

// // // // //       if (response.statusCode == 204) {
// // // // //         setState(() {
// // // // //           offers = fetchVendorOffers(); // Refresh offers after updating
// // // // //         });
// // // // //       } else {
// // // // //         throw Exception('Failed to update offer state');
// // // // //       }
// // // // //     } catch (e) {
// // // // //       // Show error message
// // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // //         SnackBar(content: Text('Error updating offer: $e')),
// // // // //       );
// // // // //     }
// // // // //   }
// // // // // }

// // // // // class OfferCard extends StatelessWidget {
// // // // //   final String vendorId;
// // // // //   final String vendorName;
// // // // //   final String vendorEmail;
// // // // //   final String category;
// // // // //   final double price;
// // // // //   final String? vendorImage;
// // // // //   final int? vendorAge;
// // // // //   final String? vendorAddress;
// // // // //   final String? vendorLocation;
// // // // //   final String? vendorBio;
// // // // //   final String? vendorExperience;
// // // // //   final String? vendorGender;
// // // // //   final VoidCallback onTap;

// // // // //   const OfferCard({
// // // // //     required this.vendorId,
// // // // //     required this.vendorName,
// // // // //     required this.vendorEmail,
// // // // //     required this.category,
// // // // //     required this.price,
// // // // //     required this.onTap,
// // // // //     this.vendorImage,
// // // // //     this.vendorAge,
// // // // //     this.vendorAddress,
// // // // //     this.vendorLocation,
// // // // //     this.vendorBio,
// // // // //     this.vendorExperience,
// // // // //     this.vendorGender,
// // // // //     Key? key,
// // // // //   }) : super(key: key);

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Card(
// // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // //       elevation: 4,
// // // // //       child: ListTile(
// // // // //         onTap: onTap,
// // // // //         leading: CircleAvatar(
// // // // //           radius: 30,
// // // // //           backgroundImage:
// // // // //               vendorImage != null ? NetworkImage(vendorImage!) : null,
// // // // //           child:
// // // // //               vendorImage == null ? const Icon(Icons.person, size: 30) : null,
// // // // //         ),
// // // // //         title: GestureDetector(
// // // // //           onTap: () {
// // // // //             Navigator.push(
// // // // //               context,
// // // // //               MaterialPageRoute(
// // // // //                 builder: (context) => VendorDetailsScreen(
// // // // //              //     vendorId: vendorId,
// // // // //                   vendorName: vendorName,
// // // // //                   vendorEmail: vendorEmail,
// // // // //                   vendorImage: vendorImage,
// // // // //                   vendorAge: vendorAge,
// // // // //                   vendorAddress: vendorAddress,
// // // // //                   vendorLocation: vendorLocation,
// // // // //                   vendorBio: vendorBio,
// // // // //                   vendorExperience: vendorExperience,
// // // // //               //    vendorGender: vendorGender,
// // // // //                 ),
// // // // //               ),
// // // // //             );
// // // // //           },
// // // // //           child: Text(vendorName,
// // // // //               style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // //         ),
// // // // //         subtitle: GestureDetector(
// // // // //           onTap: () {
// // // // //             Navigator.push(
// // // // //               context,
// // // // //               MaterialPageRoute(
// // // // //                 builder: (context) => VendorDetailsScreen(
// // // // //                  // vendorId: vendorId,
// // // // //                   vendorName: vendorName,
// // // // //                   vendorEmail: vendorEmail,
// // // // //                   vendorImage: vendorImage,
// // // // //                   vendorAge: vendorAge,
// // // // //                   vendorAddress: vendorAddress,
// // // // //                   vendorLocation: vendorLocation,
// // // // //                   vendorBio: vendorBio,
// // // // //                   vendorExperience: vendorExperience,
// // // // //              //     vendorGender: vendorGender,
// // // // //                 ),
// // // // //               ),
// // // // //             );
// // // // //           },
// // // // //           child: Column(
// // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // //             children: [
// // // // //               Text(vendorEmail),
// // // // //               Text(category),
// // // // //             ],
// // // // //           ),
// // // // //         ),
// // // // //         trailing: Text('\$$price',
// // // // //             style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // // class VendorOffer {
// // // // //   final String id;
// // // // //   final String venderProfileId;
// // // // //   final String missionId;
// // // // //   final String? note;
// // // // //   final double price;
// // // // //   final bool state;
// // // // //   String vendorName;
// // // // //   String vendorEmail;
// // // // //   String? vendorImage;
// // // // //   final String category;
// // // // //   int? vendorAge;
// // // // //   String? vendorAddress;
// // // // //   String? vendorLocation;
// // // // //   String? vendorBio;
// // // // //   String? vendorExperience;
// // // // //   String? vendorGender;

// // // // //   VendorOffer({
// // // // //     required this.id,
// // // // //     required this.venderProfileId,
// // // // //     required this.missionId,
// // // // //     this.note,
// // // // //     required this.price,
// // // // //     required this.state,
// // // // //     required this.vendorName,
// // // // //     required this.vendorEmail,
// // // // //     this.vendorImage,
// // // // //     required this.category,
// // // // //     this.vendorAge,
// // // // //     this.vendorAddress,
// // // // //     this.vendorLocation,
// // // // //     this.vendorBio,
// // // // //     this.vendorExperience,
// // // // //     this.vendorGender,
// // // // //   });

// // // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // // // //     return VendorOffer(
// // // // //       id: json['id'] ?? '',
// // // // //       venderProfileId: json['venderProfileId'] ?? '',
// // // // //       missionId: json['missionId'] ?? '',
// // // // //       note: json['note'],
// // // // //       price: json['price']?.toDouble() ?? 0.0,
// // // // //       state: json['state'] ?? false,
// // // // //       vendorName: 'Unknown', // Default value, will be updated in fetchVendorDetails
// // // // //       vendorEmail: 'Unknown', // Default value, will be updated in fetchVendorDetails
// // // // //       vendorImage: null, // Default value, will be updated in fetchVendorDetails
// // // // //       category: 'Unknown', // Default value, will be updated in fetchVendorDetails
// // // // //       vendorAge: null, // Default value, will be updated in fetchVendorDetails
// // // // //       vendorAddress: null, // Default value, will be updated in fetchVendorDetails
// // // // //       vendorLocation: null, // Default value, will be updated in fetchVendorDetails
// // // // //       vendorBio: null, // Default value, will be updated in fetchVendorDetails
// // // // //       vendorExperience: null, // Default value, will be updated in fetchVendorDetails
// // // // //       vendorGender: null, // Default value, will be updated in fetchVendorDetails
// // // // //     );
// // // // //   }
// // // // // }
// // // // import 'package:flutter/material.dart';
// // // // import 'dart:convert';
// // // // import 'package:http/http.dart' as http;
// // // // import 'vendor_details_screen.dart';

// // // // class OrdersScreen extends StatefulWidget {
// // // //   final String userId;

// // // //   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

// // // //   @override
// // // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // // }

// // // // class _OrdersScreenState extends State<OrdersScreen>
// // // //     with SingleTickerProviderStateMixin {
// // // //   late TabController _tabController;
// // // //   late Future<List<Mission>> missions;

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _tabController = TabController(length: 2, vsync: this);
// // // //     missions = fetchMissions();
// // // //   }

// // // //   Future<List<Mission>> fetchMissions() async {
// // // //     try {
// // // //       final response = await http.get(Uri.parse(
// // // //           'https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));

// // // //       if (response.statusCode == 200) {
// // // //         final List<dynamic> data = json.decode(response.body);
// // // //         return data.map((json) => Mission.fromJson(json)).toList();
// // // //       } else {
// // // //         throw Exception('Failed to load missions');
// // // //       }
// // // //     } catch (e) {
// // // //       throw Exception('Error fetching missions: $e');
// // // //     }
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: const Text(
// // // //           'User Missions',
// // // //           style: TextStyle(color: Colors.black),
// // // //         ),
// // // //         backgroundColor: Colors.white,
// // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // //         elevation: 1,
// // // //         bottom: TabBar(
// // // //           controller: _tabController,
// // // //           labelColor: Colors.blue,
// // // //           unselectedLabelColor: Colors.grey,
// // // //           indicatorColor: Colors.blue,
// // // //           tabs: const [
// // // //             Tab(text: 'All Missions'),
// // // //             Tab(text: 'Scheduled Missions'),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //       body: FutureBuilder<List<Mission>>(
// // // //         future: missions,
// // // //         builder: (context, snapshot) {
// // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // //             return const Center(child: CircularProgressIndicator());
// // // //           } else if (snapshot.hasError) {
// // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // //             return const Center(child: Text('No missions available'));
// // // //           } else {
// // // //             final allMissions = snapshot.data!;
// // // //             final scheduledMissions = allMissions
// // // //                 .where((mission) => mission.state == MissionState.Scheduled)
// // // //                 .toList();

// // // //             return TabBarView(
// // // //               controller: _tabController,
// // // //               children: [
// // // //                 _buildMissionList(allMissions),
// // // //                 _buildMissionList(scheduledMissions),
// // // //               ],
// // // //             );
// // // //           }
// // // //         },
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildMissionList(List<Mission> missions) {
// // // //     return ListView.builder(
// // // //       itemCount: missions.length,
// // // //       padding: const EdgeInsets.all(16),
// // // //       itemBuilder: (context, index) {
// // // //         final mission = missions[index];
// // // //         return MissionCard(
// // // //           mission: mission,
// // // //           onTap: () => _showVendorOffers(mission),
// // // //         );
// // // //       },
// // // //     );
// // // //   }

// // // //   void _showVendorOffers(Mission mission) {
// // // //     Navigator.push(
// // // //       context,
// // // //       MaterialPageRoute(
// // // //         builder: (context) => VendorOffersScreen(missionId: mission.id),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // class MissionCard extends StatelessWidget {
// // // //   final Mission mission;
// // // //   final VoidCallback onTap;

// // // //   const MissionCard({
// // // //     required this.mission,
// // // //     required this.onTap,
// // // //     Key? key,
// // // //   }) : super(key: key);

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Card(
// // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // //       elevation: 4,
// // // //       child: ListTile(
// // // //         onTap: onTap,
// // // //         title: Text(mission.name,
// // // //             style: const TextStyle(fontWeight: FontWeight.bold)),
// // // //         subtitle: Column(
// // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // //           children: [
// // // //             Text('State: ${mission.state}'),
// // // //             Text('Day: ${mission.day}'),
// // // //           ],
// // // //         ),
// // // //         trailing: mission.image != null
// // // //             ? Image.network(mission.image!,
// // // //                 width: 50, height: 50, fit: BoxFit.cover)
// // // //             : const SizedBox.shrink(),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // class Mission {
// // // //   final String id;
// // // //   final String name;
// // // //   final MissionState state;
// // // //   final String categoryId;
// // // //   final String userId;
// // // //   final DateTime day;
// // // //   final String location;
// // // //   final String note;
// // // //   final String? image;
// // // //   final String? details;
// // // //   final int? room;
// // // //   final String? grade;
// // // //   final String? hours;

// // // //   Mission({
// // // //     required this.id,
// // // //     required this.name,
// // // //     required this.state,
// // // //     required this.categoryId,
// // // //     required this.userId,
// // // //     required this.day,
// // // //     required this.location,
// // // //     required this.note,
// // // //     this.image,
// // // //     this.details,
// // // //     this.room,
// // // //     this.grade,
// // // //     this.hours,
// // // //   });

// // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // //     return Mission(
// // // //       id: json['id'] ?? '',
// // // //       name: json['name'] ?? '',
// // // //       state: MissionState.values[json['state'] ?? 0],
// // // //       categoryId: json['categoryId'] ?? '',
// // // //       userId: json['userId'] ?? '',
// // // //       day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
// // // //       location: json['location'] ?? '',
// // // //       note: json['note'] ?? '',
// // // //       image: json['image'],
// // // //       details: json['details'],
// // // //       room: json['room'],
// // // //       grade: json['grade'],
// // // //       hours: json['hours'],
// // // //     );
// // // //   }
// // // // }

// // // // enum MissionState {
// // // //   Pending,
// // // //   Scheduled,
// // // //   Completed,
// // // //   Cancelled,
// // // // }

// // // // class VendorOffersScreen extends StatefulWidget {
// // // //   final String missionId;

// // // //   const VendorOffersScreen({required this.missionId, Key? key})
// // // //       : super(key: key);

// // // //   @override
// // // //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // // // }

// // // // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// // // //   late Future<List<VendorOffer>> offers;

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     offers = fetchVendorOffers();
// // // //   }

// // // //   Future<List<VendorOffer>> fetchVendorOffers() async {
// // // //     try {
// // // //       final response = await http.get(Uri.parse(
// // // //           'https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));

// // // //       if (response.statusCode == 200) {
// // // //         final List<dynamic> data = json.decode(response.body);

// // // //         List<VendorOffer> vendorOffers = [];
// // // //         for (var json in data) {
// // // //           var offer = VendorOffer.fromJson(json);
// // // //           offer = await fetchVendorDetails(offer); // Fetch and update vendor details
// // // //           vendorOffers.add(offer);
// // // //         }

// // // //         return vendorOffers;
// // // //       } else {
// // // //         throw Exception('Failed to load offers');
// // // //       }
// // // //     } catch (e) {
// // // //       throw Exception('Error fetching offers: $e');
// // // //     }
// // // //   }

// // // //   Future<VendorOffer> fetchVendorDetails(VendorOffer offer) async {
// // // //     try {
// // // //       // Fetch vendor profile
// // // //       final profileResponse = await http.get(Uri.parse(
// // // //           'https://192.168.0.109:7127/api/VenderProfile/${offer.venderProfileId}'));
// // // //       if (profileResponse.statusCode == 200) {
// // // //         final profileData = json.decode(profileResponse.body);

// // // //         // Set vendor profile details with type checks
// // // //         offer.vendorBio = profileData['bio'] ?? '';
// // // //         offer.vendorExperience = profileData['experience'] != null ? profileData['experience'].toString() : '';

// // // //         // Fetch user details
// // // //         final userId = profileData['userId'].toString();
// // // //         final userResponse = await http
// // // //             .get(Uri.parse('https://192.168.0.109:7127/api/User/$userId'));
// // // //         if (userResponse.statusCode == 200) {
// // // //           final userData = json.decode(userResponse.body);
// // // //           offer.vendorName = userData['userName'] ?? '';
// // // //           offer.vendorEmail = userData['email'] ?? '';
// // // //           offer.vendorImage = userData['image'];
// // // //           offer.vendorAge = userData['age'] is int ? userData['age'] : null;
// // // //           offer.vendorAddress = userData['userAddress'] ?? '';
// // // //           offer.vendorLocation = userData['location'] ?? '';
// // // //           offer.vendorGender = userData['gender'] != null ? userData['gender'].toString() : '';
// // // //         }
// // // //       }
// // // //       return offer;
// // // //     } catch (e) {
// // // //       throw Exception('Error fetching vendor details: $e');
// // // //     }
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: const Text(
// // // //           'Vendor Offers',
// // // //           style: TextStyle(color: Colors.black),
// // // //         ),
// // // //         backgroundColor: Colors.white,
// // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // //         elevation: 1,
// // // //       ),
// // // //       body: FutureBuilder<List<VendorOffer>>(
// // // //         future: offers,
// // // //         builder: (context, snapshot) {
// // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // //             return const Center(child: CircularProgressIndicator());
// // // //           } else if (snapshot.hasError) {
// // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // //             return const Center(child: Text('No offers available'));
// // // //           } else {
// // // //             final allOffers = snapshot.data!;
// // // //             return ListView.builder(
// // // //               itemCount: allOffers.length,
// // // //               padding: const EdgeInsets.all(16),
// // // //               itemBuilder: (context, index) {
// // // //                 final offer = allOffers[index];
// // // //                 return OfferCard(
// // // //                   vendorId: offer.venderProfileId,
// // // //                   vendorName: offer.vendorName,
// // // //                   vendorEmail: offer.vendorEmail,
// // // //                   vendorImage: offer.vendorImage,
// // // //                   category: offer.category,
// // // //                   price: offer.price,
// // // //                   vendorAge: offer.vendorAge,
// // // //                   vendorAddress: offer.vendorAddress,
// // // //                   vendorLocation: offer.vendorLocation,
// // // //                   vendorBio: offer.vendorBio,
// // // //                   vendorExperience: offer.vendorExperience,
// // // //                   vendorGender: offer.vendorGender,
// // // //                   note: offer.note,
// // // //                   onTap: () => _showVendorDetails(offer),
// // // //                   onAccept: () => _updateOfferState(offer.id, true),
// // // //                 );
// // // //               },
// // // //             );
// // // //           }
// // // //         },
// // // //       ),
// // // //     );
// // // //   }

// // // //   void _showVendorDetails(VendorOffer offer) {
// // // //     Navigator.push(
// // // //       context,
// // // //       MaterialPageRoute(
// // // //         builder: (context) => VendorDetailsScreen(vendorId: offer.venderProfileId ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Future<void> _updateOfferState(String offerId, bool newState) async {
// // // //     try {
// // // //       final response = await http.put(
// // // //         Uri.parse(
// // // //             'https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted/$offerId'),
// // // //         headers: {'Content-Type': 'application/json'},
// // // //         body: json.encode({'state': newState}),
// // // //       );

// // // //       if (response.statusCode == 204) {
// // // //         setState(() {
// // // //           offers = fetchVendorOffers(); // Refresh offers after updating
// // // //         });
// // // //       } else {
// // // //         throw Exception('Failed to update offer state');
// // // //       }
// // // //     } catch (e) {
// // // //       // Show error message
// // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // //         SnackBar(content: Text('Error updating offer: $e')),
// // // //       );
// // // //     }
// // // //   }
// // // // }

// // // // class OfferCard extends StatelessWidget {
// // // //   final String vendorId;
// // // //   final String vendorName;
// // // //   final String vendorEmail;
// // // //   final String category;
// // // //   final double price;
// // // //   final String? vendorImage;
// // // //   final int? vendorAge;
// // // //   final String? vendorAddress;
// // // //   final String? vendorLocation;
// // // //   final String? vendorBio;
// // // //   final String? vendorExperience;
// // // //   final String? vendorGender;
// // // //   final String? note;
// // // //   final VoidCallback onTap;
// // // //   final VoidCallback onAccept;

// // // //   const OfferCard({
// // // //     required this.vendorId,
// // // //     required this.vendorName,
// // // //     required this.vendorEmail,
// // // //     required this.category,
// // // //     required this.price,
// // // //     required this.onTap,
// // // //     required this.onAccept,
// // // //     this.vendorImage,
// // // //     this.vendorAge,
// // // //     this.vendorAddress,
// // // //     this.vendorLocation,
// // // //     this.vendorBio,
// // // //     this.vendorExperience,
// // // //     this.vendorGender,
// // // //     this.note,
// // // //     Key? key,
// // // //   }) : super(key: key);

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Card(
// // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // //       elevation: 4,
// // // //       child: ListTile(
// // // //         onTap: onTap,
// // // //         leading: CircleAvatar(
// // // //           radius: 30,
// // // //           backgroundImage:
// // // //               vendorImage != null ? NetworkImage(vendorImage!) : null,
// // // //           child:
// // // //               vendorImage == null ? const Icon(Icons.person, size: 30) : null,
// // // //         ),
// // // //         title: GestureDetector(
// // // //           onTap: onTap,
// // // //           child: Text(vendorName, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // //         ),
// // // //         subtitle: GestureDetector(
// // // //           onTap: onTap,
// // // //           child: Column(
// // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // //             children: [
// // // //               Text(vendorEmail),
// // // //               Text(category),
// // // //             ],
// // // //           ),
// // // //         ),
// // // //         trailing: IconButton(
// // // //           icon: const Icon(Icons.check),
// // // //           onPressed: onAccept,
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // class VendorOffer {
// // // //   final String id;
// // // //   final String venderProfileId;
// // // //   final String missionId;
// // // //   final String? note;
// // // //   final double price;
// // // //   final bool state;
// // // //   String vendorName;
// // // //   String vendorEmail;
// // // //   String? vendorImage;
// // // //   final String category;
// // // //   int? vendorAge;
// // // //   String? vendorAddress;
// // // //   String? vendorLocation;
// // // //   String? vendorBio;
// // // //   String? vendorExperience;
// // // //   String? vendorGender;

// // // //   VendorOffer({
// // // //     required this.id,
// // // //     required this.venderProfileId,
// // // //     required this.missionId,
// // // //     this.note,
// // // //     required this.price,
// // // //     required this.state,
// // // //     required this.vendorName,
// // // //     required this.vendorEmail,
// // // //     this.vendorImage,
// // // //     required this.category,
// // // //     this.vendorAge,
// // // //     this.vendorAddress,
// // // //     this.vendorLocation,
// // // //     this.vendorBio,
// // // //     this.vendorExperience,
// // // //     this.vendorGender,
// // // //   });

// // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // // //     return VendorOffer(
// // // //       id: json['id'] ?? '',
// // // //       venderProfileId: json['venderProfileId'] ?? '',
// // // //       missionId: json['missionId'] ?? '',
// // // //       note: json['note'],
// // // //       price: json['price']?.toDouble() ?? 0.0,
// // // //       state: json['state'] ?? false,
// // // //       vendorName: 'Unknown', // Default value, will be updated in fetchVendorDetails
// // // //       vendorEmail: 'Unknown', // Default value, will be updated in fetchVendorDetails
// // // //       vendorImage: null, // Default value, will be updated in fetchVendorDetails
// // // //       category: json['category'] ?? 'Unknown', // Default value, will be updated in fetchVendorDetails
// // // //       vendorAge: null, // Default value, will be updated in fetchVendorDetails
// // // //       vendorAddress: null, // Default value, will be updated in fetchVendorDetails
// // // //       vendorLocation: null, // Default value, will be updated in fetchVendorDetails
// // // //       vendorBio: null, // Default value, will be updated in fetchVendorDetails
// // // //       vendorExperience: null, // Default value, will be updated in fetchVendorDetails
// // // //       vendorGender: null, // Default value, will be updated in fetchVendorDetails
// // // //     );
// // // //   }
// // // // }
// // // import 'package:flutter/material.dart';
// // // import 'dart:convert';
// // // import 'package:http/http.dart' as http;
// // // import 'vendor_details_screen.dart';

// // // class OrdersScreen extends StatefulWidget {
// // //   final String userId;

// // //   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

// // //   @override
// // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // }

// // // class _OrdersScreenState extends State<OrdersScreen>
// // //     with SingleTickerProviderStateMixin {
// // //   late TabController _tabController;
// // //   late Future<List<Mission>> missions;

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _tabController = TabController(length: 2, vsync: this);
// // //     missions = fetchMissions();
// // //   }

// // //   Future<List<Mission>> fetchMissions() async {
// // //     try {
// // //       final response = await http.get(Uri.parse(
// // //           'https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));

// // //       if (response.statusCode == 200) {
// // //         final List<dynamic> data = json.decode(response.body);
// // //         return data.map((json) => Mission.fromJson(json)).toList();
// // //       } else {
// // //         throw Exception('Failed to load missions');
// // //       }
// // //     } catch (e) {
// // //       throw Exception('Error fetching missions: $e');
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: const Text(
// // //           'User Missions',
// // //           style: TextStyle(color: Colors.black),
// // //         ),
// // //         backgroundColor: Colors.white,
// // //         iconTheme: const IconThemeData(color: Colors.black),
// // //         elevation: 1,
// // //         bottom: TabBar(
// // //           controller: _tabController,
// // //           labelColor: Colors.blue,
// // //           unselectedLabelColor: Colors.grey,
// // //           indicatorColor: Colors.blue,
// // //           tabs: const [
// // //             Tab(text: 'All Missions'),
// // //             Tab(text: 'Scheduled Missions'),
// // //           ],
// // //         ),
// // //       ),
// // //       body: FutureBuilder<List<Mission>>(
// // //         future: missions,
// // //         builder: (context, snapshot) {
// // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // //             return const Center(child: CircularProgressIndicator());
// // //           } else if (snapshot.hasError) {
// // //             return Center(child: Text('Error: ${snapshot.error}'));
// // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // //             return const Center(child: Text('No missions available'));
// // //           } else {
// // //             final allMissions = snapshot.data!;
// // //             final scheduledMissions = allMissions
// // //                 .where((mission) => mission.state == MissionState.Scheduled)
// // //                 .toList();

// // //             return TabBarView(
// // //               controller: _tabController,
// // //               children: [
// // //                 _buildMissionList(allMissions),
// // //                 _buildMissionList(scheduledMissions),
// // //               ],
// // //             );
// // //           }
// // //         },
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildMissionList(List<Mission> missions) {
// // //     return ListView.builder(
// // //       itemCount: missions.length,
// // //       padding: const EdgeInsets.all(16),
// // //       itemBuilder: (context, index) {
// // //         final mission = missions[index];
// // //         return MissionCard(
// // //           mission: mission,
// // //           onTap: () => _showVendorOffers(mission),
// // //         );
// // //       },
// // //     );
// // //   }

// // //   void _showVendorOffers(Mission mission) {
// // //     Navigator.push(
// // //       context,
// // //       MaterialPageRoute(
// // //         builder: (context) => VendorOffersScreen(missionId: mission.id),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class MissionCard extends StatelessWidget {
// // //   final Mission mission;
// // //   final VoidCallback onTap;

// // //   const MissionCard({
// // //     required this.mission,
// // //     required this.onTap,
// // //     Key? key,
// // //   }) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Card(
// // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // //       elevation: 4,
// // //       child: ListTile(
// // //         onTap: onTap,
// // //         title: Text(mission.name,
// // //             style: const TextStyle(fontWeight: FontWeight.bold)),
// // //         subtitle: Column(
// // //           crossAxisAlignment: CrossAxisAlignment.start,
// // //           children: [
// // //             Text('State: ${mission.state}'),
// // //             Text('Day: ${mission.day}'),
// // //           ],
// // //         ),
// // //         trailing: mission.image != null
// // //             ? Image.network(mission.image!,
// // //                 width: 50, height: 50, fit: BoxFit.cover)
// // //             : const SizedBox.shrink(),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class Mission {
// // //   final String id;
// // //   final String name;
// // //   final MissionState state;
// // //   final String categoryId;
// // //   final String userId;
// // //   final DateTime day;
// // //   final String location;
// // //   final String note;
// // //   final String? image;
// // //   final String? details;
// // //   final int? room;
// // //   final String? grade;
// // //   final String? hours;

// // //   Mission({
// // //     required this.id,
// // //     required this.name,
// // //     required this.state,
// // //     required this.categoryId,
// // //     required this.userId,
// // //     required this.day,
// // //     required this.location,
// // //     required this.note,
// // //     this.image,
// // //     this.details,
// // //     this.room,
// // //     this.grade,
// // //     this.hours,
// // //   });

// // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // //     return Mission(
// // //       id: json['id'] ?? '',
// // //       name: json['name'] ?? '',
// // //       state: MissionState.values[json['state'] ?? 0],
// // //       categoryId: json['categoryId'] ?? '',
// // //       userId: json['userId'] ?? '',
// // //       day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
// // //       location: json['location'] ?? '',
// // //       note: json['note'] ?? '',
// // //       image: json['image'],
// // //       details: json['details'],
// // //       room: json['room'],
// // //       grade: json['grade'],
// // //       hours: json['hours'],
// // //     );
// // //   }
// // // }

// // // enum MissionState {
// // //   Pending,
// // //   Scheduled,
// // //   Completed,
// // //   Cancelled,
// // // }

// // // class VendorOffersScreen extends StatefulWidget {
// // //   final String missionId;

// // //   const VendorOffersScreen({required this.missionId, Key? key})
// // //       : super(key: key);

// // //   @override
// // //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // // }

// // // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// // //   late Future<List<VendorOffer>> offers;

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     offers = fetchVendorOffers();
// // //   }

// // //   Future<List<VendorOffer>> fetchVendorOffers() async {
// // //     try {
// // //       final response = await http.get(Uri.parse(
// // //           'https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));

// // //       if (response.statusCode == 200) {
// // //         final List<dynamic> data = json.decode(response.body);

// // //         List<VendorOffer> vendorOffers = [];
// // //         for (var json in data) {
// // //           var offer = VendorOffer.fromJson(json);
// // //           offer = await fetchVendorDetails(offer); // Fetch and update vendor details
// // //           vendorOffers.add(offer);
// // //         }

// // //         return vendorOffers;
// // //       } else {
// // //         throw Exception('Failed to load offers');
// // //       }
// // //     } catch (e) {
// // //       throw Exception('Error fetching offers: $e');
// // //     }
// // //   }

// // //   Future<VendorOffer> fetchVendorDetails(VendorOffer offer) async {
// // //     try {
// // //       // Fetch vendor profile
// // //       final profileResponse = await http.get(Uri.parse(
// // //           'https://192.168.0.109:7127/api/VenderProfile/${offer.venderProfileId}'));
// // //       if (profileResponse.statusCode == 200) {
// // //         final profileData = json.decode(profileResponse.body);

// // //         // Set vendor profile details with type checks
// // //         offer.vendorBio = profileData['bio'] ?? '';
// // //         offer.vendorExperience = profileData['experience'] != null ? profileData['experience'].toString() : '';

// // //         // Fetch user details
// // //         final userId = profileData['userId'].toString();
// // //         final userResponse = await http
// // //             .get(Uri.parse('https://192.168.0.109:7127/api/User/$userId'));
// // //         if (userResponse.statusCode == 200) {
// // //           final userData = json.decode(userResponse.body);
// // //           offer.vendorName = userData['userName'] ?? '';
// // //           offer.vendorEmail = userData['email'] ?? '';
// // //           offer.vendorImage = userData['image'];
// // //           offer.vendorAge = userData['age'] is int ? userData['age'] : null;
// // //           offer.vendorAddress = userData['userAddress'] ?? '';
// // //           offer.vendorLocation = userData['location'] ?? '';
// // //           offer.vendorGender = userData['gender'] != null ? userData['gender'].toString() : '';
// // //         }
// // //       }
// // //       return offer;
// // //     } catch (e) {
// // //       throw Exception('Error fetching vendor details: $e');
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: const Text(
// // //           'Vendor Offers',
// // //           style: TextStyle(color: Colors.black),
// // //         ),
// // //         backgroundColor: Colors.white,
// // //         iconTheme: const IconThemeData(color: Colors.black),
// // //         elevation: 1,
// // //       ),
// // //       body: FutureBuilder<List<VendorOffer>>(
// // //         future: offers,
// // //         builder: (context, snapshot) {
// // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // //             return const Center(child: CircularProgressIndicator());
// // //           } else if (snapshot.hasError) {
// // //             return Center(child: Text('Error: ${snapshot.error}'));
// // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // //             return const Center(child: Text('No offers available'));
// // //           } else {
// // //             final allOffers = snapshot.data!;
// // //             return ListView.builder(
// // //               itemCount: allOffers.length,
// // //               padding: const EdgeInsets.all(16),
// // //               itemBuilder: (context, index) {
// // //                 final offer = allOffers[index];
// // //                 return OfferCard(
// // //                   vendorId: offer.venderProfileId,
// // //                   vendorName: offer.vendorName,
// // //                   vendorEmail: offer.vendorEmail,
// // //                   vendorImage: offer.vendorImage,
// // //                   category: offer.category,
// // //                   price: offer.price,
// // //                   vendorAge: offer.vendorAge,
// // //                   vendorAddress: offer.vendorAddress,
// // //                   vendorLocation: offer.vendorLocation,
// // //                   vendorBio: offer.vendorBio,
// // //                   vendorExperience: offer.vendorExperience,
// // //                   vendorGender: offer.vendorGender,
// // //                   note: offer.note,
// // //                   onTap: () => _showVendorDetails(offer),
// // //                 );
// // //               },
// // //             );
// // //           }
// // //         },
// // //       ),
// // //     );
// // //   }

// // //   void _showVendorDetails(VendorOffer offer) {
// // //     showModalBottomSheet(
// // //       context: context,
// // //       shape: const RoundedRectangleBorder(
// // //         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// // //       ),
// // //       builder: (context) {
// // //         return Padding(
// // //           padding: const EdgeInsets.all(16.0),
// // //           child: Column(
// // //             mainAxisSize: MainAxisSize.min,
// // //             crossAxisAlignment: CrossAxisAlignment.start,
// // //             children: [
// // //               Text(
// // //                 'Price: \$${offer.price}',
// // //                 style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// // //               ),
// // //               const SizedBox(height: 8),
// // //               Text(
// // //                 'Note: ${offer.note ?? "No note available"}',
// // //                 style: const TextStyle(fontSize: 16),
// // //               ),
// // //               const SizedBox(height: 16),
// // //               GestureDetector(
// // //                 onTap: () => Navigator.push(
// // //                   context,
// // //                   MaterialPageRoute(
// // //                     builder: (context) => VendorDetailsScreen(
// // //                       vendorName: offer.vendorName,
// // //                       vendorEmail: offer.vendorEmail,
// // //                       vendorImage: offer.vendorImage,
// // //                       vendorAge: offer.vendorAge,
// // //                       vendorAddress: offer.vendorAddress,
// // //                       vendorLocation: offer.vendorLocation,
// // //                      vendorBio: offer.vendorBio,
// // //                     vendorExperience: offer.vendorExperience,
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 child: Column(
// // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                   children: [
// // //                     Text(
// // //                       'Name: ${offer.vendorName}',
// // //                       style: const TextStyle(fontSize: 18, color: Colors.blue),
// // //                     ),
// // //                     const SizedBox(height: 4),
// // //                     Text(
// // //                       'Email: ${offer.vendorEmail}',
// // //                       style: const TextStyle(fontSize: 18, color: Colors.blue),
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ),
// // //               const SizedBox(height: 16),
// // //               Align(
// // //                 alignment: Alignment.centerRight,
// // //                 child: ElevatedButton(
// // //                   onPressed: () => _updateOfferState(offer.id, true),
// // //                   child: const Text('Accept Offer'),
// // //                 ),
// // //               ),
// // //             ],
// // //           ),
// // //         );
// // //       },
// // //     );
// // //   }

// // //   Future<void> _updateOfferState(String offerId, bool newState) async {
// // //     try {
// // //       final response = await http.put(
// // //         Uri.parse(
// // //             'https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted/$offerId'),
// // //         headers: {'Content-Type': 'application/json'},
// // //         body: json.encode({'state': newState}),
// // //       );

// // //       if (response.statusCode == 204) {
// // //         setState(() {
// // //           offers = fetchVendorOffers(); // Refresh offers after updating
// // //         });
// // //       } else {
// // //         throw Exception('Failed to update offer state');
// // //       }
// // //     } catch (e) {
// // //       // Show error message
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //         SnackBar(content: Text('Error updating offer: $e')),
// // //       );
// // //     }
// // //   }
// // // }

// // // class OfferCard extends StatelessWidget {
// // //   final String vendorId;
// // //   final String vendorName;
// // //   final String vendorEmail;
// // //   final String category;
// // //   final double price;
// // //   final String? vendorImage;
// // //   final int? vendorAge;
// // //   final String? vendorAddress;
// // //   final String? vendorLocation;
// // //   final String? vendorBio;
// // //   final String? vendorExperience;
// // //   final String? vendorGender;
// // //   final String? note;
// // //   final VoidCallback onTap;

// // //   const OfferCard({
// // //     required this.vendorId,
// // //     required this.vendorName,
// // //     required this.vendorEmail,
// // //     required this.category,
// // //     required this.price,
// // //     required this.onTap,
// // //     this.vendorImage,
// // //     this.vendorAge,
// // //     this.vendorAddress,
// // //     this.vendorLocation,
// // //     this.vendorBio,
// // //     this.vendorExperience,
// // //     this.vendorGender,
// // //     this.note,
// // //     Key? key,
// // //   }) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Card(
// // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // //       elevation: 4,
// // //       child: ListTile(
// // //         onTap: onTap,
// // //         leading: CircleAvatar(
// // //           radius: 30,
// // //           backgroundImage:
// // //               vendorImage != null ? NetworkImage(vendorImage!) : null,
// // //           child:
// // //               vendorImage == null ? const Icon(Icons.person, size: 30) : null,
// // //         ),
// // //         title: GestureDetector(
// // //           onTap: onTap,
// // //           child: Text(vendorName, style: const TextStyle(fontWeight: FontWeight.bold)),
// // //         ),
// // //         subtitle: GestureDetector(
// // //           onTap: onTap,
// // //           child: Column(
// // //             crossAxisAlignment: CrossAxisAlignment.start,
// // //             children: [
// // //               Text(vendorEmail),
// // //               Text(category),
// // //               Text('Price: \$${price.toStringAsFixed(2)}'),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class VendorOffer {
// // //   final String id;
// // //   final String venderProfileId;
// // //   final String missionId;
// // //   final String? note;
// // //   final double price;
// // //   final bool state;
// // //   String vendorName;
// // //   String vendorEmail;
// // //   String? vendorImage;
// // //   final String category;
// // //   int? vendorAge;
// // //   String? vendorAddress;
// // //   String? vendorLocation;
// // //   String? vendorBio;
// // //   String? vendorExperience;
// // //   String? vendorGender;

// // //   VendorOffer({
// // //     required this.id,
// // //     required this.venderProfileId,
// // //     required this.missionId,
// // //     this.note,
// // //     required this.price,
// // //     required this.state,
// // //     required this.vendorName,
// // //     required this.vendorEmail,
// // //     this.vendorImage,
// // //     required this.category,
// // //     this.vendorAge,
// // //     this.vendorAddress,
// // //     this.vendorLocation,
// // //     this.vendorBio,
// // //     this.vendorExperience,
// // //     this.vendorGender,
// // //   });

// // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // //     return VendorOffer(
// // //       id: json['id'] ?? '',
// // //       venderProfileId: json['venderProfileId'] ?? '',
// // //       missionId: json['missionId'] ?? '',
// // //       note: json['note'],
// // //       price: json['price']?.toDouble() ?? 0.0,
// // //       state: json['state'] ?? false,
// // //       vendorName: 'Unknown', // Default value, will be updated in fetchVendorDetails
// // //       vendorEmail: 'Unknown', // Default value, will be updated in fetchVendorDetails
// // //       vendorImage: null, // Default value, will be updated in fetchVendorDetails
// // //       category: json['category'] ?? 'Unknown', // Default value, will be updated in fetchVendorDetails
// // //       vendorAge: null, // Default value, will be updated in fetchVendorDetails
// // //       vendorAddress: null, // Default value, will be updated in fetchVendorDetails
// // //       vendorLocation: null, // Default value, will be updated in fetchVendorDetails
// // //       vendorBio: null, // Default value, will be updated in fetchVendorDetails
// // //       vendorExperience: null, // Default value, will be updated in fetchVendorDetails
// // //       vendorGender: null, // Default value, will be updated in fetchVendorDetails
// // //     );
// // //   }
// // // }


// // import 'package:flutter/material.dart';
// // import 'package:flutter_svg/svg.dart';
// //  import 'dart:convert';
// //       import 'package:http/http.dart' as http;
// //       import '../theme.dart';
// //       import 'vendor_details_screen.dart';

// //       class OrdersScreen extends StatefulWidget {
// //         final String userId;

// //         const OrdersScreen({required this.userId, Key? key}) : super(key: key);


// //   @override
// //   State<OrdersScreen> createState() => _OrdersScreenState();
// // }

// // class _OrdersScreenState extends State<OrdersScreen>
// //     with SingleTickerProviderStateMixin {
// //   late TabController _tabController;
// //   late Future<List<Mission>> missions;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _tabController = TabController(length: 2, vsync: this);
// //     missions = fetchMissions();
// //   }

// //   Future<List<Mission>> fetchMissions() async {
// //     try {
// //       final response = await http.get(Uri.parse(
// //           'https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));

// //       if (response.statusCode == 200) {
// //         final List<dynamic> data = json.decode(response.body);
// //         return data.map((json) => Mission.fromJson(json)).toList();
// //       } else {
// //         throw Exception('Failed to load missions');

// //         @override
// //         State<OrdersScreen> createState() => _OrdersScreenState();



// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text(
// //           'User Missions',
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
// //             Tab(text: 'All Missions'),
// //             Tab(text: 'Scheduled Missions'),
// //           ],
// //         ),
// //       ),
// //       body: FutureBuilder<List<Mission>>(
// //         future: missions,
// //         builder: (context, snapshot) {
// //           if (snapshot.connectionState == ConnectionState.waiting) {
// //             return const Center(child: CircularProgressIndicator());
// //           } else if (snapshot.hasError) {
// //             return Center(child: Text('Error: ${snapshot.error}'));
// //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// //             return const Center(child: Text('No missions available'));
// //           } else {
// //             final allMissions = snapshot.data!;
// //             final scheduledMissions = allMissions
// //                 .where((mission) => mission.state == MissionState.Scheduled)
// //                 .toList();

// //       class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin {
// //         late TabController _tabController;
// //         late Future<List<Mission>> missions;


// //         @override
// //         void initState() {
// //           super.initState();
// //           _tabController = TabController(length: 2, vsync: this);
// //           missions = fetchMissions();
// //         }

// //         Future<List<Mission>> fetchMissions() async {
// //           try {
// //             final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));

// //             if (response.statusCode == 200) {
// //               final List<dynamic> data = json.decode(response.body);
// //               return data.map((json) => Mission.fromJson(json)).toList();
// //             } else {
// //               throw Exception('Failed to load missions');
// //             }
// //           } catch (e) {
// //             throw Exception('Error fetching missions: $e');
// //           }
// //         }

// //         @override
// //         Widget build(BuildContext context) {
// //           return Scaffold(
// //             appBar: AppBar(
// //               backgroundColor: AppColors.backgroundColor,
// //               flexibleSpace: Padding(
// //                 padding: const EdgeInsets.only(top: 25),
// //                 child: Center(
// //                   child: SvgPicture.asset(
// //                     'images/g8.svg',
// //                     height: 80,
// //                   ),
// //                 ),
// //               ),
// //               bottom: PreferredSize(
// //                 preferredSize: const Size.fromHeight(4.0),
// //                 child: Container(
// //                   color: Colors.grey[300],
// //                   height: 1.5,
// //                 ),
// //               ),
// //             ),
// //             body: Column(
// //               children: [
// //                 SizedBox(height: MediaQuery.of(context).size.height * 0.02),
// //                 Padding(
// //                   padding: const EdgeInsets.only(left: 8),
// //                   child: Row(
// //                     mainAxisAlignment: MainAxisAlignment.start,
// //                     children: [
// //                       Text(
// //                         "User Missions",
// //                         style: TextStyle(
// //                           fontSize: 24,
// //                           fontWeight: FontWeight.bold,
// //                           color: AppColors.primaryColor,
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //                 SizedBox(height: MediaQuery.of(context).size.height * 0.009),
// //                 TabBar(
// //                   controller: _tabController,
// //                   labelColor: Colors.blue,
// //                   unselectedLabelColor: Colors.grey,
// //                   indicatorColor: Colors.blue,
// //                   tabs: const [
// //                     Tab(text: 'All Missions'),
// //                     Tab(text: 'Scheduled Missions'),
// //                   ],
// //                 ),
// //                 Expanded(
// //                   child: FutureBuilder<List<Mission>>(
// //                     future: missions,
// //                     builder: (context, snapshot) {
// //                       if (snapshot.connectionState == ConnectionState.waiting) {
// //                         return const Center(child: CircularProgressIndicator());
// //                       } else if (snapshot.hasError) {
// //                         return Center(child: Text('Error: ${snapshot.error}'));
// //                       } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// //                         return const Center(child: Text('No missions available'));
// //                       } else {
// //                         final allMissions = snapshot.data!;
// //                         final scheduledMissions = allMissions.where((mission) => mission.state == MissionState.Scheduled).toList();

// //                         return TabBarView(
// //                           controller: _tabController,
// //                           children: [
// //                             _buildMissionList(allMissions),
// //                             _buildMissionList(scheduledMissions),
// //                           ],
// //                         );
// //                       }
// //                     },
// //                   ),
// //                 ),
// //               ],

// //             );
// //           }
// //         },
// //       ),
// //     );
// //   }

// //   Widget _buildMissionList(List<Mission> missions) {
// //     return ListView.builder(
// //       itemCount: missions.length,
// //       padding: const EdgeInsets.all(16),
// //       itemBuilder: (context, index) {
// //         final mission = missions[index];
// //         return MissionCard(
// //           mission: mission,
// //           onTap: () => _showVendorOffers(mission),
// //         );
// //       },
// //     );
// //   }

// //   void _showVendorOffers(Mission mission) {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(
// //         builder: (context) => VendorOffersScreen(missionId: mission.id),
// //       ),
// //     );
// //   }
// // }

// // class MissionCard extends StatelessWidget {
// //   final Mission mission;
// //   final VoidCallback onTap;

// //   const MissionCard({
// //     required this.mission,
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
// //         title: Text(mission.name,
// //             style: const TextStyle(fontWeight: FontWeight.bold)),
// //         subtitle: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Text('State: ${mission.state}'),
// //             Text('Day: ${mission.day}'),
// //           ],
// //         ),
// //         trailing: mission.image != null
// //             ? Image.network(mission.image!,
// //                 width: 50, height: 50, fit: BoxFit.cover)
// //             : const SizedBox.shrink(),
// //       ),
// //     );
// //   }
// // }

// // class Mission {
// //   final String id;
// //   final String name;
// //   final MissionState state;
// //   final String categoryId;
// //   final String userId;
// //   final DateTime day;
// //   final String location;
// //   final String note;
// //   final String? image;
// //   final String? details;
// //   final int? room;
// //   final String? grade;
// //   final String? hours;

// //   Mission({
// //     required this.id,
// //     required this.name,
// //     required this.state,
// //     required this.categoryId,
// //     required this.userId,
// //     required this.day,
// //     required this.location,
// //     required this.note,
// //     this.image,
// //     this.details,
// //     this.room,
// //     this.grade,
// //     this.hours,
// //   });

// //   factory Mission.fromJson(Map<String, dynamic> json) {
// //     return Mission(
// //       id: json['id'] ?? '',
// //       name: json['name'] ?? '',
// //       state: MissionState.values[json['state'] ?? 0],
// //       categoryId: json['categoryId'] ?? '',
// //       userId: json['userId'] ?? '',
// //       day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
// //       location: json['location'] ?? '',
// //       note: json['note'] ?? '',
// //       image: json['image'],
// //       details: json['details'],
// //       room: json['room'],
// //       grade: json['grade'],
// //       hours: json['hours'],
// //     );
// //   }
// // }

// // enum MissionState {
// //   Pending,
// //   Scheduled,
// //   Completed,
// //   Cancelled,
// // }

// // class VendorOffersScreen extends StatefulWidget {
// //   final String missionId;

// //   const VendorOffersScreen({required this.missionId, Key? key})
// //       : super(key: key);

// //   @override
// //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // }

// // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// //   late Future<List<VendorOffer>> offers;

// //   @override
// //   void initState() {
// //     super.initState();
// //     offers = fetchVendorOffers();
// //   }

// //   Future<List<VendorOffer>> fetchVendorOffers() async {
// //     try {
// //       final response = await http.get(Uri.parse(
// //           'https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));

// //       if (response.statusCode == 200) {
// //         final List<dynamic> data = json.decode(response.body);

// //         List<VendorOffer> vendorOffers = [];
// //         for (var json in data) {
// //           var offer = VendorOffer.fromJson(json);
// //           offer = await fetchVendorDetails(offer); // Fetch and update vendor details
// //           vendorOffers.add(offer);

// //             ),
// //           );

// //         }

// //         Widget _buildMissionList(List<Mission> missions) {
// //           return ListView.builder(
// //             itemCount: missions.length,
// //             padding: const EdgeInsets.all(16),
// //             itemBuilder: (context, index) {
// //               final mission = missions[index];
// //               return MissionCard(
// //                 mission: mission,
// //                 onTap: () => _showVendorOffers(mission),
// //               );
// //             },
// //           );
// //         }


// //   Future<VendorOffer> fetchVendorDetails(VendorOffer offer) async {
// //     try {
// //       // Fetch vendor profile
// //       final profileResponse = await http.get(Uri.parse(
// //           'https://192.168.0.109:7127/api/VenderProfile/${offer.venderProfileId}'));
// //       if (profileResponse.statusCode == 200) {
// //         final profileData = json.decode(profileResponse.body);

// //         // Set vendor profile details with type checks
// //         offer.vendorBio = profileData['bio'] ?? '';
// //         offer.vendorExperience = profileData['experience'] != null ? profileData['experience'].toString() : '';

// //         // Fetch user details
// //         final userId = profileData['userId'].toString();
// //         final userResponse = await http
// //             .get(Uri.parse('https://192.168.0.109:7127/api/User/$userId'));
// //         if (userResponse.statusCode == 200) {
// //           final userData = json.decode(userResponse.body);
// //           offer.vendorName = userData['userName'] ?? '';
// //           offer.vendorEmail = userData['email'] ?? '';
// //           offer.vendorImage = userData['image'];
// //           offer.vendorAge = userData['age'] is int ? userData['age'] : null;
// //           offer.vendorAddress = userData['userAddress'] ?? '';
// //           offer.vendorPhone = userData['phone'] ?? '';
// //           offer.vendorLocation = userData['location'] ?? '';
// //           offer.vendorGender = userData['gender'] != null ? userData['gender'].toString() : '';

// //         void _showVendorOffers(Mission mission) {
// //           Navigator.push(
// //             context,
// //             MaterialPageRoute(
// //               builder: (context) => VendorOffersScreen(missionId: mission.id),
// //             ),
// //           );
// // >>>>>>> ed0a1aa914185988e6b39ab833bd89a18f8d9973
// //         }
// //       }

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
// //       ),
// //       body: FutureBuilder<List<VendorOffer>>(
// //         future: offers,
// //         builder: (context, snapshot) {
// //           if (snapshot.connectionState == ConnectionState.waiting) {
// //             return const Center(child: CircularProgressIndicator());
// //           } else if (snapshot.hasError) {
// //             return Center(child: Text('Error: ${snapshot.error}'));
// //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// //             return const Center(child: Text('No offers available'));
// //           } else {
// //             final allOffers = snapshot.data!;
// //             return ListView.builder(
// //               itemCount: allOffers.length,
// //               padding: const EdgeInsets.all(16),
// //               itemBuilder: (context, index) {
// //                 final offer = allOffers[index];
// //                 return OfferCard(
// //                   vendorId: offer.venderProfileId,
// //                   vendorName: offer.vendorName,
// //                   vendorEmail: offer.vendorEmail,
// //                   vendorImage: offer.vendorImage,
// //                   category: offer.category,
// //                   price: offer.price,
// //                   vendorAge: offer.vendorAge,
// //                   vendorAddress: offer.vendorAddress,
// //                   vendorLocation: offer.vendorLocation,
// //                   vendorBio: offer.vendorBio,
// //                   vendorExperience: offer.vendorExperience,
// //                   vendorPhone: offer.vendorPhone,
// //                   vendorGender: offer.vendorGender,
// //                   note: offer.note,
// //                   onTap: () => _showVendorDetails(offer),
// //                   isAccepted: offer.state,
// //                 );
// //               },
// //             );
// //           }
// //         },
// //       ),
// //     );
// //   }

// //   void _showVendorDetails(VendorOffer offer) {
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
// //                 'Price: \$${offer.price}',
// //                 style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //               ),
// //               const SizedBox(height: 8),
// //               Text(
// //                 'Note: ${offer.note ?? "No note available"}',
// //                 style: const TextStyle(fontSize: 16),
// //               ),
// //               const SizedBox(height: 8),
// //               GestureDetector(
// //                 onTap: () => Navigator.push(
// //                   context,
// //                   MaterialPageRoute(
// //                     builder: (context) => VendorDetailsScreen(
// //                       vendorName: offer.vendorName,
// //                       vendorEmail: offer.vendorEmail,
// //                       vendorImage: offer.vendorImage,
// //                       vendorAge: offer.vendorAge,
// //                       vendorAddress: offer.vendorAddress,
// //                       vendorLocation: offer.vendorLocation,
// //                       vendorBio: offer.vendorBio,
// //                       vendorExperience: offer.vendorExperience,
// //                       vendorPhone: offer.vendorPhone,
// //                     ),
// //                   ),
// //                 ),
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Text(
// //                       'Name: ${offer.vendorName}',
// //                       style: const TextStyle(fontSize: 18, color: Colors.blue),
// //                     ),
// //                     const SizedBox(height: 4),
// //                     Text(
// //                       'Email: ${offer.vendorEmail}',
// //                       style: const TextStyle(fontSize: 18, color: Colors.blue),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               const SizedBox(height: 16),
// //               Align(
// //                 alignment: Alignment.centerRight,
// //                 child: ElevatedButton(
// //                   onPressed: offer.state ? null : () => _updateOfferState(offer.id, true),
// //                   child: const Text('Accept Offer'),
// //                 ),
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
// //         Uri.parse(
// //             'https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted/$offerId'),
// //         headers: {'Content-Type': 'application/json'},
// //         body: json.encode({'state': newState}),
// //       );

// //       if (response.statusCode == 200 || response.statusCode == 200 ) {
// //         setState(() {
// //           offers = fetchVendorOffers(); // Refresh offers after updating
// // =======
// //       // Widget to display each mission card
// //       class MissionCard extends StatelessWidget {
// //         final Mission mission;
// //         final VoidCallback onTap;

// //         const MissionCard({
// //           required this.mission,
// //           required this.onTap,
// //           Key? key,
// //         }) : super(key: key);

// //         @override
// //         Widget build(BuildContext context) {
// //           return Card(
// //             margin: const EdgeInsets.symmetric(vertical: 8),
// //             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// //             elevation: 4,
// //             child: ListTile(
// //               onTap: onTap,
// //               title: Text(mission.name, style: const TextStyle(fontWeight: FontWeight.bold)),
// //               subtitle: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Text('State: ${mission.state}'),
// //                   Text('Day: ${mission.day}'),
// //                 ],
// //               ),
// //               trailing: mission.image != null
// //                   ? Image.network(mission.image!, width: 50, height: 50, fit: BoxFit.cover)
// //                   : const SizedBox.shrink(),
// //             ),
// //           );
// //         }
// //       }

// //       // Model class for Mission
// //       class Mission {
// //         final String id;
// //         final String name;
// //         final MissionState state;
// //         final String categoryId;
// //         final String userId;
// //         final DateTime day;
// //         final String location;
// //         final String note;
// //         final String? image;
// //         final String? details;
// //         final int? room;
// //         final String? grade;
// //         final String? hours;

// //         Mission({
// //           required this.id,
// //           required this.name,
// //           required this.state,
// //           required this.categoryId,
// //           required this.userId,
// //           required this.day,
// //           required this.location,
// //           required this.note,
// //           this.image,
// //           this.details,
// //           this.room,
// //           this.grade,
// //           this.hours,


// //         factory Mission.fromJson(Map<String, dynamic> json) {
// //           return Mission(
// //             id: json['id'] ?? '',
// //             name: json['name'] ?? '',
// //             state: MissionState.values[json['state'] ?? 0],
// //             categoryId: json['categoryId'] ?? '',
// //             userId: json['userId'] ?? '',
// //             day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
// //             location: json['location'] ?? '',
// //             note: json['note'] ?? '',
// //             image: json['image'],
// //             details: json['details'],
// //             room: json['room'],
// //             grade: json['grade'],
// //             hours: json['hours'],
// //           );
// //         }
// //       }


// // class OfferCard extends StatelessWidget {
// //   final String vendorId;
// //   final String vendorName;
// //   final String vendorEmail;
// //   final String category;
// //   final double price;
// //   final String? vendorImage;
// //   final int? vendorAge;
// //   final String? vendorAddress;
// //   final String? vendorLocation;
// //   final String? vendorBio;
// //   final String? vendorExperience;
// //   final String? vendorGender;
// //   final String? vendorPhone;
// //   final String? note;
// //   final VoidCallback onTap;
// //   final bool isAccepted;

// //   const OfferCard({
// //     required this.vendorId,
// //     required this.vendorName,
// //     required this.vendorEmail,
// //     required this.category,
// //     required this.price,
// //     required this.onTap,
// //     this.vendorImage,
// //     this.vendorAge,
// //     this.vendorAddress,
// //     this.vendorLocation,
// //     this.vendorBio,
// //     this.vendorExperience,
// //     this.vendorGender,
// //     this.vendorPhone,
// //     this.note,
// //     required this.isAccepted,
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
// //         leading: CircleAvatar(
// //           radius: 30,
// //           backgroundImage:
// //               vendorImage != null ? NetworkImage(vendorImage!) : null,
// //           child:
// //               vendorImage == null ? const Icon(Icons.person, size: 30) : null,
// //         ),
// //         title: GestureDetector(
// //           onTap: onTap,
// //           child: Text(vendorName, style: const TextStyle(fontWeight: FontWeight.bold)),
// //         ),
// //         subtitle: GestureDetector(
// //           onTap: onTap,
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Text(vendorEmail),
// //               Text(category),
// //               Text('Price: \$${price.toStringAsFixed(2)}'),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class VendorOffer {
// //   final String id;
// //   final String venderProfileId;
// //   final String missionId;
// //   final String? note;
// //   final double price;
// //   final bool state;
// //   String vendorName;
// //   String vendorEmail;
// //   String? vendorImage;
// //   final String category;
// //   int? vendorAge;
// //   String? vendorAddress;
// //   String? vendorLocation;
// //   String? vendorBio;
// //   String? vendorExperience;
// //   String? vendorGender;
// //   String? vendorPhone;

// //   VendorOffer({
// //     required this.id,
// //     required this.venderProfileId,
// //     required this.missionId,
// //     this.note,
// //     required this.price,
// //     required this.state,
// //     required this.vendorName,
// //     required this.vendorEmail,
// //     this.vendorImage,
// //     required this.category,
// //     this.vendorAge,
// //     this.vendorAddress,
// //     this.vendorLocation,
// //     this.vendorBio,
// //     this.vendorExperience,
// //     this.vendorGender,
// //     this.vendorPhone,
// //   });

// //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// //     return VendorOffer(
// //       id: json['id'] ?? '',
// //       venderProfileId: json['venderProfileId'] ?? '',
// //       missionId: json['missionId'] ?? '',
// //       note: json['note'],
// //       price: json['price']?.toDouble() ?? 0.0,
// //       state: json['state'] ?? false,
// //       vendorName: 'Unknown', // Default value, will be updated in fetchVendorDetails
// //       vendorEmail: 'Unknown', // Default value, will be updated in fetchVendorDetails
// //       vendorImage: null, // Default value, will be updated in fetchVendorDetails
// //       category: json['category'] ?? 'Unknown', // Default value, will be updated in fetchVendorDetails
// //       vendorAge: null, // Default value, will be updated in fetchVendorDetails
// //       vendorAddress: null, // Default value, will be updated in fetchVendorDetails
// //       vendorLocation: null, // Default value, will be updated in fetchVendorDetails
// //       vendorBio: null, // Default value, will be updated in fetchVendorDetails
// //       vendorExperience: null, // Default value, will be updated in fetchVendorDetails
// //       vendorGender: null, // Default value, will be updated in fetchVendorDetails
// //       vendorPhone: null, // Default value, will be updated in fetchVendorDetails
// //     );
// //   }
// // } 
// // =======
// //       enum MissionState {
// //         Pending,
// //         Scheduled,
// //         Completed,
// //         Cancelled,
// //       }

// //       // Screen to display vendor offers for a specific mission
// //       class VendorOffersScreen extends StatefulWidget {
// //         final String missionId;

// //         const VendorOffersScreen({required this.missionId, Key? key}) : super(key: key);

// //         @override
// //         State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// //       }

// //       class _VendorOffersScreenState extends State<VendorOffersScreen> {
// //         late Future<List<VendorOffer>> offers;

// //         @override
// //         void initState() {
// //           super.initState();
// //           offers = fetchVendorOffers();
// //         }

// //         Future<List<VendorOffer>> fetchVendorOffers() async {
// //           try {
// //             final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));

// //             if (response.statusCode == 200) {
// //               final List<dynamic> data = json.decode(response.body);

// //               // Fetch vendor profiles and user details
// //               List<VendorOffer> vendorOffers = [];
// //               for (var json in data) {
// //                 var offer = VendorOffer.fromJson(json);
// //                 offer = await fetchVendorDetails(offer); // Fetch and update vendor details
// //                 vendorOffers.add(offer);
// //               }

// //               return vendorOffers;
// //             } else {
// //               throw Exception('Failed to load offers');
// //             }
// //           } catch (e) {
// //             throw Exception('Error fetching offers: $e');
// //           }
// //         }

// //         Future<VendorOffer> fetchVendorDetails(VendorOffer offer) async {
// //           try {
// //             // Fetch vendor profile
// //             final profileResponse = await http.get(Uri.parse('https://192.168.0.109:7127/api/VenderProfile/${offer.venderProfileId}'));
// //             if (profileResponse.statusCode == 200) {
// //               final profileData = json.decode(profileResponse.body);

// //               // Fetch user details
// //               final userId = profileData['userId'];
// //               final userResponse = await http.get(Uri.parse('https://192.168.0.109:7127/api/User/$userId'));
// //               if (userResponse.statusCode == 200) {
// //                 final userData = json.decode(userResponse.body);
// //                 offer.vendorName = userData['userName'];
// //                 offer.vendorEmail = userData['email'];
// //                 offer.vendorImage = userData['image'];
// //                 offer.age = userData['age'];
// //                 offer.userAddress = userData['userAddress'];
// //                 offer.phoneNumber = userData['phone'];
// //                 offer.location = userData['location'];
// //                 offer.gender = userData['gender'];
// //               }
// //             }
// //             return offer;
// //           } catch (e) {
// //             throw Exception('Error fetching vendor details: $e');
// //           }
// //         }

// //         @override
// //         Widget build(BuildContext context) {
// //           return Scaffold(
// //             appBar: AppBar(
// //               title: const Text(
// //                 'Vendor Offers',
// //                 style: TextStyle(color: Colors.black),
// //               ),
// //               backgroundColor: Colors.white,
// //               iconTheme: const IconThemeData(color: Colors.black),
// //               elevation: 1,
// //             ),
// //             body: FutureBuilder<List<VendorOffer>>(
// //               future: offers,
// //               builder: (context, snapshot) {
// //                 if (snapshot.connectionState == ConnectionState.waiting) {
// //                   return const Center(child: CircularProgressIndicator());
// //                 } else if (snapshot.hasError) {
// //                   return Center(child: Text('Error: ${snapshot.error}'));
// //                 } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// //                   return const Center(child: Text('No offers available'));
// //                 } else {
// //                   final allOffers = snapshot.data!;
// //                   return ListView.builder(
// //                     itemCount: allOffers.length,
// //                     padding: const EdgeInsets.all(16),
// //                     itemBuilder: (context, index) {
// //                       final offer = allOffers[index];
// //                       return OfferCard(
// //                         vendorName: offer.vendorName,
// //                         vendorEmail: offer.vendorEmail,
// //                         vendorImage: offer.vendorImage,
// //                         category: offer.category,
// //                         price: offer.price,
// //                         bio: offer.bio,
// //                         experience: offer.experience,
// //                         age: offer.age,
// //                         phoneNumber: offer.phoneNumber,
// //                         location: offer.location,
// //                         gender: offer.gender,
// //                         userAddress: offer.userAddress,
// //                         onTap: () => _showVendorDetails(offer),
// //                       );
// //                     },
// //                   );
// //                 }
// //               },
// //             ),
// //           );
// //         }

// //         void _showVendorDetails(VendorOffer offer) {
// //           Navigator.push(
// //             context,
// //             MaterialPageRoute(
// //               builder: (context) => VendorDetailsScreen(
// //                 vendorName: offer.vendorName,
// //                 vendorEmail: offer.vendorEmail,
// //                 vendorImage: offer.vendorImage,
// //                 bio: offer.bio,
// //                 experience: offer.experience,
// //                 age: offer.age,
// //                 phoneNumber: offer.phoneNumber,
// //                 location: offer.location,
// //                 gender: offer.gender,
// //                 userAddress: offer.userAddress,
// //               ),
// //             ),
// //           );
// //         }

// //         Future<void> _updateOfferState(String offerId, bool newState) async {
// //           try {
// //             final response = await http.put(
// //               Uri.parse('https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted//$offerId'),
// //               headers: {'Content-Type': 'application/json'},
// //               body: json.encode({'state': newState}),
// //             );

// //             if (response.statusCode == 204) {
// //               setState(() {
// //                 offers = fetchVendorOffers(); // Refresh offers after updating
// //               });
// //             } else {
// //               throw Exception('Failed to update offer state');
// //             }
// //           } catch (e) {
// //             // Show error message
// //             ScaffoldMessenger.of(context).showSnackBar(
// //               SnackBar(content: Text('Error updating offer: $e')),
// //             );
// //           }
// //         }
// //       }

// //       // Widget to display each offer card
// //       class OfferCard extends StatelessWidget {
// //         final String vendorName;
// //         final String vendorEmail;
// //         final String category;
// //         final double price;
// //         final String? vendorImage;
// //         final VoidCallback onTap;
// //         final String bio;
// //         final int experience;
// //         final int age;
// //         final String phoneNumber;
// //         final String location;
// //         final String gender;
// //         final String userAddress;

// //         const OfferCard({
// //           required this.vendorName,
// //           required this.vendorEmail,
// //           required this.category,
// //           required this.price,
// //           required this.onTap,
// //           this.vendorImage,
// //           required this.bio,
// //           required this.experience,
// //           required this.age,
// //           required this.phoneNumber,
// //           required this.location,
// //           required this.gender,
// //           required this.userAddress,
// //           Key? key,
// //         }) : super(key: key);

// //         @override
// //         Widget build(BuildContext context) {
// //           return Card(
// //             margin: const EdgeInsets.symmetric(vertical: 8),
// //             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// //             elevation: 4,
// //             child: ListTile(
// //               onTap: onTap,
// //               leading: CircleAvatar(
// //                 radius: 30,
// //                 backgroundImage: vendorImage != null ? NetworkImage(vendorImage!) : null,
// //                 child: vendorImage == null ? const Icon(Icons.person, size: 30) : null,
// //               ),
// //               title: GestureDetector(
// //                 onTap: () {
// //                   Navigator.push(
// //                     context,
// //                     MaterialPageRoute(
// //                       builder: (context) => VendorDetailsScreen(
// //                         vendorName: vendorName,
// //                         vendorEmail: vendorEmail,
// //                         vendorImage: vendorImage,
// //                         bio: bio,
// //                         experience: experience,
// //                         age: age,
// //                         phoneNumber: phoneNumber,
// //                         location: location,
// //                         gender: gender,
// //                         userAddress: userAddress,
// //                       ),
// //                     ),
// //                   );
// //                 },
// //                 child: Text(vendorName, style: const TextStyle(fontWeight: FontWeight.bold)),
// //               ),
// //               subtitle: GestureDetector(
// //                 onTap: () {
// //                   Navigator.push(
// //                     context,
// //                     MaterialPageRoute(
// //                       builder: (context) => VendorDetailsScreen(
// //                         vendorName: vendorName,
// //                         vendorEmail: vendorEmail,
// //                         vendorImage: vendorImage,
// //                         bio: bio,
// //                         experience: experience,
// //                         age: age,
// //                         phoneNumber: phoneNumber,
// //                         location: location,
// //                         gender: gender,
// //                         userAddress: userAddress,
// //                       ),
// //                     ),
// //                   );
// //                 },
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Text(vendorEmail),
// //                     Text(category),
// //                   ],
// //                 ),
// //               ),
// //               trailing: Text('\$$price', style: const TextStyle(fontWeight: FontWeight.bold)),
// //             ),
// //           );
// //         }
// //       }

// //       // Model class for VendorOffer
// //       class VendorOffer {
// //         final String id;
// //         final String venderProfileId;
// //         final String missionId;
// //         final String? note;
// //         final double price;
// //         final bool state;
// //         String vendorName;
// //         String vendorEmail;
// //         String? vendorImage;
// //         String bio;
// //         int experience;
// //         int age;
// //         String phoneNumber;
// //         String location;
// //         String gender;
// //         String userAddress;
// //         final String category;

// //         VendorOffer({
// //           required this.id,
// //           required this.venderProfileId,
// //           required this.missionId,
// //           this.note,
// //           required this.price,
// //           required this.state,
// //           required this.vendorName,
// //           required this.vendorEmail,
// //           this.vendorImage,
// //           required this.bio,
// //           required this.experience,
// //           required this.age,
// //           required this.phoneNumber,
// //           required this.location,
// //           required this.gender,
// //           required this.userAddress,
// //           required this.category,
// //         });

// //         factory VendorOffer.fromJson(Map<String, dynamic> json) {
// //           return VendorOffer(
// //             id: json['id'] ?? '',
// //             venderProfileId: json['venderProfileId'] ?? '',
// //             missionId: json['missionId'] ?? '',
// //             note: json['note'],
// //             price: json['price']?.toDouble() ?? 0.0,
// //             state: json['state'] ?? false,
// //             vendorName: 'Unknown', // Default value, will be updated in fetchVendorDetails
// //             vendorEmail: 'Unknown', // Default value, will be updated in fetchVendorDetails
// //             vendorImage: null, // Default value, will be updated in fetchVendorDetails
// //             bio: '',
// //             experience: 0,
// //             age: 0,
// //             phoneNumber: '',
// //             location: '',
// //             gender: '',
// //             userAddress: '',
// //             category: 'Unknown', // Default value, will be updated in fetchVendorDetails
// //           );
// //         }
// //       }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
//       import 'dart:convert';
//       import 'package:http/http.dart' as http;
//       import '../theme.dart';
//       import 'vendor_details_screen.dart';

//       class OrdersScreen extends StatefulWidget {
//         final String userId;

//         const OrdersScreen({required this.userId, Key? key}) : super(key: key);

//         @override
//         State<OrdersScreen> createState() => _OrdersScreenState();
//       }

//       class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin {
//         late TabController _tabController;
//         late Future<List<Mission>> missions;

//         @override
//         void initState() {
//           super.initState();
//           _tabController = TabController(length: 2, vsync: this);
//           missions = fetchMissions();
//         }

//         Future<List<Mission>> fetchMissions() async {
//           try {
//             final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));

//             if (response.statusCode == 200) {
//               final List<dynamic> data = json.decode(response.body);
//               return data.map((json) => Mission.fromJson(json)).toList();
//             } else {
//               throw Exception('Failed to load missions');
//             }
//           } catch (e) {
//             throw Exception('Error fetching missions: $e');
//           }
//         }

//         @override
//         Widget build(BuildContext context) {
//           return Scaffold(
//             appBar: AppBar(
//               backgroundColor: AppColors.backgroundColor,
//               flexibleSpace: Padding(
//                 padding: const EdgeInsets.only(top: 25),
//                 child: Center(
//                   child: SvgPicture.asset(
//                     'images/g8.svg',
//                     height: 80,
//                   ),
//                 ),
//               ),
//               bottom: PreferredSize(
//                 preferredSize: const Size.fromHeight(4.0),
//                 child: Container(
//                   color: Colors.grey[300],
//                   height: 1.5,
//                 ),
//               ),
//             ),
//             body: Column(
//               children: [
//                 SizedBox(height: MediaQuery.of(context).size.height * 0.02),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 8),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text(
//                         "User Missions",
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: AppColors.primaryColor,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: MediaQuery.of(context).size.height * 0.009),
//                 TabBar(
//                   controller: _tabController,
//                   labelColor: Colors.blue,
//                   unselectedLabelColor: Colors.grey,
//                   indicatorColor: Colors.blue,
//                   tabs: const [
//                     Tab(text: 'All Missions'),
//                     Tab(text: 'Scheduled Missions'),
//                   ],
//                 ),
//                 Expanded(
//                   child: FutureBuilder<List<Mission>>(
//                     future: missions,
//                     builder: (context, snapshot) {
//                       if (snapshot.connectionState == ConnectionState.waiting) {
//                         return const Center(child: CircularProgressIndicator());
//                       } else if (snapshot.hasError) {
//                         return Center(child: Text('Error: ${snapshot.error}'));
//                       } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//                         return const Center(child: Text('No missions available'));
//                       } else {
//                         final allMissions = snapshot.data!;
//                         final scheduledMissions = allMissions.where((mission) => mission.state == MissionState.Scheduled).toList();

//                         return TabBarView(
//                           controller: _tabController,
//                           children: [
//                             _buildMissionList(allMissions),
//                             _buildMissionList(scheduledMissions),
//                           ],
//                         );
//                       }
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           );
//         }

//         Widget _buildMissionList(List<Mission> missions) {
//           return ListView.builder(
//             itemCount: missions.length,
//             padding: const EdgeInsets.all(16),
//             itemBuilder: (context, index) {
//               final mission = missions[index];
//               return MissionCard(
//                 mission: mission,
//                 onTap: () => _showVendorOffers(mission),
//               );
//             },
//           );
//         }

//         void _showVendorOffers(Mission mission) {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => VendorOffersScreen(missionId: mission.id),
//             ),
//           );
//         }
//       }

//       // Widget to display each mission card
//       class MissionCard extends StatelessWidget {
//         final Mission mission;
//         final VoidCallback onTap;

//         const MissionCard({
//           required this.mission,
//           required this.onTap,
//           Key? key,
//         }) : super(key: key);

//         @override
//         Widget build(BuildContext context) {
//           return Card(
//             margin: const EdgeInsets.symmetric(vertical: 8),
//             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//             elevation: 4,
//             child: ListTile(
//               onTap: onTap,
//               title: Text(mission.name, style: const TextStyle(fontWeight: FontWeight.bold)),
//               subtitle: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text('State: ${mission.state}'),
//                   Text('Day: ${mission.day}'),
//                 ],
//               ),
//               trailing: mission.image != null
//                   ? Image.network(mission.image!, width: 50, height: 50, fit: BoxFit.cover)
//                   : const SizedBox.shrink(),
//             ),
//           );
//         }
//       }

//       // Model class for Mission
//       class Mission {
//         final String id;
//         final String name;
//         final MissionState state;
//         final String categoryId;
//         final String userId;
//         final DateTime day;
//         final String location;
//         final String note;
//         final String? image;
//         final String? details;
//         final int? room;
//         final String? grade;
//         final String? hours;

//         Mission({
//           required this.id,
//           required this.name,
//           required this.state,
//           required this.categoryId,
//           required this.userId,
//           required this.day,
//           required this.location,
//           required this.note,
//           this.image,
//           this.details,
//           this.room,
//           this.grade,
//           this.hours,
//         });

//         factory Mission.fromJson(Map<String, dynamic> json) {
//           return Mission(
//             id: json['id'] ?? '',
//             name: json['name'] ?? '',
//             state: MissionState.values[json['state'] ?? 0],
//             categoryId: json['categoryId'] ?? '',
//             userId: json['userId'] ?? '',
//             day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
//             location: json['location'] ?? '',
//             note: json['note'] ?? '',
//             image: json['image'],
//             details: json['details'],
//             room: json['room'],
//             grade: json['grade'],
//             hours: json['hours'],
//           );
//         }
//       }

//       enum MissionState {
//         Pending,
//         Scheduled,
//         Completed,
//         Cancelled,
//       }

//       // Screen to display vendor offers for a specific mission
//       class VendorOffersScreen extends StatefulWidget {
//         final String missionId;

//         const VendorOffersScreen({required this.missionId, Key? key}) : super(key: key);

//         @override
//         State<VendorOffersScreen> createState() => _VendorOffersScreenState();
//       }

//       class _VendorOffersScreenState extends State<VendorOffersScreen> {
//         late Future<List<VendorOffer>> offers;

//         @override
//         void initState() {
//           super.initState();
//           offers = fetchVendorOffers();
//         }

//         Future<List<VendorOffer>> fetchVendorOffers() async {
//           try {
//             final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));

//             if (response.statusCode == 200) {
//               final List<dynamic> data = json.decode(response.body);

//               // Fetch vendor profiles and user details
//               List<VendorOffer> vendorOffers = [];
//               for (var json in data) {
//                 var offer = VendorOffer.fromJson(json);
//                 offer = await fetchVendorDetails(offer); // Fetch and update vendor details
//                 vendorOffers.add(offer);
//               }

//               return vendorOffers;
//             } else {
//               throw Exception('Failed to load offers');
//             }
//           } catch (e) {
//             throw Exception('Error fetching offers: $e');
//           }
//         }

//         Future<VendorOffer> fetchVendorDetails(VendorOffer offer) async {
//           try {
//             // Fetch vendor profile
//             final profileResponse = await http.get(Uri.parse('https://192.168.0.109:7127/api/VenderProfile/${offer.venderProfileId}'));
//             if (profileResponse.statusCode == 200) {
//               final profileData = json.decode(profileResponse.body);

//               // Fetch user details
//               final userId = profileData['userId'];
//               final userResponse = await http.get(Uri.parse('https://192.168.0.109:7127/api/User/$userId'));
//               if (userResponse.statusCode == 200) {
//                 final userData = json.decode(userResponse.body);
//                 offer.vendorName = userData['userName'];
//                 offer.vendorEmail = userData['email'];
//                 offer.vendorImage = userData['image'];
//                 offer.age = userData['age'];
//                 offer.userAddress = userData['userAddress'];
//                 offer.phoneNumber = userData['phone'];
//                 offer.location = userData['location'];
//                 offer.gender = userData['gender'];
//               }
//             }
//             return offer;
//           } catch (e) {
//             throw Exception('Error fetching vendor details: $e');
//           }
//         }

//         @override
//         Widget build(BuildContext context) {
//           return Scaffold(
//             appBar: AppBar(
//               title: const Text(
//                 'Vendor Offers',
//                 style: TextStyle(color: Colors.black),
//               ),
//               backgroundColor: Colors.white,
//               iconTheme: const IconThemeData(color: Colors.black),
//               elevation: 1,
//             ),
//             body: FutureBuilder<List<VendorOffer>>(
//               future: offers,
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return const Center(child: CircularProgressIndicator());
//                 } else if (snapshot.hasError) {
//                   return Center(child: Text('Error: ${snapshot.error}'));
//                 } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//                   return const Center(child: Text('No offers available'));
//                 } else {
//                   final allOffers = snapshot.data!;
//                   return ListView.builder(
//                     itemCount: allOffers.length,
//                     padding: const EdgeInsets.all(16),
//                     itemBuilder: (context, index) {
//                       final offer = allOffers[index];
//                       return OfferCard(
//                         vendorName: offer.vendorName,
//                         vendorEmail: offer.vendorEmail,
//                         vendorImage: offer.vendorImage,
//                         category: offer.category,
//                         price: offer.price,
//                         bio: offer.bio,
//                         experience: offer.experience,
//                         age: offer.age,
//                         phoneNumber: offer.phoneNumber,
//                         location: offer.location,
//                         gender: offer.gender,
//                         userAddress: offer.userAddress,
//                         onTap: () => _showVendorDetails(offer),
//                       );
//                     },
//                   );
//                 }
//               },
//             ),
//           );
//         }

//         void _showVendorDetails(VendorOffer offer) {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => VendorDetailsScreen(
//                 vendorName: offer.vendorName,
//                 vendorEmail: offer.vendorEmail,
//                 vendorImage: offer.vendorImage,
//                 bio: offer.bio,
//                 experience: offer.experience,
//                 age: offer.age,
//                 phoneNumber: offer.phoneNumber,
//                 location: offer.location,
//                 gender: offer.gender,
//                 userAddress: offer.userAddress,
//               ),
//             ),
//           );
//         }

//         Future<void> _updateOfferState(String offerId, bool newState) async {
//           try {
//             final response = await http.put(
//               Uri.parse('https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted//$offerId'),
//               headers: {'Content-Type': 'application/json'},
//               body: json.encode({'state': newState}),
//             );

//             if (response.statusCode == 204) {
//               setState(() {
//                 offers = fetchVendorOffers(); // Refresh offers after updating
//               });
//             } else {
//               throw Exception('Failed to update offer state');
//             }
//           } catch (e) {
//             // Show error message
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(content: Text('Error updating offer: $e')),
//             );
//           }
//         }
//       }

//       // Widget to display each offer card
//       class OfferCard extends StatelessWidget {
//         final String vendorName;
//         final String vendorEmail;
//         final String category;
//         final double price;
//         final String? vendorImage;
//         final VoidCallback onTap;
//         final String bio;
//         final int experience;
//         final int age;
//         final String phoneNumber;
//         final String location;
//         final String gender;
//         final String userAddress;

//         const OfferCard({
//           required this.vendorName,
//           required this.vendorEmail,
//           required this.category,
//           required this.price,
//           required this.onTap,
//           this.vendorImage,
//           required this.bio,
//           required this.experience,
//           required this.age,
//           required this.phoneNumber,
//           required this.location,
//           required this.gender,
//           required this.userAddress,
//           Key? key,
//         }) : super(key: key);

//         @override
//         Widget build(BuildContext context) {
//           return Card(
//             margin: const EdgeInsets.symmetric(vertical: 8),
//             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//             elevation: 4,
//             child: ListTile(
//               onTap: onTap,
//               leading: CircleAvatar(
//                 radius: 30,
//                 backgroundImage: vendorImage != null ? NetworkImage(vendorImage!) : null,
//                 child: vendorImage == null ? const Icon(Icons.person, size: 30) : null,
//               ),
//               title: GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => VendorDetailsScreen(
//                         vendorName: vendorName,
//                         vendorEmail: vendorEmail,
//                         vendorImage: vendorImage,
//                         bio: bio,
//                         experience: experience,
//                         age: age,
//                         phoneNumber: phoneNumber,
//                         location: location,
//                         gender: gender,
//                         userAddress: userAddress,
//                       ),
//                     ),
//                   );
//                 },
//                 child: Text(vendorName, style: const TextStyle(fontWeight: FontWeight.bold)),
//               ),
//               subtitle: GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => VendorDetailsScreen(
//                         vendorName: vendorName,
//                         vendorEmail: vendorEmail,
//                         vendorImage: vendorImage,
//                         bio: bio,
//                         experience: experience,
//                         age: age,
//                         phoneNumber: phoneNumber,
//                         location: location,
//                         gender: gender,
//                         userAddress: userAddress,
//                       ),
//                     ),
//                   );
//                 },
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(vendorEmail),
//                     Text(category),
//                   ],
//                 ),
//               ),
//               trailing: Text('\$$price', style: const TextStyle(fontWeight: FontWeight.bold)),
//             ),
//           );
//         }
//       }

//       // Model class for VendorOffer
//       class VendorOffer {
//         final String id;
//         final String venderProfileId;
//         final String missionId;
//         final String? note;
//         final double price;
//         final bool state;
//         String vendorName;
//         String vendorEmail;
//         String? vendorImage;
//         String bio;
//         int experience;
//         int age;
//         String phoneNumber;
//         String location;
//         String gender;
//         String userAddress;
//         final String category;

//         VendorOffer({
//           required this.id,
//           required this.venderProfileId,
//           required this.missionId,
//           this.note,
//           required this.price,
//           required this.state,
//           required this.vendorName,
//           required this.vendorEmail,
//           this.vendorImage,
//           required this.bio,
//           required this.experience,
//           required this.age,
//           required this.phoneNumber,
//           required this.location,
//           required this.gender,
//           required this.userAddress,
//           required this.category,
//         });

//         factory VendorOffer.fromJson(Map<String, dynamic> json) {
//           return VendorOffer(
//             id: json['id'] ?? '',
//             venderProfileId: json['venderProfileId'] ?? '',
//             missionId: json['missionId'] ?? '',
//             note: json['note'],
//             price: json['price']?.toDouble() ?? 0.0,
//             state: json['state'] ?? false,
//             vendorName: 'Unknown', // Default value, will be updated in fetchVendorDetails
//             vendorEmail: 'Unknown', // Default value, will be updated in fetchVendorDetails
//             vendorImage: null, // Default value, will be updated in fetchVendorDetails
//             bio: '',
//             experience: 0,
//             age: 0,
//             phoneNumber: '',
//             location: '',
//             gender: '',
//             userAddress: '',
//             category: 'Unknown', // Default value, will be updated in fetchVendorDetails
//           );
//         }
//       }
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../theme.dart';
import 'vendor_details_screen.dart';

class OrdersScreen extends StatefulWidget {
  final String userId;

  const OrdersScreen({required this.userId, Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late Future<List<Mission>> missions;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    missions = fetchMissions();
  }

  Future<List<Mission>> fetchMissions() async {
    try {
      final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/Mission?userId=${widget.userId}'));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((json) => Mission.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load missions');
      }
    } catch (e) {
      throw Exception('Error fetching missions: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Center(
            child: SvgPicture.asset(
              'images/g8.svg',
              height: 80,
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.grey[300],
            height: 1.5,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "User Missions",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.009),
          TabBar(
            controller: _tabController,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.blue,
            tabs: const [
              Tab(text: 'All Missions'),
              Tab(text: 'Scheduled Missions'),
            ],
          ),
          Expanded(
            child: FutureBuilder<List<Mission>>(
              future: missions,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(child: Text('No missions available'));
                } else {
                  final allMissions = snapshot.data!;
                  final scheduledMissions = allMissions.where((mission) => mission.state == MissionState.Scheduled).toList();

                  return TabBarView(
                    controller: _tabController,
                    children: [
                      _buildMissionList(allMissions),
                      _buildMissionList(scheduledMissions),
                    ],
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMissionList(List<Mission> missions) {
    return ListView.builder(
      itemCount: missions.length,
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, index) {
        final mission = missions[index];
        return MissionCard(
          mission: mission,
          onTap: () => _showVendorOffers(mission),
        );
      },
    );
  }

  void _showVendorOffers(Mission mission) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => VendorOffersScreen(missionId: mission.id),
      ),
    );
  }
}

// Widget to display each mission card
class MissionCard extends StatelessWidget {
  final Mission mission;
  final VoidCallback onTap;

  const MissionCard({
    required this.mission,
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
        title: Text(mission.name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('State: ${mission.state}'),
            Text('Day: ${mission.day}'),
          ],
        ),
        trailing: mission.image != null
            ? Image.network(mission.image!, width: 50, height: 50, fit: BoxFit.cover)
            : const SizedBox.shrink(),
      ),
    );
  }
}

// Model class for Mission
class Mission {
  final String id;
  final String name;
  final MissionState state;
  final String categoryId;
  final String userId;
  final DateTime day;
  final String location;
  final String note;
  final String? image;
  final String? details;
  final int? room;
  final String? grade;
  final String? hours;

  Mission({
    required this.id,
    required this.name,
    required this.state,
    required this.categoryId,
    required this.userId,
    required this.day,
    required this.location,
    required this.note,
    this.image,
    this.details,
    this.room,
    this.grade,
    this.hours,
  });

  factory Mission.fromJson(Map<String, dynamic> json) {
    return Mission(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      state: MissionState.values[json['state'] ?? 0],
      categoryId: json['categoryId'] ?? '',
      userId: json['userId'] ?? '',
      day: DateTime.parse(json['day'] ?? DateTime.now().toIso8601String()),
      location: json['location'] ?? '',
      note: json['note'] ?? '',
      image: json['image'],
      details: json['details'],
      room: json['room'],
      grade: json['grade'],
      hours: json['hours'],
    );
  }
}

enum MissionState {
  Pending,
  Scheduled,
  Completed,
  Cancelled,
}

// Screen to display vendor offers for a specific mission
class VendorOffersScreen extends StatefulWidget {
  final String missionId;

  const VendorOffersScreen({required this.missionId, Key? key}) : super(key: key);

  @override
  State<VendorOffersScreen> createState() => _VendorOffersScreenState();
}

class _VendorOffersScreenState extends State<VendorOffersScreen> {
  late Future<List<VendorOffer>> offers;

  @override
  void initState() {
    super.initState();
    offers = fetchVendorOffers();
  }

  Future<List<VendorOffer>> fetchVendorOffers() async {
    try {
      final response = await http.get(Uri.parse('https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);

        // Fetch vendor profiles and user details
        List<VendorOffer> vendorOffers = [];
        for (var json in data) {
          var offer = VendorOffer.fromJson(json);
          offer = await fetchVendorDetails(offer); // Fetch and update vendor details
          vendorOffers.add(offer);
        }

        return vendorOffers;
      } else {
        throw Exception('Failed to load offers');
      }
    } catch (e) {
      throw Exception('Error fetching offers: $e');
    }
  }

  Future<VendorOffer> fetchVendorDetails(VendorOffer offer) async {
    try {
      // Fetch vendor profile
      final profileResponse = await http.get(Uri.parse('https://192.168.0.109:7127/api/VenderProfile/${offer.venderProfileId}'));
      if (profileResponse.statusCode == 200) {
        final profileData = json.decode(profileResponse.body);
        offer.bio = profileData['bio'] ?? '';
        offer.experience = profileData['experience'] ?? 0;

        // Fetch user details
        final userId = profileData['userId'];
        final userResponse = await http.get(Uri.parse('https://192.168.0.109:7127/api/User/$userId'));
        if (userResponse.statusCode == 200) {
          final userData = json.decode(userResponse.body);
          offer.vendorName = userData['userName'];
          offer.vendorEmail = userData['email'];
          offer.vendorImage = userData['image'];
          offer.age = userData['age'];
          offer.userAddress = userData['userAddress'];
          offer.phoneNumber = userData['phone'];
          offer.location = userData['location'];
          offer.gender = userData['gender'];
        }
      }
      return offer;
    } catch (e) {
      throw Exception('Error fetching vendor details: $e');
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
      ),
      body: FutureBuilder<List<VendorOffer>>(
        future: offers,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No offers available'));
          } else {
            final allOffers = snapshot.data!;
            return ListView.builder(
              itemCount: allOffers.length,
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) {
                final offer = allOffers[index];
                return OfferCard(
                  vendorName: offer.vendorName,
                  vendorEmail: offer.vendorEmail,
                  vendorImage: offer.vendorImage,
                  category: offer.category,
                  price: offer.price,
                  bio: offer.bio,
                  experience: offer.experience,
                  age: offer.age,
                  phoneNumber: offer.phoneNumber,
                  location: offer.location,
                  gender: offer.gender,
                  userAddress: offer.userAddress,
                  onTap: () => _showVendorDetails(offer),
                );
              },
            );
          }
        },
      ),
    );
  }

  void _showVendorDetails(VendorOffer offer) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => VendorDetailsScreen(
          vendorName: offer.vendorName,
          vendorEmail: offer.vendorEmail,
          vendorImage: offer.vendorImage,
          // bio: offer.bio,
          // experience: offer.experience,
          // age: offer.age,
          // phoneNumber: offer.phoneNumber,
          // location: offer.location,
          // gender: offer.gender,
          // userAddress: offer.userAddress,
        ),
      ),
    );
  }

  Future<void> _updateOfferState(String offerId, bool newState) async {
    try {
      final response = await http.put(
        Uri.parse('https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted//$offerId'),
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
  final String vendorEmail;
  final String category;
  final double price;
  final String? vendorImage;
  final VoidCallback onTap;
  final String bio;
  final int experience;
  final int age;
  final String phoneNumber;
  final String location;
  final String gender;
  final String userAddress;

  const OfferCard({
    required this.vendorName,
    required this.vendorEmail,
    required this.category,
    required this.price,
    required this.onTap,
    this.vendorImage,
    required this.bio,
    required this.experience,
    required this.age,
    required this.phoneNumber,
    required this.location,
    required this.gender,
    required this.userAddress,
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
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: vendorImage != null ? NetworkImage(vendorImage!) : null,
          child: vendorImage == null ? const Icon(Icons.person, size: 30) : null,
        ),
        title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VendorDetailsScreen(
                  vendorName: vendorName,
                  vendorEmail: vendorEmail,
                  vendorImage: vendorImage,
                  // bio: bio,
                  // experience: experience,
                  // age: age,
                  // phoneNumber: phoneNumber,
                  // location: location,
                  // gender: gender,
                  // userAddress: userAddress,
                ),
              ),
            );
          },
          child: Text(vendorName, style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        subtitle: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VendorDetailsScreen(
                  vendorName: vendorName,
                  vendorEmail: vendorEmail,
                  vendorImage: vendorImage,
                  // bio: bio,
                  // experience: experience,
                  // age: age,
                  // phoneNumber: phoneNumber,
                  // location: location,
                  // gender: gender,
                  // userAddress: userAddress,
                ),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(vendorEmail),
              Text(category),
            ],
          ),
        ),
        trailing: Text('\$$price', style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}

// Model class for VendorOffer
class VendorOffer {
  final String id;
  final String venderProfileId;
  final String missionId;
  final String? note;
  final double price;
  final bool state;
  String vendorName;
  String vendorEmail;
  String? vendorImage;
  String bio;
  int experience;
  int age;
  String phoneNumber;
  String location;
  String gender;
  String userAddress;
  final String category;

  VendorOffer({
    required this.id,
    required this.venderProfileId,
    required this.missionId,
    this.note,
    required this.price,
    required this.state,
    required this.vendorName,
    required this.vendorEmail,
    this.vendorImage,
    required this.bio,
    required this.experience,
    required this.age,
    required this.phoneNumber,
    required this.location,
    required this.gender,
    required this.userAddress,
    required this.category,
  });

  factory VendorOffer.fromJson(Map<String, dynamic> json) {
    return VendorOffer(
      id: json['id'] ?? '',
      venderProfileId: json['venderProfileId'] ?? '',
      missionId: json['missionId'] ?? '',
      note: json['note'],
      price: json['price']?.toDouble() ?? 0.0,
      state: json['state'] ?? false,
      vendorName: 'Unknown', // Default value, will be updated in fetchVendorDetails
      vendorEmail: 'Unknown', // Default value, will be updated in fetchVendorDetails
      vendorImage: null, // Default value, will be updated in fetchVendorDetails
      bio: json['bio'] ?? '',
      experience: json['experience'] ?? 0,
      age: 0, // Default value, will be updated in fetchVendorDetails
      phoneNumber: '', // Default value, will be updated in fetchVendorDetails
      location: '', // Default value, will be updated in fetchVendorDetails
      gender: '', // Default value, will be updated in fetchVendorDetails
      userAddress: '', // Default value, will be updated in fetchVendorDetails
      category: 'Unknown', // Default value, will be updated in fetchVendorDetails
    );
  }
}