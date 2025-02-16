// // // // // // // import 'package:flutter/material.dart';
// // // // // // // import 'package:flutter_svg/svg.dart';
// // // // // // // import 'dart:convert';
// // // // // // // import 'package:http/http.dart' as http;
// // // // // // // import '../theme.dart';
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
// // // // // // //   try {
// // // // // // //     final response = await http.get(Uri.parse(
// // // // // // //         'https://192.168.0.109:7127/api/Mission/Filter?userId=${widget.userId}'));

// // // // // // //     if (response.statusCode == 200) {
// // // // // // //       final List<dynamic> data = json.decode(response.body);
// // // // // // //       return data.map((json) => Mission.fromJson(json)).toList();
// // // // // // //     } else if (response.statusCode == 404) {
// // // // // // //       // Return an empty list to indicate no missions
// // // // // // //       return [];
// // // // // // //     } else {
// // // // // // //       throw Exception('Failed to load missions');
// // // // // // //     }
// // // // // // //   } catch (e) {
// // // // // // //     throw Exception('Error fetching missions: $e');
// // // // // // //   }
// // // // // // // }

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return Scaffold(
// // // // // // //       appBar: AppBar(
// // // // // // //         backgroundColor: AppColors.backgroundColor,
// // // // // // //         flexibleSpace: Padding(
// // // // // // //           padding: const EdgeInsets.only(top: 25),
// // // // // // //           child: Center(
// // // // // // //             child: SvgPicture.asset(
// // // // // // //               'images/g8.svg',
// // // // // // //               height: 80,
// // // // // // //             ),
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //         bottom: PreferredSize(
// // // // // // //           preferredSize: const Size.fromHeight(4.0),
// // // // // // //           child: Container(
// // // // // // //             color: Colors.grey[300],
// // // // // // //             height: 1.5,
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //       ),
// // // // // // //       body: Column(
// // // // // // //         children: [
// // // // // // //           SizedBox(height: MediaQuery.of(context).size.height * 0.02),
// // // // // // //           Padding(
// // // // // // //             padding: const EdgeInsets.only(left: 8),
// // // // // // //             child: Row(
// // // // // // //               mainAxisAlignment: MainAxisAlignment.start,
// // // // // // //               children: [
// // // // // // //                 Text(
// // // // // // //                   "User Missions",
// // // // // // //                   style: TextStyle(
// // // // // // //                     fontSize: 24,
// // // // // // //                     fontWeight: FontWeight.bold,
// // // // // // //                     color: AppColors.primaryColor,
// // // // // // //                   ),
// // // // // // //                 ),
// // // // // // //               ],
// // // // // // //             ),
// // // // // // //           ),
// // // // // // //           SizedBox(height: MediaQuery.of(context).size.height * 0.009),
// // // // // // //           TabBar(
// // // // // // //             controller: _tabController,
// // // // // // //             labelColor: Colors.blue,
// // // // // // //             unselectedLabelColor: Colors.grey,
// // // // // // //             indicatorColor: Colors.blue,
// // // // // // //             tabs: const [
// // // // // // //               Tab(text: 'All Missions'),
// // // // // // //               Tab(text: 'Scheduled Missions'),
// // // // // // //             ],
// // // // // // //           ),
// // // // // // //        Expanded(
// // // // // // //   child: FutureBuilder<List<Mission>>(
// // // // // // //     future: missions,
// // // // // // //     builder: (context, snapshot) {
// // // // // // //       if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // // //         return const Center(child: CircularProgressIndicator());
// // // // // // //       } else if (snapshot.hasError) {
// // // // // // //         return const Center(child: Text('No missions yet :('));
// // // // // // //       } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // // //         return const Center(child: Text('No missions yet :('));
// // // // // // //       } else {
// // // // // // //         final allMissions = snapshot.data!;
// // // // // // //         final scheduledMissions = allMissions
// // // // // // //             .where((mission) => mission.state == MissionState.Scheduled)
// // // // // // //             .toList();

// // // // // // //         return TabBarView(
// // // // // // //           controller: _tabController,
// // // // // // //           children: [
// // // // // // //             _buildMissionList(allMissions),
// // // // // // //             _buildMissionList(scheduledMissions),
// // // // // // //           ],
// // // // // // //         );
// // // // // // //       }
// // // // // // //     },
// // // // // // //   ),
// // // // // // // ),
// // // // // // //         ],
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

// // // // // // // // Widget to display each mission card
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

// // // // // // // // Model class for Mission
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

// // // // // // // // Screen to display vendor offers for a specific mission
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

// // // // // // //         // Fetch vendor profiles and user details
// // // // // // //         List<VendorOffer> vendorOffers = [];
// // // // // // //         for (var json in data) {
// // // // // // //           var offer = VendorOffer.fromJson(json);
// // // // // // //           offer = await fetchVendorDetails(
// // // // // // //               offer); // Fetch and update vendor details
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
// // // // // // //           offer.age = userData['age'];
// // // // // // //           offer.userAddress = userData['userAddress'];
// // // // // // //           offer.phoneNumber = userData['phone'];
// // // // // // //           offer.location = userData['location'];
// // // // // // //           offer.gender = userData['gender'];
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
// // // // // // //                   bio: offer.bio,
// // // // // // //                   experience: offer.experience,
// // // // // // //                   age: offer.age,
// // // // // // //                   phoneNumber: offer.phoneNumber,
// // // // // // //                   location: offer.location,
// // // // // // //                   gender: offer.gender,
// // // // // // //                   userAddress: offer.userAddress,
// // // // // // //                   onTap: () => _showVendorDetails(offer),
// // // // // // //                 );
// // // // // // //               },
// // // // // // //             );
// // // // // // //           }
// // // // // // //         },
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }

// // // // // // //   void _showVendorDetails(VendorOffer offer) {
// // // // // // //     Navigator.push(
// // // // // // //       context,
// // // // // // //       MaterialPageRoute(
// // // // // // //         builder: (context) => VendorDetailsScreen(
// // // // // // //           vendorName: offer.vendorName,
// // // // // // //           vendorEmail: offer.vendorEmail,
// // // // // // //           vendorImage: offer.vendorImage,
// // // // // // //           bio: offer.bio,
// // // // // // //           experience: offer.experience,
// // // // // // //           age: offer.age,
// // // // // // //           phoneNumber: offer.phoneNumber,
// // // // // // //           location: offer.location,
// // // // // // //           gender: offer.gender,
// // // // // // //           userAddress: offer.userAddress,
// // // // // // //         ),
// // // // // // //       ),
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

// // // // // // // // Widget to display each offer card
// // // // // // // class OfferCard extends StatelessWidget {
// // // // // // //   final String vendorName;
// // // // // // //   final String vendorEmail;
// // // // // // //   final String category;
// // // // // // //   final double price;
// // // // // // //   final String? vendorImage;
// // // // // // //   final VoidCallback onTap;
// // // // // // //   final String bio;
// // // // // // //   final int experience;
// // // // // // //   final int age;
// // // // // // //   final String phoneNumber;
// // // // // // //   final String location;
// // // // // // //   final String gender;
// // // // // // //   final String userAddress;

// // // // // // //   const OfferCard({
// // // // // // //     required this.vendorName,
// // // // // // //     required this.vendorEmail,
// // // // // // //     required this.category,
// // // // // // //     required this.price,
// // // // // // //     required this.onTap,
// // // // // // //     this.vendorImage,
// // // // // // //     required this.bio,
// // // // // // //     required this.experience,
// // // // // // //     required this.age,
// // // // // // //     required this.phoneNumber,
// // // // // // //     required this.location,
// // // // // // //     required this.gender,
// // // // // // //     required this.userAddress,
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
// // // // // // //                   bio: bio,
// // // // // // //                   experience: experience,
// // // // // // //                   age: age,
// // // // // // //                   phoneNumber: phoneNumber,
// // // // // // //                   location: location,
// // // // // // //                   gender: gender,
// // // // // // //                   userAddress: userAddress,
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
// // // // // // //                   bio: bio,
// // // // // // //                   experience: experience,
// // // // // // //                   age: age,
// // // // // // //                   phoneNumber: phoneNumber,
// // // // // // //                   location: location,
// // // // // // //                   gender: gender,
// // // // // // //                   userAddress: userAddress,
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

// // // // // // // // Model class for VendorOffer
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
// // // // // // //   String bio;
// // // // // // //   int experience;
// // // // // // //   int age;
// // // // // // //   String phoneNumber;
// // // // // // //   String location;
// // // // // // //   String gender;
// // // // // // //   String userAddress;
// // // // // // //   final String category;

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
// // // // // // //     required this.bio,
// // // // // // //     required this.experience,
// // // // // // //     required this.age,
// // // // // // //     required this.phoneNumber,
// // // // // // //     required this.location,
// // // // // // //     required this.gender,
// // // // // // //     required this.userAddress,
// // // // // // //     required this.category,
// // // // // // //   });

// // // // // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // // // // // //     return VendorOffer(
// // // // // // //       id: json['id'] ?? '',
// // // // // // //       venderProfileId: json['venderProfileId'] ?? '',
// // // // // // //       missionId: json['missionId'] ?? '',
// // // // // // //       note: json['note'],
// // // // // // //       price: json['price']?.toDouble() ?? 0.0,
// // // // // // //       state: json['state'] ?? false,
// // // // // // //       vendorName:
// // // // // // //           'Unknown', // Default value, will be updated in fetchVendorDetails
// // // // // // //       vendorEmail:
// // // // // // //           'Unknown', // Default value, will be updated in fetchVendorDetails
// // // // // // //       vendorImage: null, // Default value, will be updated in fetchVendorDetails
// // // // // // //       bio: '',
// // // // // // //       experience: 0,
// // // // // // //       age: 0,
// // // // // // //       phoneNumber: '',
// // // // // // //       location: '',
// // // // // // //       gender: '',
// // // // // // //       userAddress: '',
// // // // // // //       category:
// // // // // // //           'Unknown', // Default value, will be updated in fetchVendorDetails
// // // // // // //     );
// // // // // // //   }
// // // // // // // }
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'dart:convert';
// // // // // // import 'package:http/http.dart' as http;

// // // // // // class OrdersScreen extends StatefulWidget {
// // // // // //   final String userId;

// // // // // //   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

// // // // // //   @override
// // // // // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // // // // }

// // // // // // class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin {
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
// // // // // //         title: const Text('User Missions', style: TextStyle(color: Colors.black)),
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

// // // // // // // Widget to display each mission card
// // // // // // class MissionCard extends StatelessWidget {
// // // // // //   final Mission mission;
// // // // // //   final VoidCallback onTap;

// // // // // //   const MissionCard({required this.mission, required this.onTap, Key? key}) : super(key: key);

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Card(
// // // // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // //       elevation: 4,
// // // // // //       child: ListTile(
// // // // // //         onTap: onTap,
// // // // // //         title: Text(mission.name, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // // // //         subtitle: Column(
// // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //           children: [
// // // // // //             Text('State: ${mission.state}'),
// // // // // //             Text('Day: ${mission.day.toLocal()}'),
// // // // // //           ],
// // // // // //         ),
// // // // // //         trailing: mission.image != null
// // // // // //             ? Image.network(mission.image!, width: 50, height: 50, fit: BoxFit.cover)
// // // // // //             : const SizedBox.shrink(),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // // Model class for Mission
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
// // // // // //   });

// // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // //     return Mission(
// // // // // //       id: json['id']?.toString() ?? '',
// // // // // //       name: json['name'] ?? '',
// // // // // //       state: MissionState.values[(json['state'] is int) ? json['state'] : int.tryParse(json['state'].toString()) ?? 0],
// // // // // //       categoryId: json['categoryId']?.toString() ?? '',
// // // // // //       userId: json['userId']?.toString() ?? '',
// // // // // //       day: DateTime.tryParse(json['day'].toString()) ?? DateTime.now(),
// // // // // //       location: json['location'] ?? '',
// // // // // //       note: json['note'] ?? '',
// // // // // //       image: json['image'],
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // enum MissionState {
// // // // // //   Pending,
// // // // // //   Scheduled,
// // // // // //   Completed,
// // // // // //   Cancelled,
// // // // // // }

// // // // // // // Vendor Offers Screen
// // // // // // class VendorOffersScreen extends StatelessWidget {
// // // // // //   final String missionId;

// // // // // //   const VendorOffersScreen({required this.missionId, Key? key}) : super(key: key);

// // // // // //   Future<List<VendorOffer>> fetchVendorOffers() async {
// // // // // //     try {
// // // // // //       final response = await http.get(Uri.parse(
// // // // // //           'https://192.168.0.109:7127/api/VendorOffer?missionId=$missionId'));

// // // // // //       if (response.statusCode == 200) {
// // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // //         return data.map((json) => VendorOffer.fromJson(json)).toList();
// // // // // //       } else {
// // // // // //         throw Exception('Failed to load offers');
// // // // // //       }
// // // // // //     } catch (e) {
// // // // // //       throw Exception('Error fetching offers: $e');
// // // // // //     }
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       appBar: AppBar(title: const Text('Vendor Offers')),
// // // // // //       body: FutureBuilder<List<VendorOffer>>(
// // // // // //         future: fetchVendorOffers(),
// // // // // //         builder: (context, snapshot) {
// // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // //             return const Center(child: CircularProgressIndicator());
// // // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // // //             return const Center(child: Text('No offers available'));
// // // // // //           }

// // // // // //           return ListView.builder(
// // // // // //             itemCount: snapshot.data!.length,
// // // // // //             itemBuilder: (context, index) {
// // // // // //               final offer = snapshot.data![index];
// // // // // //               return ListTile(title: Text(offer.note), subtitle: Text('\$${offer.price}'));
// // // // // //             },
// // // // // //           );
// // // // // //         },
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // // Vendor Offer Model
// // // // // // class VendorOffer {
// // // // // //   final String id;
// // // // // //   final String venderProfileId;
// // // // // //   final String missionId;
// // // // // //   final String note;
// // // // // //   final double price;
// // // // // //   final bool state;

// // // // // //   VendorOffer({
// // // // // //     required this.id,
// // // // // //     required this.venderProfileId,
// // // // // //     required this.missionId,
// // // // // //     required this.note,
// // // // // //     required this.price,
// // // // // //     required this.state,
// // // // // //   });

// // // // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // // // // //     return VendorOffer(
// // // // // //       id: json['id']?.toString() ?? '',
// // // // // //       venderProfileId: json['venderProfileId']?.toString() ?? '',
// // // // // //       missionId: json['missionId']?.toString() ?? '',
// // // // // //       note: json['note'] ?? '',
// // // // // //       price: json['price']?.toDouble() ?? 0.0,
// // // // // //       state: json['state'] ?? false,
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
// // // // // print(json.decode(response.body));
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
// // // // //         title:
// // // // //             const Text('User Missions', style: TextStyle(color: Colors.black)),
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

// // // // // // MissionCard widget
// // // // // class MissionCard extends StatelessWidget {
// // // // //   final Mission mission;
// // // // //   final VoidCallback onTap;

// // // // //   const MissionCard({required this.mission, required this.onTap, Key? key})
// // // // //       : super(key: key);

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
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // // // Mission Model
// // // // // class Mission {
// // // // //   final String id;
// // // // //   final String name;
// // // // //   final MissionState state;
// // // // //   final String categoryId;
// // // // //   final String userId;
// // // // //   final DateTime day;
// // // // //   final String location;
// // // // //   final String note;

// // // // //   Mission({
// // // // //     required this.id,
// // // // //     required this.name,
// // // // //     required this.state,
// // // // //     required this.categoryId,
// // // // //     required this.userId,
// // // // //     required this.day,
// // // // //     required this.location,
// // // // //     required this.note,
// // // // //   });

// // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // //     return Mission(
// // // // //       id: json['id']?.toString() ?? '',
// // // // //       name: json['name'] ?? '',
// // // // //       state: MissionState.values[(json['state'] is int)
// // // // //           ? json['state']
// // // // //           : int.tryParse(json['state'].toString()) ?? 0],
// // // // //       categoryId: json['categoryId']?.toString() ?? '',
// // // // //       userId: json['userId']?.toString() ?? '',
// // // // //       day: DateTime.tryParse(json['day'].toString()) ?? DateTime.now(),
// // // // //       location: json['location'] ?? '',
// // // // //       note: json['note'] ?? '',
// // // // //     );
// // // // //   }
// // // // // }

// // // // // enum MissionState {
// // // // //   Pending,
// // // // //   Scheduled,
// // // // //   Completed,
// // // // //   Cancelled,
// // // // // }

// // // // // // VendorOffersScreen
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
// // // // //           'https://192.168.0.109:7127/VendorOffer/Filter?missionId=${widget.missionId}'));
// // // // //      print(json.decode(response.body));
// // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // //         final List<dynamic> data = json.decode(response.body);
// // // // //         return data.map((json) => VendorOffer.fromJson(json)).toList();
// // // // //       } else {
// // // // //         throw Exception('Failed to load offers');
// // // // //       }
// // // // //     } catch (e) {
// // // // //       throw Exception('Error fetching offers: $e');
// // // // //     }
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(title: const Text('Vendor Offers')),
// // // // //       body: FutureBuilder<List<VendorOffer>>(
// // // // //         future: offers,
// // // // //         builder: (context, snapshot) {
// // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // //             return const Center(child: CircularProgressIndicator());
// // // // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // //             return const Center(child: Text('No offers available'));
// // // // //           }

// // // // //           return ListView.builder(
// // // // //             itemCount: snapshot.data!.length,
// // // // //             itemBuilder: (context, index) {
// // // // //               final offer = snapshot.data![index];
// // // // //               return ListTile(
// // // // //                 title: Text(offer.vendorName),
// // // // //                 subtitle: Text('\$${offer.price}'),
// // // // //                 onTap: () {
// // // // //                   Navigator.push(
// // // // //                     context,
// // // // //                     MaterialPageRoute(
// // // // //                       builder: (context) => VendorDetailsScreen(
// // // // //                         vendorName: offer.vendorName,
// // // // //                         vendorEmail: offer.vendorEmail,
// // // // //                         vendorImage: offer.vendorImage,
// // // // //                         bio: offer.bio,
// // // // //                         experience: offer.experience,
// // // // //                         age: offer.age,
// // // // //                         phoneNumber: offer.phoneNumber,
// // // // //                         location: offer.location,
// // // // //                         gender: offer.gender,
// // // // //                         userAddress: offer.userAddress,
// // // // //                       ),
// // // // //                     ),
// // // // //                   );
// // // // //                 },
// // // // //               );
// // // // //             },
// // // // //           );
// // // // //         },
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // // class VendorOffer {
// // // // //   final String id;
// // // // //   final String venderProfileId;
// // // // //   final String missionId;
// // // // //   final String vendorName;
// // // // //   final String vendorEmail;
// // // // //   final String? vendorImage;
// // // // //   final String bio;
// // // // //   final int experience;
// // // // //   final int age;
// // // // //   final String phoneNumber;
// // // // //   final String location;
// // // // //   final String gender;
// // // // //   final String userAddress;
// // // // //   final double price;

// // // // //   VendorOffer({
// // // // //     required this.id,
// // // // //     required this.venderProfileId,
// // // // //     required this.missionId,
// // // // //     required this.vendorName,
// // // // //     required this.vendorEmail,
// // // // //     this.vendorImage,
// // // // //     required this.bio,
// // // // //     required this.experience,
// // // // //     required this.age,
// // // // //     required this.phoneNumber,
// // // // //     required this.location,
// // // // //     required this.gender,
// // // // //     required this.userAddress,
// // // // //     required this.price,
// // // // //   });

// // // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) {
// // // // //     return VendorOffer(
// // // // //       id: json['id']?.toString() ?? '',
// // // // //       venderProfileId: json['venderProfileId']?.toString() ?? '',
// // // // //       missionId: json['missionId']?.toString() ?? '',
// // // // //       vendorName: json['vendorName'] ?? 'Unknown',
// // // // //       vendorEmail: json['vendorEmail'] ?? 'Unknown',
// // // // //       vendorImage: json['vendorImage'],
// // // // //       bio: json['bio'] ?? '',
// // // // //       experience: json['experience'] is int
// // // // //           ? json['experience']
// // // // //           : int.tryParse(json['experience'].toString()) ?? 0,
// // // // //       age: json['age'] is int
// // // // //           ? json['age']
// // // // //           : int.tryParse(json['age'].toString()) ?? 0,
// // // // //       phoneNumber: json['phoneNumber']?.toString() ?? '',
// // // // //       location: json['location']?.toString() ?? '',
// // // // //       gender: json['gender']?.toString() ?? '',
// // // // //       userAddress: json['userAddress']?.toString() ?? '',
// // // // //       price: (json['price'] is int)
// // // // //           ? (json['price'] as int).toDouble()
// // // // //           : (json['price'] as double? ?? 0.0),
// // // // //     );
// // // // //   }
// // // // // }
// // // // import 'package:flutter/material.dart';
// // // // import 'dart:convert';
// // // // import 'package:http/http.dart' as http;
// // // // import 'vendor_details_screen.dart'; // Keep your existing VendorDetailsScreen

// // // // class OrdersScreen extends StatefulWidget {
// // // //   final String userId;

// // // //   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

// // // //   @override
// // // //   State<OrdersScreen> createState() => _OrdersScreenState();
// // // // }

// // // // class _OrdersScreenState extends State<OrdersScreen>
// // // //     with SingleTickerProviderStateMixin {
// // // //   late TabController _tabController;
// // // //   late Future<List<Mission>> _missionsFuture;

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _tabController = TabController(length: 2, vsync: this);
// // // //     _missionsFuture = _fetchMissions();
// // // //   }

// // // //   Future<List<Mission>> _fetchMissions() async {
// // // //     final response = await http.get(
// // // //       Uri.parse(
// // // //           'https://192.168.0.109:7127/api/Mission/Filter?userId=${widget.userId}'),
// // // //     );

// // // //     if (response.statusCode == 200) {
// // // //       final List<dynamic> data = json.decode(response.body);
// // // //       return data.map((json) => Mission.fromJson(json)).toList();
// // // //     } else if (response.statusCode == 404) {
// // // //       return [];
// // // //     } else {
// // // //       throw Exception('Failed to load missions: ${response.statusCode}');
// // // //     }
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: const Text('User Missions'),
// // // //         bottom: TabBar(
// // // //           controller: _tabController,
// // // //           tabs: const [
// // // //             Tab(text: 'All Missions'),
// // // //             Tab(text: 'Scheduled Missions'),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //       body: FutureBuilder<List<Mission>>(
// // // //         future: _missionsFuture,
// // // //         builder: (context, snapshot) {
// // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // //             return const Center(child: CircularProgressIndicator());
// // // //           }

// // // //           if (snapshot.hasError) {
// // // //             return Center(child: Text('Error: ${snapshot.error}'));
// // // //           }

// // // //           final missions = snapshot.data ?? [];
// // // //           if (missions.isEmpty) {
// // // //             return const Center(child: Text('No missions yet'));
// // // //           }

// // // //           final scheduledMissions =
// // // //               missions.where((m) => m.state == MissionState.Scheduled).toList();

// // // //           return TabBarView(
// // // //             controller: _tabController,
// // // //             children: [
// // // //               _MissionList(missions: missions),
// // // //               _MissionList(missions: scheduledMissions),
// // // //             ],
// // // //           );
// // // //         },
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // class _MissionList extends StatelessWidget {
// // // //   final List<Mission> missions;

// // // //   const _MissionList({required this.missions});

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return ListView.builder(
// // // //       itemCount: missions.length,
// // // //       padding: const EdgeInsets.all(16),
// // // //       itemBuilder: (context, index) {
// // // //         final mission = missions[index];
// // // //         return MissionCard(
// // // //           mission: mission,
// // // //           onTap: () => Navigator.push(
// // // //             context,
// // // //             MaterialPageRoute(
// // // //               builder: (context) => VendorOffersScreen(missionId: mission.id),
// // // //             ),
// // // //           ),
// // // //         );
// // // //       },
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
// // // //       child: ListTile(
// // // //         onTap: onTap,
// // // //         leading: mission.image != null
// // // //             ? Image.network(mission.image!, width: 50, height: 50)
// // // //             : const Icon(Icons.work),
// // // //         title: Text(mission.name),
// // // //         subtitle: Column(
// // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // //           children: [
// // // //             Text('Location: ${mission.location}'),
// // // //             //   Text('Date: ${DateFormat.yMd().format(mission.day)}'),
// // // //           ],
// // // //         ),
// // // //         trailing: Text(mission.state.name),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // class VendorOffersScreen extends StatefulWidget {
// // // //   final String missionId;

// // // //   const VendorOffersScreen({required this.missionId, Key? key})
// // // //       : super(key: key);

// // // //   @override
// // // //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // // // }

// // // // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// // // //   late Future<List<VendorOffer>> _offersFuture;

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _offersFuture = _fetchOffers();
// // // //   }

// // // //   Future<List<VendorOffer>> _fetchOffers() async {
// // // //     print({widget.missionId});
// // // //     final response = await http.get(
// // // //       Uri.parse(
// // // //           'https://192.168.0.109:7127/api/VendorOffer?missionId=${widget.missionId}'),
// // // //     );
// // // //    // print(json.decode(response.body));
// // // //     if (response.statusCode != 200) return [];

// // // //     final List<dynamic> data = json.decode(response.body);
// // // //     final List<VendorOffer> offers = [];

// // // //     for (var item in data) {
// // // //       var offer = VendorOffer.fromJson(item);
// // // //       try {
// // // //         final profileResponse = await http.get(
// // // //           Uri.parse(
// // // //               'https://192.168.0.109:7127/api/VenderProfile/${offer.venderProfileId}'),
// // // //         );

// // // //         if (profileResponse.statusCode == 200 ||
// // // //             profileResponse.statusCode == 201) {
// // // //           final profile = json.decode(profileResponse.body);
// // // //           final userResponse = await http.get(
// // // //             Uri.parse(
// // // //                 'https://192.168.0.109:7127/api/User/${profile['userId']}'),
// // // //           );

// // // //           if (userResponse.statusCode == 200 ||
// // // //               userResponse.statusCode == 201) {
// // // //             final user = json.decode(userResponse.body);
// // // //             offer = offer.copyWith(
// // // //               vendorName: user['userName'],
// // // //               vendorEmail: user['email'],
// // // //               vendorImage: user['image'],
// // // //               bio: profile['bio'] ?? '',
// // // //               experience: profile['experience'] ?? 0,
// // // //             );
// // // //           }
// // // //         }
// // // //       } catch (e) {
// // // //         print('Error fetching vendor details: $e');
// // // //       }
// // // //       offers.add(offer);
// // // //     }
// // // //     return offers;
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(title: const Text('Vendor Offers')),
// // // //       body: FutureBuilder<List<VendorOffer>>(
// // // //         future: _offersFuture,
// // // //         builder: (context, snapshot) {
// // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // //             return const Center(child: CircularProgressIndicator());
// // // //           }

// // // //           final offers = snapshot.data ?? [];
// // // //           if (offers.isEmpty) {
// // // //             return const Center(child: Text('No offers available'));
// // // //           }

// // // //           return ListView.builder(
// // // //             itemCount: offers.length,
// // // //             padding: const EdgeInsets.all(16),
// // // //             itemBuilder: (context, index) => OfferCard(
// // // //               offer: offers[index],
// // // //               onAccept: () => _acceptOffer(offers[index].id),
// // // //             ),
// // // //           );
// // // //         },
// // // //       ),
// // // //     );
// // // //   }

// // // //   void _acceptOffer(String offerId) {
// // // //     // Implement accept offer logic
// // // //   }
// // // // }

// // // // class OfferCard extends StatelessWidget {
// // // //   final VendorOffer offer;
// // // //   final VoidCallback onAccept;

// // // //   const OfferCard({
// // // //     required this.offer,
// // // //     required this.onAccept,
// // // //     Key? key,
// // // //   }) : super(key: key);

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Card(
// // // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // // //       child: InkWell(
// // // //         onTap: () => _showVendorDetails(context),
// // // //         child: Padding(
// // // //           padding: const EdgeInsets.all(16),
// // // //           child: Column(
// // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // //             children: [
// // // //               Row(
// // // //                 children: [
// // // //                   CircleAvatar(
// // // //                     radius: 25,
// // // //                     backgroundImage: offer.vendorImage != null
// // // //                         ? NetworkImage(offer.vendorImage!)
// // // //                         : null,
// // // //                     child: offer.vendorImage == null
// // // //                         ? const Icon(Icons.person)
// // // //                         : null,
// // // //                   ),
// // // //                   const SizedBox(width: 16),
// // // //                   Expanded(
// // // //                     child: Column(
// // // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // // //                       children: [
// // // //                         Text(
// // // //                           offer.vendorName,
// // // //                           style: const TextStyle(fontWeight: FontWeight.bold),
// // // //                         ),
// // // //                         Text(offer.vendorEmail),
// // // //                       ],
// // // //                     ),
// // // //                   ),
// // // //                   Text('\$${offer.price.toStringAsFixed(2)}'),
// // // //                 ],
// // // //               ),
// // // //               if (offer.note != null)
// // // //                 Padding(
// // // //                   padding: const EdgeInsets.only(top: 8),
// // // //                   child: Text('Note: ${offer.note}'),
// // // //                 ),
// // // //               const SizedBox(height: 16),
// // // //               SizedBox(
// // // //                 width: double.infinity,
// // // //                 child: ElevatedButton(
// // // //                   onPressed: onAccept,
// // // //                   child: const Text('Accept Offer'),
// // // //                 ),
// // // //               ),
// // // //             ],
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   void _showVendorDetails(BuildContext context) {
// // // //     Navigator.push(
// // // //       context,
// // // //       MaterialPageRoute(
// // // //         builder: (context) => VendorDetailsScreen(
// // // //           vendorName: offer.vendorName,
// // // //           vendorEmail: offer.vendorEmail,
// // // //           vendorImage: offer.vendorImage,
// // // //           bio: offer.bio,
// // // //           experience: offer.experience,
// // // //           age: offer.age,
// // // //           phoneNumber: offer.phoneNumber,
// // // //           location: offer.location,
// // // //           gender: offer.gender,
// // // //           userAddress: offer.userAddress,
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // // Models
// // // // class Mission {
// // // //   final String id;
// // // //   final String name;
// // // //   final MissionState state;
// // // //   final DateTime day;
// // // //   final String location;
// // // //   final String? image;

// // // //   Mission({
// // // //     required this.id,
// // // //     required this.name,
// // // //     required this.state,
// // // //     required this.day,
// // // //     required this.location,
// // // //     this.image,
// // // //   });

// // // //   factory Mission.fromJson(Map<String, dynamic> json) => Mission(
// // // //         id: json['id'],
// // // //         name: json['name'],
// // // //         state: MissionState.values[json['state']],
// // // //         day: DateTime.parse(json['day']),
// // // //         location: json['location'],
// // // //         image: json['image'],
// // // //       );
// // // // }

// // // // enum MissionState {
// // // //   Pending,
// // // //   Scheduled,
// // // //   Completed,
// // // //   Cancelled;
// // // // }

// // // // class VendorOffer {
// // // //   final String id;
// // // //   final String venderProfileId;
// // // //   final String missionId;
// // // //   final String? note;
// // // //   final double price;
// // // //   final String vendorName;
// // // //   final String vendorEmail;
// // // //   final String? vendorImage;
// // // //   final String bio;
// // // //   final int experience;
// // // //   final int age;
// // // //   final String phoneNumber;
// // // //   final String location;
// // // //   final String gender;
// // // //   final String userAddress;

// // // //   VendorOffer({
// // // //     required this.id,
// // // //     required this.venderProfileId,
// // // //     required this.missionId,
// // // //     this.note,
// // // //     required this.price,
// // // //     required this.vendorName,
// // // //     required this.vendorEmail,
// // // //     this.vendorImage,
// // // //     required this.bio,
// // // //     required this.experience,
// // // //     required this.age,
// // // //     required this.phoneNumber,
// // // //     required this.location,
// // // //     required this.gender,
// // // //     required this.userAddress,
// // // //   });

// // // //   factory VendorOffer.fromJson(Map<String, dynamic> json) => VendorOffer(
// // // //         id: json['Id'],
// // // //         venderProfileId: json['VenderProfileId'],
// // // //         missionId: json['MissionId'],
// // // //         note: json['Note'],
// // // //         price: json['Price']?.toDouble() ?? 0.0,
// // // //         vendorName: 'Loading...',
// // // //         vendorEmail: 'Loading...',
// // // //         bio: '',
// // // //         experience: 0,
// // // //         age: 0,
// // // //         phoneNumber: '',
// // // //         location: '',
// // // //         gender: '',
// // // //         userAddress: '',
// // // //       );

// // // //   VendorOffer copyWith({
// // // //     String? vendorName,
// // // //     String? vendorEmail,
// // // //     String? vendorImage,
// // // //     String? bio,
// // // //     int? experience,
// // // //     int? age,
// // // //     String? phoneNumber,
// // // //     String? location,
// // // //     String? gender,
// // // //     String? userAddress,
// // // //   }) {
// // // //     return VendorOffer(
// // // //       id: id,
// // // //       venderProfileId: venderProfileId,
// // // //       missionId: missionId,
// // // //       note: note,
// // // //       price: price,
// // // //       vendorName: vendorName ?? this.vendorName,
// // // //       vendorEmail: vendorEmail ?? this.vendorEmail,
// // // //       vendorImage: vendorImage ?? this.vendorImage,
// // // //       bio: bio ?? this.bio,
// // // //       experience: experience ?? this.experience,
// // // //       age: age ?? this.age,
// // // //       phoneNumber: phoneNumber ?? this.phoneNumber,
// // // //       location: location ?? this.location,
// // // //       gender: gender ?? this.gender,
// // // //       userAddress: userAddress ?? this.userAddress,
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

// // // class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin {
// // //   late TabController _tabController;
// // //   late Future<List<Mission>> _missionsFuture;

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _tabController = TabController(length: 2, vsync: this);
// // //     _missionsFuture = _fetchMissions();
// // //   }

// // //   Future<List<Mission>> _fetchMissions() async {
// // //     final response = await http.get(
// // //       Uri.parse('https://192.168.0.109:7127/api/Mission/Filter?userId=${widget.userId}'),
// // //     );

// // //     if (response.statusCode == 200) {
// // //       final List<dynamic> data = json.decode(response.body);
// // //       return data.map((json) => Mission.fromJson(json)).toList();
// // //     } else if (response.statusCode == 404) {
// // //       return [];
// // //     } else {
// // //       throw Exception('Failed to load missions: ${response.statusCode}');
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: const Text('User Missions'),
// // //         bottom: TabBar(
// // //           controller: _tabController,
// // //           tabs: const [
// // //             Tab(text: 'All Missions'),
// // //             Tab(text: 'Scheduled Missions'),
// // //           ],
// // //         ),
// // //       ),
// // //       body: FutureBuilder<List<Mission>>(
// // //         future: _missionsFuture,
// // //         builder: (context, snapshot) {
// // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // //             return const Center(child: CircularProgressIndicator());
// // //           }
          
// // //           if (snapshot.hasError) {
// // //             return Center(child: Text('Error: ${snapshot.error}'));
// // //           }
          
// // //           final missions = snapshot.data ?? [];
// // //           if (missions.isEmpty) {
// // //             return const Center(child: Text('No missions yet'));
// // //           }

// // //           final scheduledMissions = missions.where((m) => m.state == MissionState.Scheduled).toList();

// // //           return TabBarView(
// // //             controller: _tabController,
// // //             children: [
// // //               _MissionList(missions: missions),
// // //               _MissionList(missions: scheduledMissions),
// // //             ],
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }
// // // }

// // // class _MissionList extends StatelessWidget {
// // //   final List<Mission> missions;

// // //   const _MissionList({required this.missions});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return ListView.builder(
// // //       itemCount: missions.length,
// // //       padding: const EdgeInsets.all(16),
// // //       itemBuilder: (context, index) {
// // //         final mission = missions[index];
// // //         return MissionCard(
// // //           mission: mission,
// // //           onTap: () => Navigator.push(
// // //             context,
// // //             MaterialPageRoute(
// // //               builder: (context) => VendorOffersScreen(missionId: mission.id),
// // //             ),
// // //           ),
// // //         );
// // //       },
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
// // //       child: ListTile(
// // //         onTap: onTap,
// // //         leading: mission.image != null
// // //             ? Image.network(mission.image!, width: 50, height: 50)
// // //             : const Icon(Icons.work),
// // //         title: Text(mission.name),
// // //         subtitle: Column(
// // //           crossAxisAlignment: CrossAxisAlignment.start,
// // //           children: [
// // //             Text('Location: ${mission.location}'),
// // //           ],
// // //         ),
// // //         trailing: Text(mission.state.name),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class VendorOffersScreen extends StatefulWidget {
// // //   final String missionId;

// // //   const VendorOffersScreen({required this.missionId, Key? key}) : super(key: key);

// // //   @override
// // //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // // }

// // // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// // //   late Future<List<VendorOffer>> _offersFuture;

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _offersFuture = _fetchOffers();
// // //   }

// // //   Future<List<VendorOffer>> _fetchOffers() async {
// // //     print('Fetching offers for mission: ${widget.missionId}');
// // //     final response = await http.get(
// // //       Uri.parse('https://192.168.0.109:7127/api/VendorOffer/Filter?missionId=${widget.missionId}'),
// // //     );

// // //     print('API Response Status: ${response.statusCode}');
// // //     print('API Response Body: ${response.body}');

// // //     if (response.statusCode != 200) return [];

// // //     final List<dynamic> data = json.decode(response.body);
// // //     final List<VendorOffer> offers = [];

// // //     for (var item in data) {
// // //       try {
// // //         var offer = VendorOffer.fromJson(item);
        
// // //         // Fetch vendor profile details
// // //         final profileResponse = await http.get(
// // //           Uri.parse('https://192.168.0.109:7127/api/VenderProfile/${offer.venderProfileId}'),
// // //         );

// // //         if (profileResponse.statusCode == 200) {
// // //           final profile = json.decode(profileResponse.body);
// // //           final userId = profile['userId']?.toString();

// // //           if (userId != null) {
// // //             // Fetch user details
// // //             final userResponse = await http.get(
// // //               Uri.parse('https://192.168.0.109:7127/api/User/$userId'),
// // //             );

// // //             if (userResponse.statusCode == 200) {
// // //               final user = json.decode(userResponse.body);
// // //               offer = offer.copyWith(
// // //                 vendorName: user['userName']?.toString() ?? 'Unknown Vendor',
// // //                 vendorEmail: user['email']?.toString() ?? 'No email',
// // //                 vendorImage: user['image']?.toString(),
// // //                 bio: profile['bio']?.toString() ?? 'No bio provided',
// // //                 experience: (profile['experience'] as num?)?.toInt() ?? 0,
// // //                 age: (user['age'] as num?)?.toInt() ?? 0,
// // //                 phoneNumber: user['phone']?.toString() ?? 'No phone',
// // //                 location: user['location']?.toString() ?? 'Unknown location',
// // //                 gender: user['gender']?.toString() ?? 'Not specified',
// // //                 userAddress: user['userAddress']?.toString() ?? 'No address',
// // //               );
// // //             }
// // //           }
// // //         }
        
// // //         offers.add(offer);
// // //       } catch (e) {
// // //         print('Error processing offer: $e');
// // //       }
// // //     }
// // //     return offers;
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(title: const Text('Vendor Offers')),
// // //       body: FutureBuilder<List<VendorOffer>>(
// // //         future: _offersFuture,
// // //         builder: (context, snapshot) {
// // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // //             return const Center(child: CircularProgressIndicator());
// // //           }
          
// // //           final offers = snapshot.data ?? [];
// // //           if (offers.isEmpty) {
// // //             return const Center(child: Text('No offers available'));
// // //           }

// // //           return ListView.builder(
// // //             itemCount: offers.length,
// // //             padding: const EdgeInsets.all(16),
// // //             itemBuilder: (context, index) => OfferCard(
// // //               offer: offers[index],
// // //               onAccept: () => _acceptOffer(offers[index].id),
// // //             ),
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }

// // //   void _acceptOffer(String offerId) {
// // //     // Implement accept offer logic
// // //   }
// // // }

// // // class OfferCard extends StatelessWidget {
// // //   final VendorOffer offer;
// // //   final VoidCallback onAccept;

// // //   const OfferCard({
// // //     required this.offer,
// // //     required this.onAccept,
// // //     Key? key,
// // //   }) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Card(
// // //       margin: const EdgeInsets.symmetric(vertical: 8),
// // //       child: InkWell(
// // //         onTap: () => _showVendorDetails(context),
// // //         child: Padding(
// // //           padding: const EdgeInsets.all(16),
// // //           child: Column(
// // //             crossAxisAlignment: CrossAxisAlignment.start,
// // //             children: [
// // //               Row(
// // //                 children: [
// // //                   CircleAvatar(
// // //                     radius: 25,
// // //                     backgroundImage: offer.vendorImage != null 
// // //                         ? NetworkImage(offer.vendorImage!)
// // //                         : null,
// // //                     child: offer.vendorImage == null 
// // //                         ? const Icon(Icons.person)
// // //                         : null,
// // //                   ),
// // //                   const SizedBox(width: 16),
// // //                   Expanded(
// // //                     child: Column(
// // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // //                       children: [
// // //                         Text(
// // //                           offer.vendorName,
// // //                           style: const TextStyle(fontWeight: FontWeight.bold),
// // //                         ),
// // //                         Text(offer.vendorEmail),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                   Text('\$${offer.price.toStringAsFixed(2)}'),
// // //                 ],
// // //               ),
// // //               if (offer.note != null) Padding(
// // //                 padding: const EdgeInsets.only(top: 8),
// // //                 child: Text('Note: ${offer.note}'),
// // //               ),
// // //               const SizedBox(height: 16),
// // //               SizedBox(
// // //                 width: double.infinity,
// // //                 child: ElevatedButton(
// // //                   onPressed: onAccept,
// // //                   child: const Text('Accept Offer'),
// // //                 ),
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   void _showVendorDetails(BuildContext context) {
// // //     Navigator.push(
// // //       context,
// // //       MaterialPageRoute(
// // //         builder: (context) => VendorDetailsScreen(
// // //           vendorName: offer.vendorName,
// // //           vendorEmail: offer.vendorEmail,
// // //           vendorImage: offer.vendorImage,
// // //           bio: offer.bio,
// // //           experience: offer.experience,
// // //           age: offer.age,
// // //           phoneNumber: offer.phoneNumber,
// // //           location: offer.location,
// // //           gender: offer.gender,
// // //           userAddress: offer.userAddress,
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // // Models
// // // class Mission {
// // //   final String id;
// // //   final String name;
// // //   final MissionState state;
// // //   final DateTime day;
// // //   final String location;
// // //   final String? image;

// // //   Mission({
// // //     required this.id,
// // //     required this.name,
// // //     required this.state,
// // //     required this.day,
// // //     required this.location,
// // //     this.image,
// // //   });

// // //   factory Mission.fromJson(Map<String, dynamic> json) => Mission(
// // //     id: json['id'],
// // //     name: json['name'],
// // //     state: MissionState.values[json['state']],
// // //     day: DateTime.parse(json['day']),
// // //     location: json['location'],
// // //     image: json['image'],
// // //   );
// // // }

// // // enum MissionState {
// // //   Pending,
// // //   Scheduled,
// // //   Completed,
// // //   Cancelled;
// // // }

// // // class VendorOffer {
// // //   final String id;
// // //   final String venderProfileId;
// // //   final String missionId;
// // //   final String? note;
// // //   final double price;
// // //   final bool state;
// // //   final String vendorName;
// // //   final String vendorEmail;
// // //   final String? vendorImage;
// // //   final String bio;
// // //   final int experience;
// // //   final int age;
// // //   final String phoneNumber;
// // //   final String location;
// // //   final String gender;
// // //   final String userAddress;

// // //   VendorOffer({
// // //     required this.id,
// // //     required this.venderProfileId,
// // //     required this.missionId,
// // //     this.note,
// // //     required this.price,
// // //     required this.state,
// // //     this.vendorName = 'Loading...',
// // //     this.vendorEmail = 'Loading...',
// // //     this.vendorImage,
// // //     this.bio = '',
// // //     this.experience = 0,
// // //     this.age = 0,
// // //     this.phoneNumber = '',
// // //     this.location = '',
// // //     this.gender = '',
// // //     this.userAddress = '',
// // //   });

// // //   factory VendorOffer.fromJson(Map<String, dynamic> json) => VendorOffer(
// // //     id: json['Id'] ?? '',
// // //     venderProfileId: json['VenderProfileId'] ?? '',
// // //     missionId: json['MissionId'] ?? '',
// // //     note: json['Note'],
// // //     price: (json['Price'] as num?)?.toDouble() ?? 0.0,
// // //     state: json['State'] ?? false,
// // //   );

// // //   VendorOffer copyWith({
// // //     String? vendorName,
// // //     String? vendorEmail,
// // //     String? vendorImage,
// // //     String? bio,
// // //     int? experience,
// // //     int? age,
// // //     String? phoneNumber,
// // //     String? location,
// // //     String? gender,
// // //     String? userAddress,
// // //   }) {
// // //     return VendorOffer(
// // //       id: id,
// // //       venderProfileId: venderProfileId,
// // //       missionId: missionId,
// // //       note: note,
// // //       price: price,
// // //       state: state,
// // //       vendorName: vendorName ?? this.vendorName,
// // //       vendorEmail: vendorEmail ?? this.vendorEmail,
// // //       vendorImage: vendorImage ?? this.vendorImage,
// // //       bio: bio ?? this.bio,
// // //       experience: experience ?? this.experience,
// // //       age: age ?? this.age,
// // //       phoneNumber: phoneNumber ?? this.phoneNumber,
// // //       location: location ?? this.location,
// // //       gender: gender ?? this.gender,
// // //       userAddress: userAddress ?? this.userAddress,
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'dart:convert';
// // import 'package:http/http.dart' as http;
// // import 'vendor_details_screen.dart';

// // class OrdersScreen extends StatefulWidget {
// //   final String userId;

// //   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

// //   @override
// //   State<OrdersScreen> createState() => _OrdersScreenState();
// // }

// // class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin {
// //   late TabController _tabController;
// //   late Future<List<Mission>> _missionsFuture;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _tabController = TabController(length: 2, vsync: this);
// //     _missionsFuture = _fetchMissions();
// //   }

// //   Future<List<Mission>> _fetchMissions() async {
// //     final response = await http.get(
// //       Uri.parse('https://192.168.0.109:7127/api/Mission/Filter?userId=${widget.userId}'),
// //     );

// //     if (response.statusCode == 200) {
// //       final List<dynamic> data = json.decode(response.body);
// //       return data.map((json) => Mission.fromJson(json)).toList();
// //     } else if (response.statusCode == 404) {
// //       return [];
// //     } else {
// //       throw Exception('Failed to load missions: ${response.statusCode}');
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('User Missions'),
// //         bottom: TabBar(
// //           controller: _tabController,
// //           tabs: const [
// //             Tab(text: 'All Missions'),
// //             Tab(text: 'Scheduled Missions'),
// //           ],
// //         ),
// //       ),
// //       body: FutureBuilder<List<Mission>>(
// //         future: _missionsFuture,
// //         builder: (context, snapshot) {
// //           if (snapshot.connectionState == ConnectionState.waiting) {
// //             return const Center(child: CircularProgressIndicator());
// //           }
          
// //           if (snapshot.hasError) {
// //             return Center(child: Text('Error: ${snapshot.error}'));
// //           }
          
// //           final missions = snapshot.data ?? [];
// //           if (missions.isEmpty) {
// //             return const Center(child: Text('No missions yet'));
// //           }

// //           final scheduledMissions = missions.where((m) => m.state == MissionState.Scheduled).toList();

// //           return TabBarView(
// //             controller: _tabController,
// //             children: [
// //               _MissionList(missions: missions),
// //               _MissionList(missions: scheduledMissions),
// //             ],
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }

// // class _MissionList extends StatelessWidget {
// //   final List<Mission> missions;

// //   const _MissionList({required this.missions});

// //   @override
// //   Widget build(BuildContext context) {
// //     return ListView.builder(
// //       itemCount: missions.length,
// //       padding: const EdgeInsets.all(16),
// //       itemBuilder: (context, index) {
// //         final mission = missions[index];
// //         return MissionCard(
// //           mission: mission,
// //           onTap: () => Navigator.push(
// //             context,
// //             MaterialPageRoute(
// //               builder: (context) => VendorOffersScreen(missionId: mission.id),
// //             ),
// //           ),
// //         );
// //       },
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
// //       child: ListTile(
// //         onTap: onTap,
// //         leading: mission.image != null
// //             ? Image.network(mission.image!, width: 50, height: 50)
// //             : const Icon(Icons.work),
// //         title: Text(mission.name),
// //         subtitle: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Text('Location: ${mission.location}'),
// //           ],
// //         ),
// //         trailing: Text(mission.state.name),
// //       ),
// //     );
// //   }
// // }

// // class VendorOffersScreen extends StatefulWidget {
// //   final String missionId;

// //   const VendorOffersScreen({required this.missionId, Key? key}) : super(key: key);

// //   @override
// //   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// // }

// // class _VendorOffersScreenState extends State<VendorOffersScreen> {
// //   late Future<List<VendorOffer>> _offersFuture;
// //   final Set<String> _processingOffers = {};

// //   @override
// //   void initState() {
// //     super.initState();
// //     _offersFuture = _fetchOffers();
// //   }

// //   Future<List<VendorOffer>> _fetchOffers() async {
// //     try {
// //       final response = await http.get(
// //         Uri.parse('https://192.168.0.109:7127/api/VendorOffer/Filter?missionId=${widget.missionId}'),
// //       );

// //       if (response.statusCode != 200) return [];

// //       final List<dynamic> data = json.decode(response.body);
// //       final List<VendorOffer> offers = [];

// //       for (var item in data) {
// //         try {
// //           var offer = VendorOffer.fromJson(item);
          
// //           final profileResponse = await http.get(
// //             Uri.parse('https://192.168.0.109:7127/api/VenderProfile/${offer.venderProfileId}'),
// //           );

// //           if (profileResponse.statusCode == 200) {
// //             final profile = json.decode(profileResponse.body);
// //             final userId = profile['userId']?.toString();

// //             if (userId != null) {
// //               final userResponse = await http.get(
// //                 Uri.parse('https://192.168.0.109:7127/api/User/$userId'),
// //               );

// //               if (userResponse.statusCode == 200) {
// //                 final user = json.decode(userResponse.body);
// //                 offer = offer.copyWith(
// //                   vendorName: user['userName']?.toString() ?? 'Unknown Vendor',
// //                   vendorEmail: user['email']?.toString() ?? 'No email',
// //                   vendorImage: user['image']?.toString(),
// //                   bio: profile['bio']?.toString() ?? 'No bio',
// //                   experience: (profile['experience'] as num?)?.toInt() ?? 0,
// //                   age: (user['age'] as num?)?.toInt() ?? 0,
// //                   phoneNumber: user['phone']?.toString() ?? 'No phone',
// //                   location: user['location']?.toString() ?? 'Unknown',
// //                   gender: user['gender']?.toString() ?? 'Not specified',
// //                   userAddress: user['userAddress']?.toString() ?? 'No address',
// //                 );
// //               }
// //             }
// //           }
          
// //           offers.add(offer);
// //         } catch (e) {
// //           print('Error processing offer: $e');
// //         }
// //       }
// //       return offers;
// //     } catch (e) {
// //       print('Error fetching offers: $e');
// //       return [];
// //     }
// //   }

// //   Future<void> _acceptOffer(String offerId) async {
// //     setState(() => _processingOffers.add(offerId));
    
// //     try {
// //       final response = await http.put(
// //         Uri.parse('https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted/$offerId'),
// //         headers: {'Content-Type': 'application/json'},
// //         body: json.encode({'state': true}),
// //       );

// //       if (response.statusCode == 204) {
// //         setState(() => _offersFuture = _fetchOffers());
// //         ScaffoldMessenger.of(context).showSnackBar(
// //           const SnackBar(content: Text('Offer accepted successfully')),
// //         );
// //       } else {
// //         ScaffoldMessenger.of(context).showSnackBar(
// //           SnackBar(content: Text('Failed to accept offer: ${response.body}')),
// //         );
// //       }
// //     } catch (e) {
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(content: Text('Error accepting offer: $e')),
// //       );
// //     } finally {
// //       setState(() => _processingOffers.remove(offerId));
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: const Text('Vendor Offers')),
// //       body: FutureBuilder<List<VendorOffer>>(
// //         future: _offersFuture,
// //         builder: (context, snapshot) {
// //           if (snapshot.connectionState == ConnectionState.waiting) {
// //             return const Center(child: CircularProgressIndicator());
// //           }
          
// //           final offers = snapshot.data ?? [];
// //           if (offers.isEmpty) {
// //             return const Center(child: Text('No offers available'));
// //           }

// //           return ListView.builder(
// //             itemCount: offers.length,
// //             padding: const EdgeInsets.all(16),
// //             itemBuilder: (context, index) {
// //               final offer = offers[index];
// //               return OfferCard(
// //                 offer: offer,
// //                 onAccept: () => _acceptOffer(offer.id),
// //                 isProcessing: _processingOffers.contains(offer.id),
// //               );
// //             },
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }

// // class OfferCard extends StatelessWidget {
// //   final VendorOffer offer;
// //   final VoidCallback onAccept;
// //   final bool isProcessing;

// //   const OfferCard({
// //     required this.offer,
// //     required this.onAccept,
// //     required this.isProcessing,
// //     Key? key,
// //   }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     final isAccepted = offer.state;
// //     final isDisabled = isAccepted || isProcessing;

// //     return Card(
// //       margin: const EdgeInsets.symmetric(vertical: 8),
// //       child: InkWell(
// //         onTap: () => _showVendorDetails(context),
// //         child: Padding(
// //           padding: const EdgeInsets.all(16),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Row(
// //                 children: [
// //                   CircleAvatar(
// //                     radius: 25,
// //                     backgroundImage: offer.vendorImage != null 
// //                         ? NetworkImage(offer.vendorImage!) 
// //                         : null,
// //                     child: offer.vendorImage == null 
// //                         ? const Icon(Icons.person)
// //                         : null,
// //                   ),
// //                   const SizedBox(width: 16),
// //                   Expanded(
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         Text(
// //                           offer.vendorName,
// //                           style: const TextStyle(fontWeight: FontWeight.bold),
// //                         ),
// //                         Text(offer.vendorEmail),
// //                       ],
// //                     ),
// //                   ),
// //                   Text('\$${offer.price.toStringAsFixed(2)}'),
// //                 ],
// //               ),
// //               if (offer.note != null) Padding(
// //                 padding: const EdgeInsets.only(top: 8),
// //                 child: Text('Note: ${offer.note}'),
// //               ),
// //               const SizedBox(height: 16),
// //               SizedBox(
// //                 width: double.infinity,
// //                 child: ElevatedButton(
// //                   onPressed: isDisabled ? null : onAccept,
// //                   child: isProcessing
// //                       ? const CircularProgressIndicator()
// //                       : Text(isAccepted ? 'Accepted' : 'Accept Offer'),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   void _showVendorDetails(BuildContext context) {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(
// //         builder: (context) => VendorDetailsScreen(
// //           vendorName: offer.vendorName,
// //           vendorEmail: offer.vendorEmail,
// //           vendorImage: offer.vendorImage,
// //           bio: offer.bio,
// //           experience: offer.experience,
// //           age: offer.age,
// //           phoneNumber: offer.phoneNumber,
// //           location: offer.location,
// //           gender: offer.gender,
// //           userAddress: offer.userAddress,
// //         ),
// //       ),
// //     );
// //   }
// // }

// // // Models
// // class Mission {
// //   final String id;
// //   final String name;
// //   final MissionState state;
// //   final DateTime day;
// //   final String location;
// //   final String? image;

// //   Mission({
// //     required this.id,
// //     required this.name,
// //     required this.state,
// //     required this.day,
// //     required this.location,
// //     this.image,
// //   });

// //   factory Mission.fromJson(Map<String, dynamic> json) => Mission(
// //     id: json['id'],
// //     name: json['name'],
// //     state: MissionState.values[json['state']],
// //     day: DateTime.parse(json['day']),
// //     location: json['location'],
// //     image: json['image'],
// //   );
// // }

// // enum MissionState {
// //   Pending,
// //   Scheduled,
// //   Completed,
// //   Cancelled;
// // }

// // class VendorOffer {
// //   final String id;
// //   final String venderProfileId;
// //   final String missionId;
// //   final String? note;
// //   final double price;
// //   final bool state;
// //   final String vendorName;
// //   final String vendorEmail;
// //   final String? vendorImage;
// //   final String bio;
// //   final int experience;
// //   final int age;
// //   final String phoneNumber;
// //   final String location;
// //   final String gender;
// //   final String userAddress;

// //   VendorOffer({
// //     required this.id,
// //     required this.venderProfileId,
// //     required this.missionId,
// //     this.note,
// //     required this.price,
// //     required this.state,
// //     this.vendorName = 'Loading...',
// //     this.vendorEmail = 'Loading...',
// //     this.vendorImage,
// //     this.bio = '',
// //     this.experience = 0,
// //     this.age = 0,
// //     this.phoneNumber = '',
// //     this.location = '',
// //     this.gender = '',
// //     this.userAddress = '',
// //   });

// //   factory VendorOffer.fromJson(Map<String, dynamic> json) => VendorOffer(
// //     id: json['Id'] ?? '',
// //     venderProfileId: json['VenderProfileId'] ?? '',
// //     missionId: json['MissionId'] ?? '',
// //     note: json['Note'],
// //     price: (json['Price'] as num?)?.toDouble() ?? 0.0,
// //     state: json['State'] ?? false,
// //   );

// //   VendorOffer copyWith({
// //     String? vendorName,
// //     String? vendorEmail,
// //     String? vendorImage,
// //     String? bio,
// //     int? experience,
// //     int? age,
// //     String? phoneNumber,
// //     String? location,
// //     String? gender,
// //     String? userAddress,
// //   }) {
// //     return VendorOffer(
// //       id: id,
// //       venderProfileId: venderProfileId,
// //       missionId: missionId,
// //       note: note,
// //       price: price,
// //       state: state,
// //       vendorName: vendorName ?? this.vendorName,
// //       vendorEmail: vendorEmail ?? this.vendorEmail,
// //       vendorImage: vendorImage ?? this.vendorImage,
// //       bio: bio ?? this.bio,
// //       experience: experience ?? this.experience,
// //       age: age ?? this.age,
// //       phoneNumber: phoneNumber ?? this.phoneNumber,
// //       location: location ?? this.location,
// //       gender: gender ?? this.gender,
// //       userAddress: userAddress ?? this.userAddress,
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'vendor_details_screen.dart';

// class OrdersScreen extends StatefulWidget {
//   final String userId;

//   const OrdersScreen({required this.userId, Key? key}) : super(key: key);

//   @override
//   State<OrdersScreen> createState() => _OrdersScreenState();
// }

// class _OrdersScreenState extends State<OrdersScreen> 
//     with SingleTickerProviderStateMixin {
//   late final TabController _tabController;
//   late final Future<List<Mission>> _missionsFuture;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//     _missionsFuture = _fetchMissions();
//   }

//   Future<List<Mission>> _fetchMissions() async {
//     final response = await http.get(Uri.parse(
//       'https://192.168.0.109:7127/api/Mission/Filter?userId=${widget.userId}',
//     ));

//     if (response.statusCode == 200) {
//       return (json.decode(response.body) as List)
//           .map((json) => Mission.fromJson(json))
//           .toList();
//     }
//     if (response.statusCode == 404) return [];
//     throw Exception('Failed to load missions: ${response.statusCode}');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('User Missions'),
//         bottom: TabBar(
//           controller: _tabController,
//           tabs: const [
//             Tab(text: 'All Missions'),
//             Tab(text: 'Scheduled Missions'),
//           ],
//         ),
//       ),
//       body: FutureBuilder<List<Mission>>(
//         future: _missionsFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           }
//           if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           }

//           final missions = snapshot.data ?? [];
//           if (missions.isEmpty) {
//             return const Center(child: Text('No missions yet'));
//           }

//           final scheduled = missions.where(
//             (m) => m.state == MissionState.Scheduled
//           ).toList();

//           return TabBarView(
//             controller: _tabController,
//             children: [
//               _MissionList(missions: missions),
//               _MissionList(missions: scheduled),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }

// class _MissionList extends StatelessWidget {
//   final List<Mission> missions;

//   const _MissionList({required this.missions});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: missions.length,
//       padding: const EdgeInsets.all(16),
//       itemBuilder: (context, index) => MissionCard(
//         mission: missions[index],
//         onTap: () => Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (_) => VendorOffersScreen(
//               missionId: missions[index].id
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MissionCard extends StatelessWidget {
//   final Mission mission;
//   final VoidCallback onTap;

//   const MissionCard({
//     required this.mission,
//     required this.onTap,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       child: ListTile(
//         onTap: onTap,
//         leading: _buildMissionImage(),
//         title: Text(mission.name),
//         subtitle: Text('Location: ${mission.location}'),
//         trailing: Text(mission.state.name),
//       ),
//     );
//   }

//   Widget _buildMissionImage() {
//     return mission.image != null
//         ? Image.network(mission.image!, width: 50, height: 50)
//         : const Icon(Icons.work);
//   }
// }

// class VendorOffersScreen extends StatefulWidget {
//   final String missionId;

//   const VendorOffersScreen({required this.missionId, Key? key})
//       : super(key: key);

//   @override
//   State<VendorOffersScreen> createState() => _VendorOffersScreenState();
// }

// class _VendorOffersScreenState extends State<VendorOffersScreen> {
//   late Future<List<VendorOffer>> _offersFuture;
//   final Set<String> _processingOffers = {};

//   @override
//   void initState() {
//     super.initState();
//     _offersFuture = _fetchOffers();
//   }

//   Future<List<VendorOffer>> _fetchOffers() async {
//     try {
//       final response = await http.get(Uri.parse(
//         'https://192.168.0.109:7127/api/VendorOffer/Filter?missionId=${widget.missionId}',
//       ));

//       if (response.statusCode != 200) return [];

//       final offers = await _processOfferData(json.decode(response.body));
//       return offers;
//     } catch (e) {
//       print('Error fetching offers: $e');
//       return [];
//     }
//   }

//   Future<List<VendorOffer>> _processOfferData(List<dynamic> data) async {
//     final List<VendorOffer> offers = [];
    
//     for (final item in data) {
//       try {
//         var offer = VendorOffer.fromJson(item);
//         offer = await _enhanceOfferWithProfileData(offer);
//         offers.add(offer);
//       } catch (e) {
//         print('Error processing offer: $e');
//       }
//     }
//     return offers;
//   }

//   Future<VendorOffer> _enhanceOfferWithProfileData(VendorOffer offer) async {
//     try {
//       final profileResponse = await http.get(Uri.parse(
//         'https://192.168.0.109:7127/api/VenderProfile/${offer.venderProfileId}',
//       ));

//       if (profileResponse.statusCode != 200) return offer;

//       final profile = json.decode(profileResponse.body);
//       final userId = profile['userId']?.toString();
//       if (userId == null) return offer;

//       final userResponse = await http.get(Uri.parse(
//         'https://192.168.0.109:7127/api/User/$userId'
//       ));

//       if (userResponse.statusCode != 200) return offer;

//       final user = json.decode(userResponse.body);
//       return offer.copyWith(
//         vendorName: user['userName']?.toString() ?? 'Unknown Vendor',
//         vendorEmail: user['email']?.toString() ?? 'No email',
//         vendorImage: user['image']?.toString(),
//         bio: profile['bio']?.toString() ?? 'No bio',
//         experience: (profile['experience'] as num?)?.toInt() ?? 0,
//         age: (user['age'] as num?)?.toInt() ?? 0,
//         phoneNumber: user['phone']?.toString() ?? 'No phone',
//         location: user['location']?.toString() ?? 'Unknown',
//         gender: user['gender']?.toString() ?? 'Not specified',
//         userAddress: user['userAddress']?.toString() ?? 'No address',
//       );
//     } catch (e) {
//       print('Error enhancing offer: $e');
//       return offer;
//     }
//   }

//   Future<void> _acceptOffer(String offerId) async {
//     setState(() => _processingOffers.add(offerId));

//     try {
//       final response = await http.put(
//         Uri.parse(
//           'https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted/$offerId'
//         ),
//         headers: {'Content-Type': 'application/json'},
//         body: json.encode({'state': true}),
//       );

//       if (response.statusCode == 204) {
//         setState(() => _offersFuture = _fetchOffers());
//         _showSnackBar('Offer accepted successfully');
//       } else {
//         _showSnackBar('Failed to accept offer: ${response.body}');
//       }
//     } catch (e) {
//       _showSnackBar('Error accepting offer: $e');
//     } finally {
//       setState(() => _processingOffers.remove(offerId));
//     }
//   }

//   void _showSnackBar(String message) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text(message)),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Vendor Offers')),
//       body: FutureBuilder<List<VendorOffer>>(
//         future: _offersFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           }

//           final offers = snapshot.data ?? [];
//           if (offers.isEmpty) {
//             return const Center(child: Text('No offers available'));
//           }

//           final hasAcceptedOffer = offers.any((o) => o.state);

//           return ListView.builder(
//             itemCount: offers.length,
//             padding: const EdgeInsets.all(16),
//             itemBuilder: (context, index) => OfferCard(
//               offer: offers[index],
//               onAccept: () => _acceptOffer(offers[index].id),
//               isProcessing: _processingOffers.contains(offers[index].id),
//               hasAcceptedOffer: hasAcceptedOffer,
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class OfferCard extends StatelessWidget {
//   final VendorOffer offer;
//   final VoidCallback onAccept;
//   final bool isProcessing;
//   final bool hasAcceptedOffer;

//   const OfferCard({
//     required this.offer,
//     required this.onAccept,
//     required this.isProcessing,
//     required this.hasAcceptedOffer,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final isAccepted = offer.state;
//     final isDisabled = isAccepted || hasAcceptedOffer || isProcessing;

//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       child: InkWell(
//         onTap: () => _showVendorDetails(context),
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _buildVendorHeader(),
//               if (offer.note != null) _buildNoteSection(),
//               const SizedBox(height: 16),
//               _buildAcceptButton(isDisabled, isAccepted),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildVendorHeader() {
//     return Row(
//       children: [
//         CircleAvatar(
//           radius: 25,
//           backgroundImage: offer.vendorImage != null 
//               ? NetworkImage(offer.vendorImage!) 
//               : null,
//           child: offer.vendorImage == null ? const Icon(Icons.person) : null,
//         ),
//         const SizedBox(width: 16),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 offer.vendorName,
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//               ),
//               Text(offer.vendorEmail),
//             ],
//           ),
//         ),
//         Text('LYD ${offer.price.toStringAsFixed(2)}'),
//       ],
//     );
//   }

//   Widget _buildNoteSection() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 8),
//       child: Text('Note: ${offer.note}'),
//     );
//   }

//   Widget _buildAcceptButton(bool isDisabled, bool isAccepted) {
//     return SizedBox(
//       width: double.infinity,
//       child: ElevatedButton(
//         onPressed: isDisabled ? null : onAccept,
//         child: isProcessing
//             ? const CircularProgressIndicator()
//             : Text(isAccepted ? 'Accepted' : 'Accept Offer'),
//       ),
//     );
//   }

//   void _showVendorDetails(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (_) => VendorDetailsScreen(
//           vendorName: offer.vendorName,
//           vendorEmail: offer.vendorEmail,
//           vendorImage: offer.vendorImage,
//           bio: offer.bio,
//           experience: offer.experience,
//           age: offer.age,
//           phoneNumber: offer.phoneNumber,
//           location: offer.location,
//           gender: offer.gender,
//           userAddress: offer.userAddress,
//         ),
//       ),
//     );
//   }
// }



// class Mission {
//   final String id;
//   final String name;
//   final MissionState state;
//   final DateTime day;
//   final String location;
//   final String? image;

//   Mission({
//     required this.id,
//     required this.name,
//     required this.state,
//     required this.day,
//     required this.location,
//     this.image,
//   });

//   factory Mission.fromJson(Map<String, dynamic> json) => Mission(
//     id: json['id'],
//     name: json['name'],
//     state: MissionState.values[json['state']],
//     day: DateTime.parse(json['day']),
//     location: json['location'],
//     image: json['image'],
//   );
// }

// enum MissionState { Pending, Scheduled, Completed, Cancelled }

// class VendorOffer {
//   final String id;
//   final String venderProfileId;
//   final String missionId;
//   final String? note;
//   final double price;
//   final bool state;
//   final String vendorName;
//   final String vendorEmail;
//   final String? vendorImage;
//   final String bio;
//   final int experience;
//   final int age;
//   final String phoneNumber;
//   final String location;
//   final String gender;
//   final String userAddress;

//   VendorOffer({
//     required this.id,
//     required this.venderProfileId,
//     required this.missionId,
//     this.note,
//     required this.price,
//     required this.state,
//     this.vendorName = 'Loading...',
//     this.vendorEmail = 'Loading...',
//     this.vendorImage,
//     this.bio = '',
//     this.experience = 0,
//     this.age = 0,
//     this.phoneNumber = '',
//     this.location = '',
//     this.gender = '',
//     this.userAddress = '',
//   });

//   factory VendorOffer.fromJson(Map<String, dynamic> json) => VendorOffer(
//     id: json['Id'] ?? '',
//     venderProfileId: json['VenderProfileId'] ?? '',
//     missionId: json['MissionId'] ?? '',
//     note: json['Note'],
//     price: (json['Price'] as num?)?.toDouble() ?? 0.0,
//     state: json['State'] ?? false,
//   );

//   VendorOffer copyWith({
//     String? vendorName,
//     String? vendorEmail,
//     String? vendorImage,
//     String? bio,
//     int? experience,
//     int? age,
//     String? phoneNumber,
//     String? location,
//     String? gender,
//     String? userAddress,
//   }) {
//     return VendorOffer(
//       id: id,
//       venderProfileId: venderProfileId,
//       missionId: missionId,
//       note: note,
//       price: price,
//       state: state,
//       vendorName: vendorName ?? this.vendorName,
//       vendorEmail: vendorEmail ?? this.vendorEmail,
//       vendorImage: vendorImage ?? this.vendorImage,
//       bio: bio ?? this.bio,
//       experience: experience ?? this.experience,
//       age: age ?? this.age,
//       phoneNumber: phoneNumber ?? this.phoneNumber,
//       location: location ?? this.location,
//       gender: gender ?? this.gender,
//       userAddress: userAddress ?? this.userAddress,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'vendor_details_screen.dart';

class OrdersScreen extends StatefulWidget {
  final String userId;

  const OrdersScreen({required this.userId, Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> 
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  late final Future<List<Mission>> _missionsFuture;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _missionsFuture = _fetchMissions();
  }

  Future<List<Mission>> _fetchMissions() async {
    final response = await http.get(Uri.parse(
      'https://192.168.0.109:7127/api/Mission/Filter?userId=${widget.userId}',
    ));

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          .map((json) => Mission.fromJson(json))
          .toList();
    }
    if (response.statusCode == 404) return [];
    throw Exception('Failed to load missions: ${response.statusCode}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Missions'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'All Missions'),
            Tab(text: 'Scheduled Missions'),
          ],
        ),
      ),
      body: FutureBuilder<List<Mission>>(
        future: _missionsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final missions = snapshot.data ?? [];
          if (missions.isEmpty) {
            return const Center(child: Text('No missions yet'));
          }

          final scheduled = missions.where(
            (m) => m.state == MissionState.Scheduled
          ).toList();

          return TabBarView(
            controller: _tabController,
            children: [
              _MissionList(missions: missions, userId: widget.userId),
              _MissionList(missions: scheduled, userId: widget.userId),
            ],
          );
        },
      ),
    );
  }
}

class _MissionList extends StatelessWidget {
  final List<Mission> missions;
  final String userId;

  const _MissionList({required this.missions, required this.userId});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: missions.length,
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, index) => MissionCard(
        mission: missions[index],
        userId: userId,
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => VendorOffersScreen(
              missionId: missions[index].id,
              userId: userId,
            ),
          ),
        ),
      ),
    );
  }
}

class MissionCard extends StatelessWidget {
  final Mission mission;
  final String userId;
  final VoidCallback onTap;

  const MissionCard({
    required this.mission,
    required this.userId,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        onTap: onTap,
        leading: _buildMissionImage(),
        title: Text(mission.name),
        subtitle: Text('Location: ${mission.location}'),
        trailing: Text(mission.state.name),
      ),
    );
  }

  Widget _buildMissionImage() {
    return mission.image != null
        ? Image.network(mission.image!, width: 50, height: 50)
        : const Icon(Icons.work);
  }
}

class VendorOffersScreen extends StatefulWidget {
  final String missionId;
  final String userId;

  const VendorOffersScreen({
    required this.missionId,
    required this.userId,
    Key? key,
  }) : super(key: key);

  @override
  State<VendorOffersScreen> createState() => _VendorOffersScreenState();
}

class _VendorOffersScreenState extends State<VendorOffersScreen> {
  late Future<List<VendorOffer>> _offersFuture;
  final Set<String> _processingOffers = {};

  @override
  void initState() {
    super.initState();
    _offersFuture = _fetchOffers();
  }

  Future<List<VendorOffer>> _fetchOffers() async {
    try {
      final response = await http.get(Uri.parse(
        'https://192.168.0.109:7127/api/VendorOffer/Filter?missionId=${widget.missionId}',
      ));

      if (response.statusCode != 200) return [];

      final offers = await _processOfferData(json.decode(response.body));
      return offers;
    } catch (e) {
      print('Error fetching offers: $e');
      return [];
    }
  }

  Future<List<VendorOffer>> _processOfferData(List<dynamic> data) async {
    final List<VendorOffer> offers = [];
    
    for (final item in data) {
      try {
        var offer = VendorOffer.fromJson(item);
        offer = await _enhanceOfferWithProfileData(offer);
        offers.add(offer);
      } catch (e) {
        print('Error processing offer: $e');
      }
    }
    return offers;
  }

  Future<VendorOffer> _enhanceOfferWithProfileData(VendorOffer offer) async {
    try {
      final profileResponse = await http.get(Uri.parse(
        'https://192.168.0.109:7127/api/VenderProfile/${offer.venderProfileId}',
      ));

      if (profileResponse.statusCode != 200) return offer;

      final profile = json.decode(profileResponse.body);
      final userId = profile['userId']?.toString();
      if (userId == null) return offer;

      final userResponse = await http.get(Uri.parse(
        'https://192.168.0.109:7127/api/User/$userId'
      ));

      if (userResponse.statusCode != 200) return offer;

      final user = json.decode(userResponse.body);
      return offer.copyWith(
        vendorName: user['userName']?.toString() ?? 'Unknown Vendor',
        vendorEmail: user['email']?.toString() ?? 'No email',
        vendorImage: user['image']?.toString(),
        bio: profile['bio']?.toString() ?? 'No bio',
        experience: (profile['experience'] as num?)?.toInt() ?? 0,
        age: (user['age'] as num?)?.toInt() ?? 0,
        phoneNumber: user['phone']?.toString() ?? 'No phone',
        location: user['location']?.toString() ?? 'Unknown',
        gender: user['gender']?.toString() ?? 'Not specified',
        userAddress: user['userAddress']?.toString() ?? 'No address',
      );
    } catch (e) {
      print('Error enhancing offer: $e');
      return offer;
    }
  }

  Future<void> _acceptOffer(String offerId) async {
    setState(() => _processingOffers.add(offerId));

    try {
      final response = await http.put(
        Uri.parse(
          'https://192.168.0.109:7127/api/VendorOffer/ChangeStateToAccepted/$offerId'
        ),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'state': true}),
      );

      if (response.statusCode == 204) {
        setState(() => _offersFuture = _fetchOffers());
        _showSnackBar('Offer accepted successfully');
      } else {
        _showSnackBar('Failed to accept offer: ${response.body}');
      }
    } catch (e) {
      _showSnackBar('Error accepting offer: $e');
    } finally {
      setState(() => _processingOffers.remove(offerId));
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vendor Offers')),
      body: FutureBuilder<List<VendorOffer>>(
        future: _offersFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          final offers = snapshot.data ?? [];
          if (offers.isEmpty) {
            return const Center(child: Text('No offers available'));
          }

          final hasAcceptedOffer = offers.any((o) => o.state);

          return ListView.builder(
            itemCount: offers.length,
            padding: const EdgeInsets.all(16),
            itemBuilder: (context, index) => OfferCard(
              offer: offers[index],
              userId: widget.userId,
              onAccept: () => _acceptOffer(offers[index].id),
              isProcessing: _processingOffers.contains(offers[index].id),
              hasAcceptedOffer: hasAcceptedOffer,
            ),
          );
        },
      ),
    );
  }
}

class OfferCard extends StatelessWidget {
  final VendorOffer offer;
  final String userId;
  final VoidCallback onAccept;
  final bool isProcessing;
  final bool hasAcceptedOffer;

  const OfferCard({
    required this.offer,
    required this.userId,
    required this.onAccept,
    required this.isProcessing,
    required this.hasAcceptedOffer,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isAccepted = offer.state;
    final isDisabled = isAccepted || hasAcceptedOffer || isProcessing;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () => _showVendorDetails(context),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildVendorHeader(),
              if (offer.note != null) _buildNoteSection(),
              const SizedBox(height: 16),
              _buildAcceptButton(isDisabled, isAccepted),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVendorHeader() {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: offer.vendorImage != null 
              ? NetworkImage(offer.vendorImage!) 
              : null,
          child: offer.vendorImage == null ? const Icon(Icons.person) : null,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                offer.vendorName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(offer.vendorEmail),
            ],
          ),
        ),
        Text('LYD ${offer.price.toStringAsFixed(2)}'),
      ],
    );
  }

  Widget _buildNoteSection() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Text('Note: ${offer.note}'),
    );
  }

  Widget _buildAcceptButton(bool isDisabled, bool isAccepted) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isDisabled ? null : onAccept,
        child: isProcessing
            ? const CircularProgressIndicator()
            : Text(isAccepted ? 'Accepted' : 'Accept Offer'),
      ),
    );
  }

  void _showVendorDetails(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => VendorDetailsScreen(
          userId: userId,
          vendorId: offer.venderProfileId,
          vendorName: offer.vendorName,
          vendorEmail: offer.vendorEmail,
          vendorImage: offer.vendorImage,
          bio: offer.bio,
          experience: offer.experience,
          age: offer.age,
          phoneNumber: offer.phoneNumber,
          location: offer.location,
          gender: offer.gender,
          userAddress: offer.userAddress,
        ),
      ),
    );
  }
}

class Mission {
  final String id;
  final String name;
  final MissionState state;
  final DateTime day;
  final String location;
  final String? image;

  Mission({
    required this.id,
    required this.name,
    required this.state,
    required this.day,
    required this.location,
    this.image,
  });

  factory Mission.fromJson(Map<String, dynamic> json) => Mission(
    id: json['id'],
    name: json['name'],
    state: MissionState.values[json['state']],
    day: DateTime.parse(json['day']),
    location: json['location'],
    image: json['image'],
  );
}

enum MissionState { Pending, Scheduled, Completed, Cancelled }

class VendorOffer {
  final String id;
  final String venderProfileId;
  final String missionId;
  final String? note;
  final double price;
  final bool state;
  final String vendorName;
  final String vendorEmail;
  final String? vendorImage;
  final String bio;
  final int experience;
  final int age;
  final String phoneNumber;
  final String location;
  final String gender;
  final String userAddress;

  VendorOffer({
    required this.id,
    required this.venderProfileId,
    required this.missionId,
    this.note,
    required this.price,
    required this.state,
    this.vendorName = 'Loading...',
    this.vendorEmail = 'Loading...',
    this.vendorImage,
    this.bio = '',
    this.experience = 0,
    this.age = 0,
    this.phoneNumber = '',
    this.location = '',
    this.gender = '',
    this.userAddress = '',
  });

  factory VendorOffer.fromJson(Map<String, dynamic> json) => VendorOffer(
    id: json['Id'] ?? '',
    venderProfileId: json['VenderProfileId'] ?? '',
    missionId: json['MissionId'] ?? '',
    note: json['Note'],
    price: (json['Price'] as num?)?.toDouble() ?? 0.0,
    state: json['State'] ?? false,
  );

  VendorOffer copyWith({
    String? vendorName,
    String? vendorEmail,
    String? vendorImage,
    String? bio,
    int? experience,
    int? age,
    String? phoneNumber,
    String? location,
    String? gender,
    String? userAddress,
  }) {
    return VendorOffer(
      id: id,
      venderProfileId: venderProfileId,
      missionId: missionId,
      note: note,
      price: price,
      state: state,
      vendorName: vendorName ?? this.vendorName,
      vendorEmail: vendorEmail ?? this.vendorEmail,
      vendorImage: vendorImage ?? this.vendorImage,
      bio: bio ?? this.bio,
      experience: experience ?? this.experience,
      age: age ?? this.age,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      location: location ?? this.location,
      gender: gender ?? this.gender,
      userAddress: userAddress ?? this.userAddress,
    );
  }
}