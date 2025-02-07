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
                        bio: bio,
                        experience: experience,
                        age: age,
                        phoneNumber: phoneNumber,
                        location: location,
                        gender: gender,
                        userAddress: userAddress,
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
                        bio: bio,
                        experience: experience,
                        age: age,
                        phoneNumber: phoneNumber,
                        location: location,
                        gender: gender,
                        userAddress: userAddress,
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
            bio: '',
            experience: 0,
            age: 0,
            phoneNumber: '',
            location: '',
            gender: '',
            userAddress: '',
            category: 'Unknown', // Default value, will be updated in fetchVendorDetails
          );
        }
      }