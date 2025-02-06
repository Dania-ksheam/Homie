// // // // // // // // // // // // // // // // // import 'package:flutter/material.dart';

// // // // // // // // // // // // // // // // // void main() {
// // // // // // // // // // // // // // // // //   runApp(MaterialApp(
// // // // // // // // // // // // // // // // //     home: MissionsScreen(),
// // // // // // // // // // // // // // // // //   ));
// // // // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // // // class MissionsScreen extends StatefulWidget {
// // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // //   _MissionsScreenState createState() => _MissionsScreenState();
// // // // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // // // class _MissionsScreenState extends State<MissionsScreen> {
// // // // // // // // // // // // // // // // //   String filter = 'All';

// // // // // // // // // // // // // // // // //   final List<Mission> missions = [
// // // // // // // // // // // // // // // // //     Mission('John Doe', 'john@example.com', 'https://via.placeholder.com/150', 'Pending'),
// // // // // // // // // // // // // // // // //     Mission('Jane Smith', 'jane@example.com', 'https://via.placeholder.com/150', 'Scheduled'),
// // // // // // // // // // // // // // // // //     Mission('Alice Johnson', 'alice@example.com', 'https://via.placeholder.com/150', 'Completed'),
// // // // // // // // // // // // // // // // //   ];

// // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // //     final filteredMissions = filter == 'All'
// // // // // // // // // // // // // // // // //         ? missions
// // // // // // // // // // // // // // // // //         : missions.where((mission) => mission.state == filter).toList();

// // // // // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // // // //         title: Text('Missions'),
// // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // //       body: Column(
// // // // // // // // // // // // // // // // //         children: [
// // // // // // // // // // // // // // // // //           // Filter bar
// // // // // // // // // // // // // // // // //           Row(
// // // // // // // // // // // // // // // // //             mainAxisAlignment: MainAxisAlignment.spaceAround,
// // // // // // // // // // // // // // // // //             children: [
// // // // // // // // // // // // // // // // //               for (var state in ['All', 'Pending', 'Scheduled', 'Completed'])
// // // // // // // // // // // // // // // // //                 FilterButton(
// // // // // // // // // // // // // // // // //                   label: state,
// // // // // // // // // // // // // // // // //                   isSelected: filter == state,
// // // // // // // // // // // // // // // // //                   onTap: () {
// // // // // // // // // // // // // // // // //                     setState(() {
// // // // // // // // // // // // // // // // //                       filter = state;
// // // // // // // // // // // // // // // // //                     });
// // // // // // // // // // // // // // // // //                   },
// // // // // // // // // // // // // // // // //                 ),
// // // // // // // // // // // // // // // // //             ],
// // // // // // // // // // // // // // // // //           ),
// // // // // // // // // // // // // // // // //           // Missions list
// // // // // // // // // // // // // // // // //           Expanded(
// // // // // // // // // // // // // // // // //             child: ListView.builder(
// // // // // // // // // // // // // // // // //               itemCount: filteredMissions.length,
// // // // // // // // // // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // // // // // // // // // //                 final mission = filteredMissions[index];
// // // // // // // // // // // // // // // // //                 return MissionCard(
// // // // // // // // // // // // // // // // //                   mission: mission,
// // // // // // // // // // // // // // // // //                   onTap: () {
// // // // // // // // // // // // // // // // //                     Navigator.push(
// // // // // // // // // // // // // // // // //                       context,
// // // // // // // // // // // // // // // // //                       MaterialPageRoute(
// // // // // // // // // // // // // // // // //                         builder: (context) => MissionDetailScreen(mission: mission),
// // // // // // // // // // // // // // // // //                       ),
// // // // // // // // // // // // // // // // //                     );
// // // // // // // // // // // // // // // // //                   },
// // // // // // // // // // // // // // // // //                 );
// // // // // // // // // // // // // // // // //               },
// // // // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // // // //           ),
// // // // // // // // // // // // // // // // //         ],
// // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // // // class FilterButton extends StatelessWidget {
// // // // // // // // // // // // // // // // //   final String label;
// // // // // // // // // // // // // // // // //   final bool isSelected;
// // // // // // // // // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // // // // // // // // //   const FilterButton({
// // // // // // // // // // // // // // // // //     required this.label,
// // // // // // // // // // // // // // // // //     required this.isSelected,
// // // // // // // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // // // // // // //   });

// // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // //     return GestureDetector(
// // // // // // // // // // // // // // // // //       onTap: onTap,
// // // // // // // // // // // // // // // // //       child: Chip(
// // // // // // // // // // // // // // // // //         label: Text(label),
// // // // // // // // // // // // // // // // //         backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
// // // // // // // // // // // // // // // // //         labelStyle: TextStyle(
// // // // // // // // // // // // // // // // //           color: isSelected ? Colors.white : Colors.black,
// // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // // // class MissionCard extends StatelessWidget {
// // // // // // // // // // // // // // // // //   final Mission mission;
// // // // // // // // // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // // // // // // // // //   const MissionCard({
// // // // // // // // // // // // // // // // //     required this.mission,
// // // // // // // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // // // // // // //   });

// // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // //     return Card(
// // // // // // // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // // // // // // //         leading: CircleAvatar(
// // // // // // // // // // // // // // // // //           backgroundImage: NetworkImage(mission.pictureUrl),
// // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // //         title: Text(mission.username),
// // // // // // // // // // // // // // // // //         subtitle: Text(mission.email),
// // // // // // // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // // // class MissionDetailScreen extends StatelessWidget {
// // // // // // // // // // // // // // // // //   final Mission mission;

// // // // // // // // // // // // // // // // //   const MissionDetailScreen({required this.mission});

// // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // // // //         title: Text('Mission Details'),
// // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // //       body: Padding(
// // // // // // // // // // // // // // // // //         padding: const EdgeInsets.all(16.0),
// // // // // // // // // // // // // // // // //         child: Column(
// // // // // // // // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // // // //             CircleAvatar(
// // // // // // // // // // // // // // // // //               radius: 50,
// // // // // // // // // // // // // // // // //               backgroundImage: NetworkImage(mission.pictureUrl),
// // // // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // // // //             SizedBox(height: 16),
// // // // // // // // // // // // // // // // //             Text('Username: ${mission.username}', style: TextStyle(fontSize: 18)),
// // // // // // // // // // // // // // // // //             Text('Email: ${mission.email}', style: TextStyle(fontSize: 16)),
// // // // // // // // // // // // // // // // //             if (mission.state == 'Pending') ...[
// // // // // // // // // // // // // // // // //               TextField(
// // // // // // // // // // // // // // // // //                 decoration: InputDecoration(labelText: 'Add Notes'),
// // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // //               ElevatedButton(
// // // // // // // // // // // // // // // // //                 onPressed: () {},
// // // // // // // // // // // // // // // // //                 child: Text('Send'),
// // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // //             ] else if (mission.state == 'Scheduled') ...[
// // // // // // // // // // // // // // // // //               TextField(
// // // // // // // // // // // // // // // // //                 decoration: InputDecoration(labelText: 'Price'),
// // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // //               ElevatedButton(
// // // // // // // // // // // // // // // // //                 onPressed: () {},
// // // // // // // // // // // // // // // // //                 child: Text('Mark as Completed'),
// // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // //             ] else ...[
// // // // // // // // // // // // // // // // //               Text('This mission is completed.', style: TextStyle(color: Colors.green)),
// // // // // // // // // // // // // // // // //             ],
// // // // // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // // // class Mission {
// // // // // // // // // // // // // // // // //   final String username;
// // // // // // // // // // // // // // // // //   final String email;
// // // // // // // // // // // // // // // // //   final String pictureUrl;
// // // // // // // // // // // // // // // // //   final String state;

// // // // // // // // // // // // // // // // //   Mission(this.username, this.email, this.pictureUrl, this.state);
// // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // // // // // // import 'package:http/http.dart' as http;
// // // // // // // // // // // // // // // // import 'dart:convert';

// // // // // // // // // // // // // // // // class MissionsScreen extends StatefulWidget {
// // // // // // // // // // // // // // // //   final String categoryId;

// // // // // // // // // // // // // // // //   MissionsScreen({Key? key, required this.categoryId});

// // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // //   _MissionsScreenState createState() => _MissionsScreenState();
// // // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // // class _MissionsScreenState extends State<MissionsScreen> {
// // // // // // // // // // // // // // // //   String filter = 'All';
// // // // // // // // // // // // // // // //   List<Mission> missions = [];
// // // // // // // // // // // // // // // //   final String backendUrl = 'https://localhost:7127/api/Mission/Filter';

// // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // //   void initState() {
// // // // // // // // // // // // // // // //     super.initState();
// // // // // // // // // // // // // // // //     fetchMissions();
// // // // // // // // // // // // // // // //   }

// // // // // // // // // // // // // // // //   Future<void> fetchMissions() async {
// // // // // // // // // // // // // // // //     String url = '$backendUrl?categoryId=${widget.categoryId}';
// // // // // // // // // // // // // // // //     if (filter != 'All') {
// // // // // // // // // // // // // // // //       url += '&state=$filter';
// // // // // // // // // // // // // // // //     }

// // // // // // // // // // // // // // // //     final response = await http.get(Uri.parse(url));

// // // // // // // // // // // // // // // //     if (response.statusCode == 200) {
// // // // // // // // // // // // // // // //       final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // // // // // // //       List<Mission> missionsList = [];
// // // // // // // // // // // // // // // //       for (var missionJson in data) {
// // // // // // // // // // // // // // // //         Mission mission = Mission.fromJson(missionJson);
// // // // // // // // // // // // // // // //         final userResponse = await http.get(Uri.parse('https://localhost:7127/api/users/${mission.userId}'));
// // // // // // // // // // // // // // // //         if (userResponse.statusCode == 200) {
// // // // // // // // // // // // // // // //           final userJson = json.decode(userResponse.body);
// // // // // // // // // // // // // // // //           mission.userName = userJson['name'];
// // // // // // // // // // // // // // // //           mission.userEmail = userJson['email'];
// // // // // // // // // // // // // // // //           mission.userImage = userJson['image'];
// // // // // // // // // // // // // // // //         }
// // // // // // // // // // // // // // // //         missionsList.add(mission);
// // // // // // // // // // // // // // // //       }
// // // // // // // // // // // // // // // //       setState(() {
// // // // // // // // // // // // // // // //         missions = missionsList;
// // // // // // // // // // // // // // // //       });
// // // // // // // // // // // // // // // //     } else {
// // // // // // // // // // // // // // // //       throw Exception('Failed to load missions');
// // // // // // // // // // // // // // // //     }
// // // // // // // // // // // // // // // //   }

// // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // // //         title: Text('Missions'),
// // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // //       body: Column(
// // // // // // // // // // // // // // // //         children: [
// // // // // // // // // // // // // // // //           // Filter bar
// // // // // // // // // // // // // // // //           Row(
// // // // // // // // // // // // // // // //             mainAxisAlignment: MainAxisAlignment.spaceAround,
// // // // // // // // // // // // // // // //             children: [
// // // // // // // // // // // // // // // //               for (var state in ['All', 'Pending', 'Scheduled', 'Completed'])
// // // // // // // // // // // // // // // //                 FilterButton(
// // // // // // // // // // // // // // // //                   label: state,
// // // // // // // // // // // // // // // //                   isSelected: filter == state,
// // // // // // // // // // // // // // // //                   onTap: () {
// // // // // // // // // // // // // // // //                     setState(() {
// // // // // // // // // // // // // // // //                       filter = state;
// // // // // // // // // // // // // // // //                       fetchMissions();
// // // // // // // // // // // // // // // //                     });
// // // // // // // // // // // // // // // //                   },
// // // // // // // // // // // // // // // //                 ),
// // // // // // // // // // // // // // // //             ],
// // // // // // // // // // // // // // // //           ),
// // // // // // // // // // // // // // // //           // Missions list
// // // // // // // // // // // // // // // //           Expanded(
// // // // // // // // // // // // // // // //             child: ListView.builder(
// // // // // // // // // // // // // // // //               itemCount: missions.length,
// // // // // // // // // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // // // // // // // // //                 final mission = missions[index];
// // // // // // // // // // // // // // // //                 return MissionCard(
// // // // // // // // // // // // // // // //                   mission: mission,
// // // // // // // // // // // // // // // //                   onTap: () {
// // // // // // // // // // // // // // // //                     Navigator.push(
// // // // // // // // // // // // // // // //                       context,
// // // // // // // // // // // // // // // //                       MaterialPageRoute(
// // // // // // // // // // // // // // // //                         builder: (context) => MissionDetailScreen(mission: mission),
// // // // // // // // // // // // // // // //                       ),
// // // // // // // // // // // // // // // //                     );
// // // // // // // // // // // // // // // //                   },
// // // // // // // // // // // // // // // //                 );
// // // // // // // // // // // // // // // //               },
// // // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // // //           ),
// // // // // // // // // // // // // // // //         ],
// // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // // class FilterButton extends StatelessWidget {
// // // // // // // // // // // // // // // //   final String label;
// // // // // // // // // // // // // // // //   final bool isSelected;
// // // // // // // // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // // // // // // // //   const FilterButton({
// // // // // // // // // // // // // // // //     required this.label,
// // // // // // // // // // // // // // // //     required this.isSelected,
// // // // // // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // // // // // //   });

// // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // //     return GestureDetector(
// // // // // // // // // // // // // // // //       onTap: onTap,
// // // // // // // // // // // // // // // //       child: Chip(
// // // // // // // // // // // // // // // //         label: Text(label),
// // // // // // // // // // // // // // // //         backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
// // // // // // // // // // // // // // // //         labelStyle: TextStyle(
// // // // // // // // // // // // // // // //           color: isSelected ? Colors.white : Colors.black,
// // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // // class MissionCard extends StatelessWidget {
// // // // // // // // // // // // // // // //   final Mission mission;
// // // // // // // // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // // // // // // // //   const MissionCard({
// // // // // // // // // // // // // // // //     required this.mission,
// // // // // // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // // // // // //   });

// // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // //     return Card(
// // // // // // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // // // // // //         leading: CircleAvatar(
// // // // // // // // // // // // // // // //           backgroundImage: NetworkImage(mission.userImage ?? ''),
// // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // //         title: Text(mission.userName ?? 'Unknown'),
// // // // // // // // // // // // // // // //         subtitle: Text(mission.userEmail ?? 'Unknown'),
// // // // // // // // // // // // // // // //         trailing: Text(mission.state),
// // // // // // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // // class MissionDetailScreen extends StatelessWidget {
// // // // // // // // // // // // // // // //   final Mission mission;

// // // // // // // // // // // // // // // //   const MissionDetailScreen({required this.mission});

// // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // // //         title: Text('Mission Details'),
// // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // //       body: Padding(
// // // // // // // // // // // // // // // //         padding: const EdgeInsets.all(16.0),
// // // // // // // // // // // // // // // //         child: Column(
// // // // // // // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // // //             CircleAvatar(
// // // // // // // // // // // // // // // //               radius: 50,
// // // // // // // // // // // // // // // //               backgroundImage: NetworkImage(mission.userImage ?? ''),
// // // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // // //             SizedBox(height: 16),
// // // // // // // // // // // // // // // //             Text('Name: ${mission.userName}', style: TextStyle(fontSize: 18)),
// // // // // // // // // // // // // // // //             Text('Email: ${mission.userEmail}', style: TextStyle(fontSize: 16)),
// // // // // // // // // // // // // // // //             Text('Mission: ${mission.name}', style: TextStyle(fontSize: 16)),
// // // // // // // // // // // // // // // //             Text('State: ${mission.state}', style: TextStyle(fontSize: 16)),
// // // // // // // // // // // // // // // //             if (mission.state == 'Pending') ...[
// // // // // // // // // // // // // // // //               TextField(
// // // // // // // // // // // // // // // //                 decoration: InputDecoration(labelText: 'Add Notes'),
// // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // //               ElevatedButton(
// // // // // // // // // // // // // // // //                 onPressed: () {},
// // // // // // // // // // // // // // // //                 child: Text('Send'),
// // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // //             ] else if (mission.state == 'Scheduled') ...[
// // // // // // // // // // // // // // // //               TextField(
// // // // // // // // // // // // // // // //                 decoration: InputDecoration(labelText: 'Price'),
// // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // //               ElevatedButton(
// // // // // // // // // // // // // // // //                 onPressed: () {},
// // // // // // // // // // // // // // // //                 child: Text('Mark as Completed'),
// // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // //             ] else ...[
// // // // // // // // // // // // // // // //               Text('This mission is completed.', style: TextStyle(color: Colors.green)),
// // // // // // // // // // // // // // // //             ],
// // // // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // // class Mission {
// // // // // // // // // // // // // // // //   final String id;
// // // // // // // // // // // // // // // //   final String name;
// // // // // // // // // // // // // // // //   final String state;
// // // // // // // // // // // // // // // //   final String userId;
// // // // // // // // // // // // // // // //   final String categoryId;
// // // // // // // // // // // // // // // //   String? userName;
// // // // // // // // // // // // // // // //   String? userEmail;
// // // // // // // // // // // // // // // //   String? userImage;

// // // // // // // // // // // // // // // //   Mission({
// // // // // // // // // // // // // // // //     required this.id,
// // // // // // // // // // // // // // // //     required this.name,
// // // // // // // // // // // // // // // //     required this.state,
// // // // // // // // // // // // // // // //     required this.userId,
// // // // // // // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // // // // // // //     this.userName,
// // // // // // // // // // // // // // // //     this.userEmail,
// // // // // // // // // // // // // // // //     this.userImage,
// // // // // // // // // // // // // // // //   });

// // // // // // // // // // // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // // // // // //     return Mission(
// // // // // // // // // // // // // // // //       id: json['id'],
// // // // // // // // // // // // // // // //       name: json['name'],
// // // // // // // // // // // // // // // //       state: json['state'],
// // // // // // // // // // // // // // // //       userId: json['userId'],
// // // // // // // // // // // // // // // //       categoryId: json['categoryId'],
// // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // // // // // import 'package:http/http.dart' as http;
// // // // // // // // // // // // // // // import 'dart:convert';

// // // // // // // // // // // // // // // class MissionsScreen extends StatefulWidget {
// // // // // // // // // // // // // // //   final String categoryId;

// // // // // // // // // // // // // // //   const MissionsScreen({Key? key, required this.categoryId}) : super(key: key);

// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   _MissionsScreenState createState() => _MissionsScreenState();
// // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // print(categoryId);
// // // // // // // // // // // // // // // class _MissionsScreenState extends State<MissionsScreen> {
// // // // // // // // // // // // // // //   String filter = 'All';
// // // // // // // // // // // // // // //   List<Mission> missions = [];
// // // // // // // // // // // // // // //   final String backendUrl = 'https://localhost:7127/api/Mission/Filter';

// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   void initState() {
// // // // // // // // // // // // // // //     super.initState();
// // // // // // // // // // // // // // //     fetchMissions();
// // // // // // // // // // // // // // //   }

// // // // // // // // // // // // // // //   Future<void> fetchMissions() async {
// // // // // // // // // // // // // // //     String url = '$backendUrl?categoryId=${widget.categoryId}';
// // // // // // // // // // // // // // //     if (filter != 'All') {
// // // // // // // // // // // // // // //       url += '&state=$filter';
// // // // // // // // // // // // // // //     }

// // // // // // // // // // // // // // //     final response = await http.get(Uri.parse(url));

// // // // // // // // // // // // // // //     if (response.statusCode == 200) {
// // // // // // // // // // // // // // //       final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // // // // // //       List<Mission> missionsList = [];
// // // // // // // // // // // // // // //       for (var missionJson in data) {
// // // // // // // // // // // // // // //         Mission mission = Mission.fromJson(missionJson);
// // // // // // // // // // // // // // //         final userResponse = await http.get(Uri.parse('https://localhost:7127/api/users/${mission.userId}'));
// // // // // // // // // // // // // // //         if (userResponse.statusCode == 200) {
// // // // // // // // // // // // // // //           final userJson = json.decode(userResponse.body);
// // // // // // // // // // // // // // //           mission.userName = userJson['name'];
// // // // // // // // // // // // // // //           mission.userEmail = userJson['email'];
// // // // // // // // // // // // // // //           mission.userImage = userJson['image'];
// // // // // // // // // // // // // // //         }
// // // // // // // // // // // // // // //         missionsList.add(mission);
// // // // // // // // // // // // // // //       }
// // // // // // // // // // // // // // //       setState(() {
// // // // // // // // // // // // // // //         missions = missionsList;
// // // // // // // // // // // // // // //       });
// // // // // // // // // // // // // // //     } else {
// // // // // // // // // // // // // // //       throw Exception('Failed to load missions');
// // // // // // // // // // // // // // //     }
// // // // // // // // // // // // // // //   }

// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // //         title: Text('Missions'),
// // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // //       body: Column(
// // // // // // // // // // // // // // //         children: [
// // // // // // // // // // // // // // //           // Filter bar
// // // // // // // // // // // // // // //           Row(
// // // // // // // // // // // // // // //             mainAxisAlignment: MainAxisAlignment.spaceAround,
// // // // // // // // // // // // // // //             children: [
// // // // // // // // // // // // // // //               for (var state in ['All', 'Pending', 'Scheduled', 'Completed'])
// // // // // // // // // // // // // // //                 FilterButton(
// // // // // // // // // // // // // // //                   label: state,
// // // // // // // // // // // // // // //                   isSelected: filter == state,
// // // // // // // // // // // // // // //                   onTap: () {
// // // // // // // // // // // // // // //                     setState(() {
// // // // // // // // // // // // // // //                       filter = state;
// // // // // // // // // // // // // // //                       fetchMissions();
// // // // // // // // // // // // // // //                     });
// // // // // // // // // // // // // // //                   },
// // // // // // // // // // // // // // //                 ),
// // // // // // // // // // // // // // //             ],
// // // // // // // // // // // // // // //           ),
// // // // // // // // // // // // // // //           // Missions list
// // // // // // // // // // // // // // //           Expanded(
// // // // // // // // // // // // // // //             child: ListView.builder(
// // // // // // // // // // // // // // //               itemCount: missions.length,
// // // // // // // // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // // // // // // // //                 final mission = missions[index];
// // // // // // // // // // // // // // //                 return MissionCard(
// // // // // // // // // // // // // // //                   mission: mission,
// // // // // // // // // // // // // // //                   onTap: () {
// // // // // // // // // // // // // // //                     Navigator.push(
// // // // // // // // // // // // // // //                       context,
// // // // // // // // // // // // // // //                       MaterialPageRoute(
// // // // // // // // // // // // // // //                         builder: (context) => MissionDetailScreen(mission: mission),
// // // // // // // // // // // // // // //                       ),
// // // // // // // // // // // // // // //                     );
// // // // // // // // // // // // // // //                   },
// // // // // // // // // // // // // // //                 );
// // // // // // // // // // // // // // //               },
// // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // //           ),
// // // // // // // // // // // // // // //         ],
// // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // class FilterButton extends StatelessWidget {
// // // // // // // // // // // // // // //   final String label;
// // // // // // // // // // // // // // //   final bool isSelected;
// // // // // // // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // // // // // // //   const FilterButton({
// // // // // // // // // // // // // // //     required this.label,
// // // // // // // // // // // // // // //     required this.isSelected,
// // // // // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // // // // //   });

// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // //     return GestureDetector(
// // // // // // // // // // // // // // //       onTap: onTap,
// // // // // // // // // // // // // // //       child: Chip(
// // // // // // // // // // // // // // //         label: Text(label),
// // // // // // // // // // // // // // //         backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
// // // // // // // // // // // // // // //         labelStyle: TextStyle(
// // // // // // // // // // // // // // //           color: isSelected ? Colors.white : Colors.black,
// // // // // // // // // // // // // // //         ),
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
// // // // // // // // // // // // // // //   });

// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // //     return Card(
// // // // // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // // // // //         leading: CircleAvatar(
// // // // // // // // // // // // // // //           backgroundImage: NetworkImage(mission.userImage ?? ''),
// // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // //         title: Text(mission.userName ?? 'Unknown'),
// // // // // // // // // // // // // // //         subtitle: Text(mission.userEmail ?? 'Unknown'),
// // // // // // // // // // // // // // //         trailing: Text(mission.state),
// // // // // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // class MissionDetailScreen extends StatelessWidget {
// // // // // // // // // // // // // // //   final Mission mission;

// // // // // // // // // // // // // // //   const MissionDetailScreen({required this.mission});

// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // //         title: Text('Mission Details'),
// // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // //       body: Padding(
// // // // // // // // // // // // // // //         padding: const EdgeInsets.all(16.0),
// // // // // // // // // // // // // // //         child: Column(
// // // // // // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // //             CircleAvatar(
// // // // // // // // // // // // // // //               radius: 50,
// // // // // // // // // // // // // // //               backgroundImage: NetworkImage(mission.userImage ?? ''),
// // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // //             SizedBox(height: 16),
// // // // // // // // // // // // // // //             Text('Name: ${mission.userName}', style: TextStyle(fontSize: 18)),
// // // // // // // // // // // // // // //             Text('Email: ${mission.userEmail}', style: TextStyle(fontSize: 16)),
// // // // // // // // // // // // // // //             Text('Mission: ${mission.name}', style: TextStyle(fontSize: 16)),
// // // // // // // // // // // // // // //             Text('State: ${mission.state}', style: TextStyle(fontSize: 16)),
// // // // // // // // // // // // // // //             if (mission.state == 'Pending') ...[
// // // // // // // // // // // // // // //               TextField(
// // // // // // // // // // // // // // //                 decoration: InputDecoration(labelText: 'Add Notes'),
// // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // //               ElevatedButton(
// // // // // // // // // // // // // // //                 onPressed: () {},
// // // // // // // // // // // // // // //                 child: Text('Send'),
// // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // //             ] else if (mission.state == 'Scheduled') ...[
// // // // // // // // // // // // // // //               TextField(
// // // // // // // // // // // // // // //                 decoration: InputDecoration(labelText: 'Price'),
// // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // //               ElevatedButton(
// // // // // // // // // // // // // // //                 onPressed: () {},
// // // // // // // // // // // // // // //                 child: Text('Mark as Completed'),
// // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // //             ] else ...[
// // // // // // // // // // // // // // //               Text('This mission is completed.', style: TextStyle(color: Colors.green)),
// // // // // // // // // // // // // // //             ],
// // // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // class Mission {
// // // // // // // // // // // // // // //   final String id;
// // // // // // // // // // // // // // //   final String name;
// // // // // // // // // // // // // // //   final String state;
// // // // // // // // // // // // // // //   final String userId;
// // // // // // // // // // // // // // //   final String categoryId;
// // // // // // // // // // // // // // //   String? userName;
// // // // // // // // // // // // // // //   String? userEmail;
// // // // // // // // // // // // // // //   String? userImage;

// // // // // // // // // // // // // // //   Mission({
// // // // // // // // // // // // // // //     required this.id,
// // // // // // // // // // // // // // //     required this.name,
// // // // // // // // // // // // // // //     required this.state,
// // // // // // // // // // // // // // //     required this.userId,
// // // // // // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // // // // // //     this.userName,
// // // // // // // // // // // // // // //     this.userEmail,
// // // // // // // // // // // // // // //     this.userImage,
// // // // // // // // // // // // // // //   });

// // // // // // // // // // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // // // // //     return Mission(
// // // // // // // // // // // // // // //       id: json['id'],
// // // // // // // // // // // // // // //       name: json['name'],
// // // // // // // // // // // // // // //       state: json['state'],
// // // // // // // // // // // // // // //       userId: json['userId'],
// // // // // // // // // // // // // // //       categoryId: json['categoryId'],
// // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // // // // import 'package:http/http.dart' as http;
// // // // // // // // // // // // // // import 'dart:convert';

// // // // // // // // // // // // // // class MissionsScreen extends StatefulWidget {
// // // // // // // // // // // // // //   final String categoryId;

// // // // // // // // // // // // // //   const MissionsScreen({Key? key, required this.categoryId}) : super(key: key);

// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   _MissionsScreenState createState() => _MissionsScreenState();
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // // class _MissionsScreenState extends State<MissionsScreen> {
// // // // // // // // // // // // // //   String filter = 'All';
// // // // // // // // // // // // // //   List<Mission> missions = [];
// // // // // // // // // // // // // //   final String backendUrl = 'https://192.168.0.109:7127:7127/api/Mission/Filter';

// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   void initState() {
// // // // // // // // // // // // // //     super.initState();
// // // // // // // // // // // // // //     print(widget.categoryId); // Print the categoryId to ensure it's passed correctly
// // // // // // // // // // // // // //     fetchMissions();
// // // // // // // // // // // // // //   }

// // // // // // // // // // // // // //   Future<void> fetchMissions() async {
// // // // // // // // // // // // // //     String url = '$backendUrl?categoryId=${widget.categoryId}';
// // // // // // // // // // // // // //     if (filter != 'All') {
// // // // // // // // // // // // // //       url += '&state=$filter';
// // // // // // // // // // // // // //     }

// // // // // // // // // // // // // //     final response = await http.get(Uri.parse(url));

// // // // // // // // // // // // // //     if (response.statusCode == 200) {
// // // // // // // // // // // // // //       final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // // // // //       List<Mission> missionsList = [];
// // // // // // // // // // // // // //       for (var missionJson in data) {
// // // // // // // // // // // // // //         Mission mission = Mission.fromJson(missionJson);
// // // // // // // // // // // // // //         final userResponse = await http.get(Uri.parse('https://192.168.0.109:7127/api/users/${mission.userId}'));
// // // // // // // // // // // // // //         if (userResponse.statusCode == 200) {
// // // // // // // // // // // // // //           final userJson = json.decode(userResponse.body);
// // // // // // // // // // // // // //           mission.userName = userJson['name'];
// // // // // // // // // // // // // //           mission.userEmail = userJson['email'];
// // // // // // // // // // // // // //           mission.userImage = userJson['image'];
// // // // // // // // // // // // // //         }
// // // // // // // // // // // // // //         missionsList.add(mission);
// // // // // // // // // // // // // //       }
// // // // // // // // // // // // // //       setState(() {
// // // // // // // // // // // // // //         missions = missionsList;
// // // // // // // // // // // // // //       });
// // // // // // // // // // // // // //     } else {
// // // // // // // // // // // // // //       throw Exception('Failed to load missions');
// // // // // // // // // // // // // //     }
// // // // // // // // // // // // // //   }

// // // // // // // // // // // // // //   void updateFilter(String newFilter) {
// // // // // // // // // // // // // //     setState(() {
// // // // // // // // // // // // // //       filter = newFilter;
// // // // // // // // // // // // // //     });
// // // // // // // // // // // // // //     fetchMissions();
// // // // // // // // // // // // // //   }

// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // //         title: Text('Missions'),
// // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // //       body: Column(
// // // // // // // // // // // // // //         children: [
// // // // // // // // // // // // // //           // Filter bar
// // // // // // // // // // // // // //           Row(
// // // // // // // // // // // // // //             mainAxisAlignment: MainAxisAlignment.spaceAround,
// // // // // // // // // // // // // //             children: [
// // // // // // // // // // // // // //               for (var state in ['All', 'Pending', 'Scheduled', 'Completed'])
// // // // // // // // // // // // // //                 FilterButton(
// // // // // // // // // // // // // //                   label: state,
// // // // // // // // // // // // // //                   isSelected: filter == state,
// // // // // // // // // // // // // //                   onTap: () => updateFilter(state),
// // // // // // // // // // // // // //                 ),
// // // // // // // // // // // // // //             ],
// // // // // // // // // // // // // //           ),
// // // // // // // // // // // // // //           // Missions list
// // // // // // // // // // // // // //           Expanded(
// // // // // // // // // // // // // //             child: ListView.builder(
// // // // // // // // // // // // // //               itemCount: missions.length,
// // // // // // // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // // // // // // //                 final mission = missions[index];
// // // // // // // // // // // // // //                 return MissionCard(
// // // // // // // // // // // // // //                   mission: mission,
// // // // // // // // // // // // // //                   onTap: () {
// // // // // // // // // // // // // //                     Navigator.push(
// // // // // // // // // // // // // //                       context,
// // // // // // // // // // // // // //                       MaterialPageRoute(
// // // // // // // // // // // // // //                         builder: (context) => MissionDetailScreen(mission: mission),
// // // // // // // // // // // // // //                       ),
// // // // // // // // // // // // // //                     );
// // // // // // // // // // // // // //                   },
// // // // // // // // // // // // // //                 );
// // // // // // // // // // // // // //               },
// // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // //           ),
// // // // // // // // // // // // // //         ],
// // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // //     );
// // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // // class FilterButton extends StatelessWidget {
// // // // // // // // // // // // // //   final String label;
// // // // // // // // // // // // // //   final bool isSelected;
// // // // // // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // // // // // //   const FilterButton({
// // // // // // // // // // // // // //     required this.label,
// // // // // // // // // // // // // //     required this.isSelected,
// // // // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // // // //   });

// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // //     return GestureDetector(
// // // // // // // // // // // // // //       onTap: onTap,
// // // // // // // // // // // // // //       child: Chip(
// // // // // // // // // // // // // //         label: Text(label),
// // // // // // // // // // // // // //         backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
// // // // // // // // // // // // // //         labelStyle: TextStyle(
// // // // // // // // // // // // // //           color: isSelected ? Colors.white : Colors.black,
// // // // // // // // // // // // // //         ),
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
// // // // // // // // // // // // // //   });

// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // //     return Card(
// // // // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // // // //         leading: CircleAvatar(
// // // // // // // // // // // // // //           backgroundImage: NetworkImage(mission.userImage ?? ''),
// // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // //         title: Text(mission.userName ?? 'Unknown'),
// // // // // // // // // // // // // //         subtitle: Text(mission.userEmail ?? 'Unknown'),
// // // // // // // // // // // // // //         trailing: Text(mission.state),
// // // // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // //     );
// // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // // class MissionDetailScreen extends StatelessWidget {
// // // // // // // // // // // // // //   final Mission mission;

// // // // // // // // // // // // // //   const MissionDetailScreen({required this.mission});

// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // //         title: Text('Mission Details'),
// // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // //       body: Padding(
// // // // // // // // // // // // // //         padding: const EdgeInsets.all(16.0),
// // // // // // // // // // // // // //         child: Column(
// // // // // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // //             CircleAvatar(
// // // // // // // // // // // // // //               radius: 50,
// // // // // // // // // // // // // //               backgroundImage: NetworkImage(mission.userImage ?? ''),
// // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // //             SizedBox(height: 16),
// // // // // // // // // // // // // //             Text('Name: ${mission.userName}', style: TextStyle(fontSize: 18)),
// // // // // // // // // // // // // //             Text('Email: ${mission.userEmail}', style: TextStyle(fontSize: 16)),
// // // // // // // // // // // // // //             Text('Mission: ${mission.name}', style: TextStyle(fontSize: 16)),
// // // // // // // // // // // // // //             Text('State: ${mission.state}', style: TextStyle(fontSize: 16)),
// // // // // // // // // // // // // //             if (mission.state == 'Pending') ...[
// // // // // // // // // // // // // //               TextField(
// // // // // // // // // // // // // //                 decoration: InputDecoration(labelText: 'Add Notes'),
// // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // //               ElevatedButton(
// // // // // // // // // // // // // //                 onPressed: () {},
// // // // // // // // // // // // // //                 child: Text('Send'),
// // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // //             ] else if (mission.state == 'Scheduled') ...[
// // // // // // // // // // // // // //               TextField(
// // // // // // // // // // // // // //                 decoration: InputDecoration(labelText: 'Price'),
// // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // //               ElevatedButton(
// // // // // // // // // // // // // //                 onPressed: () {},
// // // // // // // // // // // // // //                 child: Text('Mark as Completed'),
// // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // //             ] else ...[
// // // // // // // // // // // // // //               Text('This mission is completed.', style: TextStyle(color: Colors.green)),
// // // // // // // // // // // // // //             ],
// // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // //     );
// // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // // class Mission {
// // // // // // // // // // // // // //   final String id;
// // // // // // // // // // // // // //   final String name;
// // // // // // // // // // // // // //   final String state;
// // // // // // // // // // // // // //   final String userId;
// // // // // // // // // // // // // //   final String categoryId;
// // // // // // // // // // // // // //   String? userName;
// // // // // // // // // // // // // //   String? userEmail;
// // // // // // // // // // // // // //   String? userImage;

// // // // // // // // // // // // // //   Mission({
// // // // // // // // // // // // // //     required this.id,
// // // // // // // // // // // // // //     required this.name,
// // // // // // // // // // // // // //     required this.state,
// // // // // // // // // // // // // //     required this.userId,
// // // // // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // // // // //     this.userName,
// // // // // // // // // // // // // //     this.userEmail,
// // // // // // // // // // // // // //     this.userImage,
// // // // // // // // // // // // // //   });

// // // // // // // // // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // // // //     return Mission(
// // // // // // // // // // // // // //       id: json['id'],
// // // // // // // // // // // // // //       name: json['name'],
// // // // // // // // // // // // // //       state: json['state'],
// // // // // // // // // // // // // //       userId: json['userId'],
// // // // // // // // // // // // // //       categoryId: json['categoryId'],
// // // // // // // // // // // // // //     );
// // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // }
// // // // // // // // // // // // // import 'package:flutter/material.dart';

// // // // // // // // // // // // // class MissionsScreen extends StatefulWidget {
// // // // // // // // // // // // //   final String categoryId;

// // // // // // // // // // // // //   const MissionsScreen({Key? key, required this.categoryId}) : super(key: key);

// // // // // // // // // // // // //   @override
// // // // // // // // // // // // //   _MissionsScreenState createState() => _MissionsScreenState();
// // // // // // // // // // // // // }

// // // // // // // // // // // // // class _MissionsScreenState extends State<MissionsScreen> {
// // // // // // // // // // // // //   @override
// // // // // // // // // // // // //   void initState() {
// // // // // // // // // // // // //     super.initState();
// // // // // // // // // // // // //     // Print the categoryId in the console
// // // // // // // // // // // // //     print('Category ID: ${widget.categoryId}');
// // // // // // // // // // // // //   }

// // // // // // // // // // // // //   @override
// // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // //         title: Text('Missions'),
// // // // // // // // // // // // //       ),
// // // // // // // // // // // // //       body: Center(
// // // // // // // // // // // // //         child: Text('Category ID: ${widget.categoryId}'),
// // // // // // // // // // // // //       ),
// // // // // // // // // // // // //     );
// // // // // // // // // // // // //   }
// // // // // // // // // // // // // }
// // // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // // import 'package:http/http.dart' as http;
// // // // // // // // // // // // import 'dart:convert';

// // // // // // // // // // // // class MissionsScreen extends StatefulWidget {
// // // // // // // // // // // //   final String categoryId;

// // // // // // // // // // // //   const MissionsScreen({Key? key, required this.categoryId}) : super(key: key);

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   _MissionsScreenState createState() => _MissionsScreenState();
// // // // // // // // // // // // }

// // // // // // // // // // // // class _MissionsScreenState extends State<MissionsScreen> {
// // // // // // // // // // // //   String filter = 'All';
// // // // // // // // // // // //   List<Mission> missions = [];
// // // // // // // // // // // //   final String backendUrl = 'https://192.168.0.109:7127/api/Mission/Filter';

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   void initState() {
// // // // // // // // // // // //     super.initState();
// // // // // // // // // // // //     print(widget.categoryId); // Print the categoryId to ensure it's passed correctly
// // // // // // // // // // // //     fetchMissions();
// // // // // // // // // // // //   }

// // // // // // // // // // // //   Future<void> fetchMissions() async {
// // // // // // // // // // // //     String url = '$backendUrl?categoryId=${widget.categoryId}';
// // // // // // // // // // // //     if (filter != 'All') {
// // // // // // // // // // // //       url += '&state=$filter';
// // // // // // // // // // // //     }

// // // // // // // // // // // //     try {
// // // // // // // // // // // //       final response = await http.get(Uri.parse(url));

// // // // // // // // // // // //       if (response.statusCode == 200) {
// // // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // // //         List<Mission> missionsList = [];
// // // // // // // // // // // //         for (var missionJson in data) {
// // // // // // // // // // // //           Mission mission = Mission.fromJson(missionJson);
// // // // // // // // // // // //           final userResponse = await http.get(Uri.parse('https://192.168.0.109:7127/api/users/${mission.userId}'));
// // // // // // // // // // // //           if (userResponse.statusCode == 200) {
// // // // // // // // // // // //             final userJson = json.decode(userResponse.body);
// // // // // // // // // // // //             mission.userName = userJson['userName'];
// // // // // // // // // // // //             mission.userEmail = userJson['email'];
// // // // // // // // // // // //             mission.userImage = userJson['image'];
// // // // // // // // // // // //           }
// // // // // // // // // // // //           missionsList.add(mission);
// // // // // // // // // // // //         }
// // // // // // // // // // // //         setState(() {
// // // // // // // // // // // //           missions = missionsList;
// // // // // // // // // // // //         });
// // // // // // // // // // // //       } else {
// // // // // // // // // // // //         throw Exception('Failed to load missions');
// // // // // // // // // // // //       }
// // // // // // // // // // // //     } catch (e) {
// // // // // // // // // // // //       print('Error fetching missions: $e');
// // // // // // // // // // // //     }
// // // // // // // // // // // //   }

// // // // // // // // // // // //   void updateFilter(String newFilter) {
// // // // // // // // // // // //     setState(() {
// // // // // // // // // // // //       filter = newFilter;
// // // // // // // // // // // //     });
// // // // // // // // // // // //     fetchMissions();
// // // // // // // // // // // //   }

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // //         title: Text('Missions'),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //       body: Column(
// // // // // // // // // // // //         children: [
// // // // // // // // // // // //           // Filter bar
// // // // // // // // // // // //           Row(
// // // // // // // // // // // //             mainAxisAlignment: MainAxisAlignment.spaceAround,
// // // // // // // // // // // //             children: [
// // // // // // // // // // // //               for (var state in ['All', 'Pending', 'Scheduled', 'Completed'])
// // // // // // // // // // // //                 FilterButton(
// // // // // // // // // // // //                   label: state,
// // // // // // // // // // // //                   isSelected: filter == state,
// // // // // // // // // // // //                   onTap: () => updateFilter(state),
// // // // // // // // // // // //                 ),
// // // // // // // // // // // //             ],
// // // // // // // // // // // //           ),
// // // // // // // // // // // //           // Missions list
// // // // // // // // // // // //           Expanded(
// // // // // // // // // // // //             child: ListView.builder(
// // // // // // // // // // // //               itemCount: missions.length,
// // // // // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // // // // //                 final mission = missions[index];
// // // // // // // // // // // //                 return MissionCard(
// // // // // // // // // // // //                   mission: mission,
// // // // // // // // // // // //                   onTap: () {
// // // // // // // // // // // //                     Navigator.push(
// // // // // // // // // // // //                       context,
// // // // // // // // // // // //                       MaterialPageRoute(
// // // // // // // // // // // //                         builder: (context) => MissionDetailScreen(mission: mission),
// // // // // // // // // // // //                       ),
// // // // // // // // // // // //                     );
// // // // // // // // // // // //                   },
// // // // // // // // // // // //                 );
// // // // // // // // // // // //               },
// // // // // // // // // // // //             ),
// // // // // // // // // // // //           ),
// // // // // // // // // // // //         ],
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // class FilterButton extends StatelessWidget {
// // // // // // // // // // // //   final String label;
// // // // // // // // // // // //   final bool isSelected;
// // // // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // // // //   const FilterButton({
// // // // // // // // // // // //     required this.label,
// // // // // // // // // // // //     required this.isSelected,
// // // // // // // // // // // //     required this.onTap,
// // // // // // // // // // // //   });

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return GestureDetector(
// // // // // // // // // // // //       onTap: onTap,
// // // // // // // // // // // //       child: Chip(
// // // // // // // // // // // //         label: Text(label),
// // // // // // // // // // // //         backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
// // // // // // // // // // // //         labelStyle: TextStyle(
// // // // // // // // // // // //           color: isSelected ? Colors.white : Colors.black,
// // // // // // // // // // // //         ),
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
// // // // // // // // // // // //   });

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Card(
// // // // // // // // // // // //       child: ListTile(
// // // // // // // // // // // //         leading: CircleAvatar(
// // // // // // // // // // // //           backgroundImage: NetworkImage(mission.userImage ?? ''),
// // // // // // // // // // // //         ),
// // // // // // // // // // // //         title: Text(mission.userName ?? 'Unknown'),
// // // // // // // // // // // //         subtitle: Text(mission.userEmail ?? 'Unknown'),
// // // // // // // // // // // //         trailing: Text(mission.state),
// // // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // class MissionDetailScreen extends StatelessWidget {
// // // // // // // // // // // //   final Mission mission;

// // // // // // // // // // // //   const MissionDetailScreen({required this.mission});

// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // //         title: Text('Mission Details'),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //       body: Padding(
// // // // // // // // // // // //         padding: const EdgeInsets.all(16.0),
// // // // // // // // // // // //         child: Column(
// // // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // //           children: [
// // // // // // // // // // // //             CircleAvatar(
// // // // // // // // // // // //               radius: 50,
// // // // // // // // // // // //               backgroundImage: NetworkImage(mission.userImage ?? ''),
// // // // // // // // // // // //             ),
// // // // // // // // // // // //             SizedBox(height: 16),
// // // // // // // // // // // //             Text('Name: ${mission.userName}', style: TextStyle(fontSize: 18)),
// // // // // // // // // // // //             Text('Email: ${mission.userEmail}', style: TextStyle(fontSize: 16)),
// // // // // // // // // // // //             Text('Mission: ${mission.name}', style: TextStyle(fontSize: 16)),
// // // // // // // // // // // //             Text('State: ${mission.state}', style: TextStyle(fontSize: 16)),
// // // // // // // // // // // //             if (mission.state == 'Pending') ...[
// // // // // // // // // // // //               TextField(
// // // // // // // // // // // //                 decoration: InputDecoration(labelText: 'Add Notes'),
// // // // // // // // // // // //               ),
// // // // // // // // // // // //               ElevatedButton(
// // // // // // // // // // // //                 onPressed: () {},
// // // // // // // // // // // //                 child: Text('Send'),
// // // // // // // // // // // //               ),
// // // // // // // // // // // //             ] else if (mission.state == 'Scheduled') ...[
// // // // // // // // // // // //               TextField(
// // // // // // // // // // // //                 decoration: InputDecoration(labelText: 'Price'),
// // // // // // // // // // // //               ),
// // // // // // // // // // // //               ElevatedButton(
// // // // // // // // // // // //                 onPressed: () {},
// // // // // // // // // // // //                 child: Text('Mark as Completed'),
// // // // // // // // // // // //               ),
// // // // // // // // // // // //             ] else ...[
// // // // // // // // // // // //               Text('This mission is completed.', style: TextStyle(color: Colors.green)),
// // // // // // // // // // // //             ],
// // // // // // // // // // // //           ],
// // // // // // // // // // // //         ),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // class Mission {
// // // // // // // // // // // //   final String id;
// // // // // // // // // // // //   final String name;
// // // // // // // // // // // //   final String state;
// // // // // // // // // // // //   final String userId;
// // // // // // // // // // // //   final String categoryId;
// // // // // // // // // // // //   String? userName;
// // // // // // // // // // // //   String? userEmail;
// // // // // // // // // // // //   String? userImage;

// // // // // // // // // // // //   Mission({
// // // // // // // // // // // //     required this.id,
// // // // // // // // // // // //     required this.name,
// // // // // // // // // // // //     required this.state,
// // // // // // // // // // // //     required this.userId,
// // // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // // //     this.userName,
// // // // // // // // // // // //     this.userEmail,
// // // // // // // // // // // //     this.userImage,
// // // // // // // // // // // //   });

// // // // // // // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // // //     return Mission(
// // // // // // // // // // // //       id: json['id'],
// // // // // // // // // // // //       name: json['name'],
// // // // // // // // // // // //       state: json['state'],
// // // // // // // // // // // //       userId: json['userId'],
// // // // // // // // // // // //       categoryId: json['categoryId'],
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }
// // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // import 'package:http/http.dart' as http;
// // // // // // // // // // // import 'dart:convert';
// // // // // // // // // // // class Mission {
// // // // // // // // // // //   final String id;
// // // // // // // // // // //   final String name;
// // // // // // // // // // //   final String state;
// // // // // // // // // // // final String userId;
// // // // // // // // // // //   final String categoryId;
// // // // // // // // // // //   final String? location;
// // // // // // // // // // //   final String? grade;
// // // // // // // // // // //   final String? userName;
// // // // // // // // // // //   final String? userEmail;
// // // // // // // // // // //   final String? userImage;

// // // // // // // // // // //   Mission({
// // // // // // // // // // //     required this.id,
// // // // // // // // // // //     required this.name,
// // // // // // // // // // //     required this.state,
// // // // // // // // // // //     required this.userId,
// // // // // // // // // // //     required this.categoryId,
// // // // // // // // // // //     this.location,
// // // // // // // // // // //     this.grade,
// // // // // // // // // // //     this.userName,
// // // // // // // // // // //     this.userEmail,
// // // // // // // // // // //     this.userImage,
// // // // // // // // // // //   });

// // // // // // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // // // // // //     return Mission(
// // // // // // // // // // //       id: json['id'],
// // // // // // // // // // //       name: json['name'],
// // // // // // // // // // //       state: json['state'].toString(), // Convert enum to string
// // // // // // // // // // //       userId: json['userId'],
// // // // // // // // // // //       categoryId: json['categoryId'],
// // // // // // // // // // //       location: json['location'],
// // // // // // // // // // //       grade: json['grade'],
// // // // // // // // // // //       userName: json['userName'],
// // // // // // // // // // //       userEmail: json['userEmail'],
// // // // // // // // // // //       userImage: json['userImage'],
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // class MissionsScreen extends StatefulWidget {
// // // // // // // // // // //   final String categoryId;

// // // // // // // // // // //   const MissionsScreen({Key? key, required this.categoryId}) : super(key: key);

// // // // // // // // // // //   @override
// // // // // // // // // // //   _MissionsScreenState createState() => _MissionsScreenState();
// // // // // // // // // // // }

// // // // // // // // // // // class _MissionsScreenState extends State<MissionsScreen> {
// // // // // // // // // // //   String filter = 'All';
// // // // // // // // // // //   List<Mission> missions = [];
// // // // // // // // // // //   final String backendUrl = 'https://192.168.0.109:7127/api/Mission/Filter';

// // // // // // // // // // //   @override
// // // // // // // // // // //   void initState() {
// // // // // // // // // // //     super.initState();
// // // // // // // // // // //     fetchMissions();
// // // // // // // // // // //   }

// // // // // // // // // // //   Future<void> fetchMissions() async {
// // // // // // // // // // //     String url = '$backendUrl?categoryId=${widget.categoryId}';
// // // // // // // // // // //     if (filter != 'All') {
// // // // // // // // // // //       int state = getMissionState(filter);
// // // // // // // // // // //       url += '&state=$state';
// // // // // // // // // // //     }

// // // // // // // // // // //     try {
// // // // // // // // // // //       final response = await http.get(Uri.parse(url));

// // // // // // // // // // //       if (response.statusCode == 200) {
// // // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // // //         List<Mission> missionsList = data.map((json) => Mission.fromJson(json)).toList();
// // // // // // // // // // //         setState(() {
// // // // // // // // // // //           missions = missionsList;
// // // // // // // // // // //         });
// // // // // // // // // // //       } else {
// // // // // // // // // // //         throw Exception('Failed to load missions');
// // // // // // // // // // //       }
// // // // // // // // // // //     } catch (e) {
// // // // // // // // // // //       print('Error fetching missions: $e');
// // // // // // // // // // //     }
// // // // // // // // // // //   }

// // // // // // // // // // //   int getMissionState(String state) {
// // // // // // // // // // //     switch (state) {
// // // // // // // // // // //       case 'Pending':
// // // // // // // // // // //         return 0;
// // // // // // // // // // //       case 'Scheduled':
// // // // // // // // // // //         return 1;
// // // // // // // // // // //       case 'Completed':
// // // // // // // // // // //         return 2;
// // // // // // // // // // //       case 'Cancelled':
// // // // // // // // // // //         return 3;
// // // // // // // // // // //       default:
// // // // // // // // // // //         return 0;
// // // // // // // // // // //     }
// // // // // // // // // // //   }

// // // // // // // // // // //   void updateFilter(String newFilter) {
// // // // // // // // // // //     setState(() {
// // // // // // // // // // //       filter = newFilter;
// // // // // // // // // // //     });
// // // // // // // // // // //     fetchMissions();
// // // // // // // // // // //   }

// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return Scaffold(
// // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // //         title: Text('Missions'),
// // // // // // // // // // //       ),
// // // // // // // // // // //       body: Column(
// // // // // // // // // // //         children: [
// // // // // // // // // // //           // Filter bar
// // // // // // // // // // //           Row(
// // // // // // // // // // //             mainAxisAlignment: MainAxisAlignment.spaceAround,
// // // // // // // // // // //             children: [
// // // // // // // // // // //               for (var state in ['All', 'Pending', 'Scheduled', 'Completed', 'Cancelled'])
// // // // // // // // // // //                 FilterButton(
// // // // // // // // // // //                   label: state,
// // // // // // // // // // //                   isSelected: filter == state,
// // // // // // // // // // //                   onTap: () => updateFilter(state),
// // // // // // // // // // //                 ),
// // // // // // // // // // //             ],
// // // // // // // // // // //           ),
// // // // // // // // // // //           // Missions list
// // // // // // // // // // //           Expanded(
// // // // // // // // // // //             child: ListView.builder(
// // // // // // // // // // //               itemCount: missions.length,
// // // // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // // // //                 final mission = missions[index];
// // // // // // // // // // //                 return MissionCard(
// // // // // // // // // // //                   mission: mission,
// // // // // // // // // // //                   onTap: () {
// // // // // // // // // // //                     Navigator.push(
// // // // // // // // // // //                       context,
// // // // // // // // // // //                       MaterialPageRoute(
// // // // // // // // // // //                         builder: (context) => MissionDetailScreen(mission: mission),
// // // // // // // // // // //                       ),
// // // // // // // // // // //                     );
// // // // // // // // // // //                   },
// // // // // // // // // // //                 );
// // // // // // // // // // //               },
// // // // // // // // // // //             ),
// // // // // // // // // // //           ),
// // // // // // // // // // //         ],
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }
// // // // // // // // // // // class MissionCard extends StatelessWidget {
// // // // // // // // // // //   final Mission mission;
// // // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // // //   const MissionCard({
// // // // // // // // // // //     required this.mission,
// // // // // // // // // // //     required this.onTap,
// // // // // // // // // // //   });

// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return Card(
// // // // // // // // // // //       child: ListTile(
// // // // // // // // // // //         leading: CircleAvatar(
// // // // // // // // // // //           backgroundImage: NetworkImage(mission.userImage ?? ''),
// // // // // // // // // // //         ),
// // // // // // // // // // //         title: Text(mission.userName ?? 'Unknown'),
// // // // // // // // // // //         subtitle: Text(mission.userEmail ?? 'Unknown'),
// // // // // // // // // // //         trailing: Text(mission.state),
// // // // // // // // // // //         onTap: onTap,
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }
// // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // import 'package:http/http.dart' as http;
// // // // // // // // // // import 'dart:convert';

// // // // // // // // // // class Mission {
// // // // // // // // // //   final String id;
// // // // // // // // // //   final String name;
// // // // // // // // // //   final String state;
// // // // // // // // // //   final String userId;
// // // // // // // // // //   final String categoryId;
// // // // // // // // // //   final String? location;
// // // // // // // // // //   final String? grade;
// // // // // // // // // //   final String? userName;
// // // // // // // // // //   final String? userEmail;
// // // // // // // // // //   final String? userImage;

// // // // // // // // // //   Mission({
// // // // // // // // // //     required this.id,
// // // // // // // // // //     required this.name,
// // // // // // // // // //     required this.state,
// // // // // // // // // //     required this.userId,
// // // // // // // // // //     required this.categoryId,
// // // // // // // // // //     this.location,
// // // // // // // // // //     this.grade,
// // // // // // // // // //     this.userName,
// // // // // // // // // //     this.userEmail,
// // // // // // // // // //     this.userImage,
// // // // // // // // // //   });

// // // // // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // // // // //     return Mission(
// // // // // // // // // //       id: json['id'],
// // // // // // // // // //       name: json['name'],
// // // // // // // // // //       state: json['state'].toString(), // Convert enum to string
// // // // // // // // // //       userId: json['userId'],
// // // // // // // // // //       categoryId: json['categoryId'],
// // // // // // // // // //       location: json['location'],
// // // // // // // // // //       grade: json['grade'],
// // // // // // // // // //       userName: json['userName'],
// // // // // // // // // //       userEmail: json['userEmail'],
// // // // // // // // // //       userImage: json['userImage'],
// // // // // // // // // //     );
// // // // // // // // // //   }
// // // // // // // // // // }

// // // // // // // // // // class MissionsScreen extends StatefulWidget {
// // // // // // // // // //   final String categoryId;

// // // // // // // // // //   const MissionsScreen({Key? key, required this.categoryId}) : super(key: key);

// // // // // // // // // //   @override
// // // // // // // // // //   _MissionsScreenState createState() => _MissionsScreenState();
// // // // // // // // // // }

// // // // // // // // // // class _MissionsScreenState extends State<MissionsScreen> {
// // // // // // // // // //   String filter = 'All';
// // // // // // // // // //   List<Mission> missions = [];
// // // // // // // // // //   final String backendUrl = 'https://192.168.0.109:7127/api/Mission/Filter';

// // // // // // // // // //   @override
// // // // // // // // // //   void initState() {
// // // // // // // // // //     super.initState();
// // // // // // // // // //     fetchMissions();
// // // // // // // // // //   }

// // // // // // // // // //   Future<void> fetchMissions() async {
// // // // // // // // // //     String url = '$backendUrl?categoryId=${widget.categoryId}';
// // // // // // // // // //     if (filter != 'All') {
// // // // // // // // // //       int state = getMissionState(filter);
// // // // // // // // // //       url += '&state=$state';
// // // // // // // // // //     }

// // // // // // // // // //     try {
// // // // // // // // // //       final response = await http.get(Uri.parse(url));

// // // // // // // // // //       if (response.statusCode == 200) {
// // // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // // //         List<Mission> missionsList = data.map((json) => Mission.fromJson(json)).toList();
// // // // // // // // // //         setState(() {
// // // // // // // // // //           missions = missionsList;
// // // // // // // // // //         });
// // // // // // // // // //       } else {
// // // // // // // // // //         throw Exception('Failed to load missions');
// // // // // // // // // //       }
// // // // // // // // // //     } catch (e) {
// // // // // // // // // //       print('Error fetching missions: $e');
// // // // // // // // // //     }
// // // // // // // // // //   }

// // // // // // // // // //   int getMissionState(String state) {
// // // // // // // // // //     switch (state) {
// // // // // // // // // //       case 'Pending':
// // // // // // // // // //         return 0;
// // // // // // // // // //       case 'Scheduled':
// // // // // // // // // //         return 1;
// // // // // // // // // //       case 'Completed':
// // // // // // // // // //         return 2;
// // // // // // // // // //       case 'Cancelled':
// // // // // // // // // //         return 3;
// // // // // // // // // //       default:
// // // // // // // // // //         return 0;
// // // // // // // // // //     }
// // // // // // // // // //   }

// // // // // // // // // //   void updateFilter(String newFilter) {
// // // // // // // // // //     setState(() {
// // // // // // // // // //       filter = newFilter;
// // // // // // // // // //     });
// // // // // // // // // //     fetchMissions();
// // // // // // // // // //   }

// // // // // // // // // //   @override
// // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // //     return Scaffold(
// // // // // // // // // //       appBar: AppBar(
// // // // // // // // // //         title: Text('Missions'),
// // // // // // // // // //       ),
// // // // // // // // // //       body: Column(
// // // // // // // // // //         children: [
// // // // // // // // // //           // Filter bar
// // // // // // // // // //           Row(
// // // // // // // // // //             mainAxisAlignment: MainAxisAlignment.spaceAround,
// // // // // // // // // //             children: [
// // // // // // // // // //               for (var state in ['All', 'Pending', 'Scheduled', 'Completed', 'Cancelled'])
// // // // // // // // // //                 FilterButton(
// // // // // // // // // //                   label: state,
// // // // // // // // // //                   isSelected: filter == state,
// // // // // // // // // //                   onTap: () => updateFilter(state),
// // // // // // // // // //                 ),
// // // // // // // // // //             ],
// // // // // // // // // //           ),
// // // // // // // // // //           // Missions list
// // // // // // // // // //           Expanded(
// // // // // // // // // //             child: ListView.builder(
// // // // // // // // // //               itemCount: missions.length,
// // // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // // //                 final mission = missions[index];
// // // // // // // // // //                 return MissionCard(
// // // // // // // // // //                   mission: mission,
// // // // // // // // // //                   onTap: () {
// // // // // // // // // //                     Navigator.push(
// // // // // // // // // //                       context,
// // // // // // // // // //                       MaterialPageRoute(
// // // // // // // // // //                         builder: (context) => MissionDetailScreen(mission: mission),
// // // // // // // // // //                       ),
// // // // // // // // // //                     );
// // // // // // // // // //                   },
// // // // // // // // // //                 );
// // // // // // // // // //               },
// // // // // // // // // //             ),
// // // // // // // // // //           ),
// // // // // // // // // //         ],
// // // // // // // // // //       ),
// // // // // // // // // //     );
// // // // // // // // // //   }
// // // // // // // // // // }

// // // // // // // // // // class FilterButton extends StatelessWidget {
// // // // // // // // // //   final String label;
// // // // // // // // // //   final bool isSelected;
// // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // //   const FilterButton({
// // // // // // // // // //     required this.label,
// // // // // // // // // //     required this.isSelected,
// // // // // // // // // //     required this.onTap,
// // // // // // // // // //   });

// // // // // // // // // //   @override
// // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // //     return GestureDetector(
// // // // // // // // // //       onTap: onTap,
// // // // // // // // // //       child: Chip(
// // // // // // // // // //         label: Text(label),
// // // // // // // // // //         backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
// // // // // // // // // //         labelStyle: TextStyle(
// // // // // // // // // //           color: isSelected ? Colors.white : Colors.black,
// // // // // // // // // //         ),
// // // // // // // // // //       ),
// // // // // // // // // //     );
// // // // // // // // // //   }
// // // // // // // // // // }

// // // // // // // // // // class MissionCard extends StatelessWidget {
// // // // // // // // // //   final Mission mission;
// // // // // // // // // //   final VoidCallback onTap;

// // // // // // // // // //   const MissionCard({
// // // // // // // // // //     required this.mission,
// // // // // // // // // //     required this.onTap,
// // // // // // // // // //   });

// // // // // // // // // //   @override
// // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // //     return Card(
// // // // // // // // // //       child: ListTile(
// // // // // // // // // //         leading: CircleAvatar(
// // // // // // // // // //           backgroundImage: NetworkImage(mission.userImage ?? ''),
// // // // // // // // // //         ),
// // // // // // // // // //         title: Text(mission.userName ?? 'Unknown'),
// // // // // // // // // //         subtitle: Text(mission.userEmail ?? 'Unknown'),
// // // // // // // // // //         trailing: Text(mission.state),
// // // // // // // // // //         onTap: onTap,
// // // // // // // // // //       ),
// // // // // // // // // //     );
// // // // // // // // // //   }
// // // // // // // // // // }

// // // // // // // // // // class MissionDetailScreen extends StatelessWidget {
// // // // // // // // // //   final Mission mission;

// // // // // // // // // //   const MissionDetailScreen({required this.mission});

// // // // // // // // // //   @override
// // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // //     return Scaffold(
// // // // // // // // // //       appBar: AppBar(
// // // // // // // // // //         title: Text('Mission Details'),
// // // // // // // // // //       ),
// // // // // // // // // //       body: Padding(
// // // // // // // // // //         padding: const EdgeInsets.all(16.0),
// // // // // // // // // //         child: Column(
// // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // //           children: [
// // // // // // // // // //             CircleAvatar(
// // // // // // // // // //               radius: 50,
// // // // // // // // // //               backgroundImage: NetworkImage(mission.userImage ?? ''),
// // // // // // // // // //             ),
// // // // // // // // // //             SizedBox(height: 16),
// // // // // // // // // //             Text('Name: ${mission.userName}', style: TextStyle(fontSize: 18)),
// // // // // // // // // //             Text('Email: ${mission.userEmail}', style: TextStyle(fontSize: 16)),
// // // // // // // // // //             Text('Mission: ${mission.name}', style: TextStyle(fontSize: 16)),
// // // // // // // // // //             Text('State: ${mission.state}', style: TextStyle(fontSize: 16)),
// // // // // // // // // //             if (mission.state == 'Pending') ...[
// // // // // // // // // //               TextField(
// // // // // // // // // //                 decoration: InputDecoration(labelText: 'Add Notes'),
// // // // // // // // // //               ),
// // // // // // // // // //               ElevatedButton(
// // // // // // // // // //                 onPressed: () {},
// // // // // // // // // //                 child: Text('Send'),
// // // // // // // // // //               ),
// // // // // // // // // //             ] else if (mission.state == 'Scheduled') ...[
// // // // // // // // // //               TextField(
// // // // // // // // // //                 decoration: InputDecoration(labelText: 'Price'),
// // // // // // // // // //               ),
// // // // // // // // // //               ElevatedButton(
// // // // // // // // // //                 onPressed: () {},
// // // // // // // // // //                 child: Text('Mark as Completed'),
// // // // // // // // // //               ),
// // // // // // // // // //             ] else ...[
// // // // // // // // // //               Text('This mission is completed.', style: TextStyle(color: Colors.green)),
// // // // // // // // // //             ],
// // // // // // // // // //           ],
// // // // // // // // // //         ),
// // // // // // // // // //       ),
// // // // // // // // // //     );
// // // // // // // // // //   }
// // // // // // // // // // }
// // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // import 'package:http/http.dart' as http;
// // // // // // // // // import 'dart:convert';

// // // // // // // // // class Mission {
// // // // // // // // //   final String id;
// // // // // // // // //   final String name;
// // // // // // // // //   final String state;
// // // // // // // // //   final String userId;
// // // // // // // // //   final String categoryId;
// // // // // // // // //   final String? location;
// // // // // // // // //   final String? grade;
// // // // // // // // //   final String? userName;
// // // // // // // // //   final String? userEmail;
// // // // // // // // //   final String? userImage;

// // // // // // // // //   Mission({
// // // // // // // // //     required this.id,
// // // // // // // // //     required this.name,
// // // // // // // // //     required this.state,
// // // // // // // // //     required this.userId,
// // // // // // // // //     required this.categoryId,
// // // // // // // // //     this.location,
// // // // // // // // //     this.grade,
// // // // // // // // //     this.userName,
// // // // // // // // //     this.userEmail,
// // // // // // // // //     this.userImage,
// // // // // // // // //   });

// // // // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // // // //     return Mission(
// // // // // // // // //       id: json['id'] ?? '',
// // // // // // // // //       name: json['name'] ?? '',
// // // // // // // // //       state: json['state'].toString(), // Convert enum to string
// // // // // // // // //       userId: json['userId'] ?? '',
// // // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // // //       location: json['location'],
// // // // // // // // //       grade: json['grade'],
// // // // // // // // //       userName: json['userName'],
// // // // // // // // //       userEmail: json['userEmail'],
// // // // // // // // //       userImage: json['userImage'],
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // // class MissionsScreen extends StatefulWidget {
// // // // // // // // //   final String categoryId;

// // // // // // // // //   const MissionsScreen({Key? key, required this.categoryId}) : super(key: key);

// // // // // // // // //   @override
// // // // // // // // //   _MissionsScreenState createState() => _MissionsScreenState();
// // // // // // // // // }

// // // // // // // // // class _MissionsScreenState extends State<MissionsScreen> {
// // // // // // // // //   String filter = 'All';
// // // // // // // // //   List<Mission> missions = [];
// // // // // // // // //   final String backendUrl = 'https://192.168.0.109:7127/api/Mission/Filter';

// // // // // // // // //   @override
// // // // // // // // //   void initState() {
// // // // // // // // //     super.initState();
// // // // // // // // //     fetchMissions();
// // // // // // // // //   }

// // // // // // // // //   Future<void> fetchMissions() async {
// // // // // // // // //     String url = '$backendUrl?categoryId=${widget.categoryId}';
// // // // // // // // //     if (filter != 'All') {
// // // // // // // // //       int state = getMissionState(filter);
// // // // // // // // //       url += '&state=$state';
// // // // // // // // //     }

// // // // // // // // //     try {
// // // // // // // // //       final response = await http.get(Uri.parse(url));

// // // // // // // // //       if (response.statusCode == 200) {
// // // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // // //         List<Mission> missionsList = data.map((json) => Mission.fromJson(json)).toList();
// // // // // // // // //         setState(() {
// // // // // // // // //           missions = missionsList;
// // // // // // // // //         });
// // // // // // // // //       } else {
// // // // // // // // //         throw Exception('Failed to load missions');
// // // // // // // // //       }
// // // // // // // // //     } catch (e) {
// // // // // // // // //       print('Error fetching missions: $e');
// // // // // // // // //     }
// // // // // // // // //   }

// // // // // // // // //   int getMissionState(String state) {
// // // // // // // // //     switch (state) {
// // // // // // // // //       case 'Pending':
// // // // // // // // //         return 0;
// // // // // // // // //       case 'Scheduled':
// // // // // // // // //         return 1;
// // // // // // // // //       case 'Completed':
// // // // // // // // //         return 2;
// // // // // // // // //       case 'Cancelled':
// // // // // // // // //         return 3;
// // // // // // // // //       default:
// // // // // // // // //         return 0;
// // // // // // // // //     }
// // // // // // // // //   }

// // // // // // // // //   void updateFilter(String newFilter) {
// // // // // // // // //     setState(() {
// // // // // // // // //       filter = newFilter;
// // // // // // // // //     });
// // // // // // // // //     fetchMissions();
// // // // // // // // //   }

// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Scaffold(
// // // // // // // // //       appBar: AppBar(
// // // // // // // // //         title: Text('Missions'),
// // // // // // // // //       ),
// // // // // // // // //       body: Column(
// // // // // // // // //         children: [
// // // // // // // // //           // Filter bar
// // // // // // // // //           Row(
// // // // // // // // //             mainAxisAlignment: MainAxisAlignment.spaceAround,
// // // // // // // // //             children: [
// // // // // // // // //               for (var state in ['All', 'Pending', 'Scheduled', 'Completed', 'Cancelled'])
// // // // // // // // //                 FilterButton(
// // // // // // // // //                   label: state,
// // // // // // // // //                   isSelected: filter == state,
// // // // // // // // //                   onTap: () => updateFilter(state),
// // // // // // // // //                 ),
// // // // // // // // //             ],
// // // // // // // // //           ),
// // // // // // // // //           // Missions list
// // // // // // // // //           Expanded(
// // // // // // // // //             child: ListView.builder(
// // // // // // // // //               itemCount: missions.length,
// // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // //                 final mission = missions[index];
// // // // // // // // //                 return MissionCard(
// // // // // // // // //                   mission: mission,
// // // // // // // // //                   onTap: () {
// // // // // // // // //                     Navigator.push(
// // // // // // // // //                       context,
// // // // // // // // //                       MaterialPageRoute(
// // // // // // // // //                         builder: (context) => MissionDetailScreen(mission: mission),
// // // // // // // // //                       ),
// // // // // // // // //                     );
// // // // // // // // //                   },
// // // // // // // // //                 );
// // // // // // // // //               },
// // // // // // // // //             ),
// // // // // // // // //           ),
// // // // // // // // //         ],
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // // class FilterButton extends StatelessWidget {
// // // // // // // // //   final String label;
// // // // // // // // //   final bool isSelected;
// // // // // // // // //   final VoidCallback onTap;

// // // // // // // // //   const FilterButton({
// // // // // // // // //     required this.label,
// // // // // // // // //     required this.isSelected,
// // // // // // // // //     required this.onTap,
// // // // // // // // //   });

// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return GestureDetector(
// // // // // // // // //       onTap: onTap,
// // // // // // // // //       child: Chip(
// // // // // // // // //         label: Text(label),
// // // // // // // // //         backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
// // // // // // // // //         labelStyle: TextStyle(
// // // // // // // // //           color: isSelected ? Colors.white : Colors.black,
// // // // // // // // //         ),
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // // class MissionCard extends StatelessWidget {
// // // // // // // // //   final Mission mission;
// // // // // // // // //   final VoidCallback onTap;

// // // // // // // // //   const MissionCard({
// // // // // // // // //     required this.mission,
// // // // // // // // //     required this.onTap,
// // // // // // // // //   });

// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Card(
// // // // // // // // //       child: ListTile(
// // // // // // // // //         leading: CircleAvatar(
// // // // // // // // //           backgroundImage: NetworkImage(mission.userImage ?? ''),
// // // // // // // // //         ),
// // // // // // // // //         title: Text(mission.userName ?? 'Unknown'),
// // // // // // // // //         subtitle: Text(mission.userEmail ?? 'Unknown'),
// // // // // // // // //         trailing: Text(mission.state),
// // // // // // // // //         onTap: onTap,
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // // class MissionDetailScreen extends StatelessWidget {
// // // // // // // // //   final Mission mission;

// // // // // // // // //   const MissionDetailScreen({required this.mission});

// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Scaffold(
// // // // // // // // //       appBar: AppBar(
// // // // // // // // //         title: Text('Mission Details'),
// // // // // // // // //       ),
// // // // // // // // //       body: Padding(
// // // // // // // // //         padding: const EdgeInsets.all(16.0),
// // // // // // // // //         child: Column(
// // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // //           children: [
// // // // // // // // //             CircleAvatar(
// // // // // // // // //               radius: 50,
// // // // // // // // //               backgroundImage: NetworkImage(mission.userImage ?? ''),
// // // // // // // // //             ),
// // // // // // // // //             SizedBox(height: 16),
// // // // // // // // //             Text('Name: ${mission.userName}', style: TextStyle(fontSize: 18)),
// // // // // // // // //             Text('Email: ${mission.userEmail}', style: TextStyle(fontSize: 16)),
// // // // // // // // //             Text('Mission: ${mission.name}', style: TextStyle(fontSize: 16)),
// // // // // // // // //             Text('State: ${mission.state}', style: TextStyle(fontSize: 16)),
// // // // // // // // //             if (mission.state == 'Pending') ...[
// // // // // // // // //               TextField(
// // // // // // // // //                 decoration: InputDecoration(labelText: 'Add Notes'),
// // // // // // // // //               ),
// // // // // // // // //               ElevatedButton(
// // // // // // // // //                 onPressed: () {},
// // // // // // // // //                 child: Text('Send'),
// // // // // // // // //               ),
// // // // // // // // //             ] else if (mission.state == 'Scheduled') ...[
// // // // // // // // //               TextField(
// // // // // // // // //                 decoration: InputDecoration(labelText: 'Price'),
// // // // // // // // //               ),
// // // // // // // // //               ElevatedButton(
// // // // // // // // //                 onPressed: () {},
// // // // // // // // //                 child: Text('Mark as Completed'),
// // // // // // // // //               ),
// // // // // // // // //             ] else ...[
// // // // // // // // //               Text('This mission is completed.', style: TextStyle(color: Colors.green)),
// // // // // // // // //             ],
// // // // // // // // //           ],
// // // // // // // // //         ),
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }
// // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // import 'package:http/http.dart' as http;
// // // // // // // // import 'dart:convert';

// // // // // // // // class Mission {
// // // // // // // //   final String id;
// // // // // // // //   final String name;
// // // // // // // //   final String state;
// // // // // // // //   final String userId;
// // // // // // // //   final String categoryId;
// // // // // // // //   final String? location;
// // // // // // // //   final String? grade;
// // // // // // // //   final String? userName;
// // // // // // // //   final String? userEmail;
// // // // // // // //   final String? userImage;

// // // // // // // //   Mission({
// // // // // // // //     required this.id,
// // // // // // // //     required this.name,
// // // // // // // //     required this.state,
// // // // // // // //     required this.userId,
// // // // // // // //     required this.categoryId,
// // // // // // // //     this.location,
// // // // // // // //     this.grade,
// // // // // // // //     this.userName,
// // // // // // // //     this.userEmail,
// // // // // // // //     this.userImage,
// // // // // // // //   });

// // // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // // //     return Mission(
// // // // // // // //       id: json['id'] ?? '',
// // // // // // // //       name: json['name'] ?? '',
// // // // // // // //       state: json['state'].toString(), // Convert enum to string
// // // // // // // //       userId: json['userId'] ?? '',
// // // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // // //       location: json['location'],
// // // // // // // //       grade: json['grade'],
// // // // // // // //       userName: json['userName'],
// // // // // // // //       userEmail: json['userEmail'],
// // // // // // // //       userImage: json['userImage'],
// // // // // // // //     );
// // // // // // // //   }

// // // // // // // //   Mission copyWith({
// // // // // // // //     String? userName,
// // // // // // // //     String? userEmail,
// // // // // // // //     String? userImage,
// // // // // // // //   }) {
// // // // // // // //     return Mission(
// // // // // // // //       id: this.id,
// // // // // // // //       name: this.name,
// // // // // // // //       state: this.state,
// // // // // // // //       userId: this.userId,
// // // // // // // //       categoryId: this.categoryId,
// // // // // // // //       location: this.location,
// // // // // // // //       grade: this.grade,
// // // // // // // //       userName: userName ?? this.userName,
// // // // // // // //       userEmail: userEmail ?? this.userEmail,
// // // // // // // //       userImage: userImage ?? this.userImage,
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }

// // // // // // // // class MissionsScreen extends StatefulWidget {
// // // // // // // //   final String categoryId;

// // // // // // // //   const MissionsScreen({Key? key, required this.categoryId}) : super(key: key);

// // // // // // // //   @override
// // // // // // // //   _MissionsScreenState createState() => _MissionsScreenState();
// // // // // // // // }

// // // // // // // // class _MissionsScreenState extends State<MissionsScreen> {
// // // // // // // //   String filter = 'All';
// // // // // // // //   List<Mission> missions = [];
// // // // // // // //   final String backendUrl = 'https://192.168.0.109:7127/api/Mission/Filter';

// // // // // // // //   @override
// // // // // // // //   void initState() {
// // // // // // // //     super.initState();
// // // // // // // //     fetchMissions();
// // // // // // // //   }

// // // // // // // //   Future<void> fetchMissions() async {
// // // // // // // //     String url = '$backendUrl?categoryId=${widget.categoryId}';
// // // // // // // //     if (filter != 'All') {
// // // // // // // //       int state = getMissionState(filter);
// // // // // // // //       url += '&state=$state';
// // // // // // // //     }

// // // // // // // //     try {
// // // // // // // //       final response = await http.get(Uri.parse(url));

// // // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // // //         print(json.decode(response.body));
// // // // // // // //         List<Mission> missionsList = [];
// // // // // // // //         for (var missionJson in data) {
// // // // // // // //           Mission mission = Mission.fromJson(missionJson);
// // // // // // // //           mission = await fetchUserData(mission);
// // // // // // // //           missionsList.add(mission);
// // // // // // // //         }
// // // // // // // //         setState(() {
// // // // // // // //           missions = missionsList;
// // // // // // // //         });
// // // // // // // //       } else {
// // // // // // // //         throw Exception('Failed to load missions');
// // // // // // // //       }
// // // // // // // //     } catch (e) {
// // // // // // // //       print('Error fetching missions: $e');
// // // // // // // //     }
// // // // // // // //   }

// // // // // // // //   Future<Mission> fetchUserData(Mission mission) async {
// // // // // // // //     final String userUrl =
// // // // // // // //         'https://192.168.0.109:7127/api/users/${mission.userId}';

// // // // // // // //     try {
// // // // // // // //       final response = await http.get(Uri.parse(userUrl));
// // // // // // // //       print(json.decode(response.body));
// // // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // // //         final userJson = json.decode(response.body);
// // // // // // // //         return mission.copyWith(
// // // // // // // //           userName: userJson['userName'],
// // // // // // // //           userEmail: userJson['email'],
// // // // // // // //           userImage: userJson['image'],
// // // // // // // //         );
// // // // // // // //       } else {
// // // // // // // //         print('Failed to fetch user data for userId: ${mission.userId}');
// // // // // // // //       }
// // // // // // // //     } catch (e) {
// // // // // // // //       print('Error fetching user data: $e');
// // // // // // // //     }
// // // // // // // //     return mission;
// // // // // // // //   }

// // // // // // // //   int getMissionState(String state) {
// // // // // // // //     switch (state) {
// // // // // // // //       case 'Pending':
// // // // // // // //         return 0;
// // // // // // // //       case 'Scheduled':
// // // // // // // //         return 1;
// // // // // // // //       case 'Completed':
// // // // // // // //         return 2;
// // // // // // // //       case 'Cancelled':
// // // // // // // //         return 3;
// // // // // // // //       default:
// // // // // // // //         return 0;
// // // // // // // //     }
// // // // // // // //   }

// // // // // // // //   void updateFilter(String newFilter) {
// // // // // // // //     setState(() {
// // // // // // // //       filter = newFilter;
// // // // // // // //     });
// // // // // // // //     fetchMissions();
// // // // // // // //   }

// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return Scaffold(
// // // // // // // //       appBar: AppBar(
// // // // // // // //         title: Text('Missions'),
// // // // // // // //       ),
// // // // // // // //       body: Column(
// // // // // // // //         children: [
// // // // // // // //           // Filter bar
// // // // // // // //           SingleChildScrollView(
// // // // // // // //             scrollDirection: Axis.horizontal,
// // // // // // // //             child: Row(
// // // // // // // //               mainAxisAlignment: MainAxisAlignment.spaceAround,
// // // // // // // //               children: [
// // // // // // // //                 for (var state in [
// // // // // // // //                   'All',
// // // // // // // //                   'Pending',
// // // // // // // //                   'Scheduled',
// // // // // // // //                   'Completed',
// // // // // // // //                   'Cancelled'
// // // // // // // //                 ])
// // // // // // // //                   FilterButton(
// // // // // // // //                     label: state,
// // // // // // // //                     isSelected: filter == state,
// // // // // // // //                     onTap: () => updateFilter(state),
// // // // // // // //                   ),
// // // // // // // //               ],
// // // // // // // //             ),
// // // // // // // //           ),
// // // // // // // //           // Missions list
// // // // // // // //           Expanded(
// // // // // // // //             child: ListView.builder(
// // // // // // // //               itemCount: missions.length,
// // // // // // // //               itemBuilder: (context, index) {
// // // // // // // //                 final mission = missions[index];
// // // // // // // //                 return MissionCard(
// // // // // // // //                   mission: mission,
// // // // // // // //                   onTap: () {
// // // // // // // //                     Navigator.push(
// // // // // // // //                       context,
// // // // // // // //                       MaterialPageRoute(
// // // // // // // //                         builder: (context) =>
// // // // // // // //                             MissionDetailScreen(mission: mission),
// // // // // // // //                       ),
// // // // // // // //                     );
// // // // // // // //                   },
// // // // // // // //                 );
// // // // // // // //               },
// // // // // // // //             ),
// // // // // // // //           ),
// // // // // // // //         ],
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }

// // // // // // // // class FilterButton extends StatelessWidget {
// // // // // // // //   final String label;
// // // // // // // //   final bool isSelected;
// // // // // // // //   final VoidCallback onTap;

// // // // // // // //   const FilterButton({
// // // // // // // //     required this.label,
// // // // // // // //     required this.isSelected,
// // // // // // // //     required this.onTap,
// // // // // // // //   });

// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return GestureDetector(
// // // // // // // //       onTap: onTap,
// // // // // // // //       child: Chip(
// // // // // // // //         label: Text(label),
// // // // // // // //         backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
// // // // // // // //         labelStyle: TextStyle(
// // // // // // // //           color: isSelected ? Colors.white : Colors.black,
// // // // // // // //         ),
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }

// // // // // // // // class MissionCard extends StatelessWidget {
// // // // // // // //   final Mission mission;
// // // // // // // //   final VoidCallback onTap;

// // // // // // // //   const MissionCard({
// // // // // // // //     required this.mission,
// // // // // // // //     required this.onTap,
// // // // // // // //   });

// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return Card(
// // // // // // // //       child: ListTile(
// // // // // // // //         leading: CircleAvatar(
// // // // // // // //           backgroundImage: NetworkImage(mission.userImage ?? ''),
// // // // // // // //         ),
// // // // // // // //         title: Text(mission.userName ?? 'Unknown'),
// // // // // // // //         subtitle: Text(mission.userEmail ?? 'Unknown'),
// // // // // // // //         trailing: Text(mission.state),
// // // // // // // //         onTap: onTap,
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }

// // // // // // // // class MissionDetailScreen extends StatelessWidget {
// // // // // // // //   final Mission mission;

// // // // // // // //   const MissionDetailScreen({required this.mission});

// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return Scaffold(
// // // // // // // //       appBar: AppBar(
// // // // // // // //         title: Text('Mission Details'),
// // // // // // // //       ),
// // // // // // // //       body: Padding(
// // // // // // // //         padding: const EdgeInsets.all(16.0),
// // // // // // // //         child: Column(
// // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // //           children: [
// // // // // // // //             CircleAvatar(
// // // // // // // //               radius: 50,
// // // // // // // //               backgroundImage: NetworkImage(mission.userImage ?? ''),
// // // // // // // //             ),
// // // // // // // //             SizedBox(height: 16),
// // // // // // // //             Text('Name: ${mission.userName}', style: TextStyle(fontSize: 18)),
// // // // // // // //             Text('Email: ${mission.userEmail}', style: TextStyle(fontSize: 16)),
// // // // // // // //             Text('Mission: ${mission.name}', style: TextStyle(fontSize: 16)),
// // // // // // // //             Text('State: ${mission.state}', style: TextStyle(fontSize: 16)),
// // // // // // // //             if (mission.state == 'Pending') ...[
// // // // // // // //               TextField(
// // // // // // // //                 decoration: InputDecoration(labelText: 'Add Notes'),
// // // // // // // //               ),
// // // // // // // //               ElevatedButton(
// // // // // // // //                 onPressed: () {},
// // // // // // // //                 child: Text('Send'),
// // // // // // // //               ),
// // // // // // // //             ] else if (mission.state == 'Scheduled') ...[
// // // // // // // //               TextField(
// // // // // // // //                 decoration: InputDecoration(labelText: 'Price'),
// // // // // // // //               ),
// // // // // // // //               ElevatedButton(
// // // // // // // //                 onPressed: () {},
// // // // // // // //                 child: Text('Mark as Completed'),
// // // // // // // //               ),
// // // // // // // //             ] else ...[
// // // // // // // //               Text('This mission is completed.',
// // // // // // // //                   style: TextStyle(color: Colors.green)),
// // // // // // // //             ],
// // // // // // // //           ],
// // // // // // // //         ),
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }
// // // // // // // import 'package:flutter/material.dart';
// // // // // // // import 'package:http/http.dart' as http;
// // // // // // // import 'dart:convert';

// // // // // // // class Mission {
// // // // // // //   final String id;
// // // // // // //   final String name;
// // // // // // //   final String state;
// // // // // // //   final String userId;
// // // // // // //   final String categoryId;
// // // // // // //   final String? location;
// // // // // // //   final String? grade;
// // // // // // //   final String? userName;
// // // // // // //   final String? userEmail;
// // // // // // //   final String? userImage;

// // // // // // //   Mission({
// // // // // // //     required this.id,
// // // // // // //     required this.name,
// // // // // // //     required this.state,
// // // // // // //     required this.userId,
// // // // // // //     required this.categoryId,
// // // // // // //     this.location,
// // // // // // //     this.grade,
// // // // // // //     this.userName,
// // // // // // //     this.userEmail,
// // // // // // //     this.userImage,
// // // // // // //   });

// // // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // // //     return Mission(
// // // // // // //       id: json['id'] ?? '',
// // // // // // //       name: json['name'] ?? '',
// // // // // // //       state: json['state'].toString(), // Convert enum to string
// // // // // // //       userId: json['userId'] ?? '',
// // // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // // //       location: json['location'],
// // // // // // //       grade: json['grade'],
// // // // // // //       userName: json['userName'],
// // // // // // //       userEmail: json['Email'],
// // // // // // //       userImage: json['Image'],
// // // // // // //     );
// // // // // // //   }

// // // // // // //   Mission copyWith({
// // // // // // //     String? userName,
// // // // // // //     String? userEmail,
// // // // // // //     String? userImage,
// // // // // // //   }) {
// // // // // // //     return Mission(
// // // // // // //       id: this.id,
// // // // // // //       name: this.name,
// // // // // // //       state: this.state,
// // // // // // //       userId: this.userId,
// // // // // // //       categoryId: this.categoryId,
// // // // // // //       location: this.location,
// // // // // // //       grade: this.grade,
// // // // // // //       userName: userName ?? this.userName,
// // // // // // //       userEmail: userEmail ?? this.userEmail,
// // // // // // //       userImage: userImage ?? this.userImage,
// // // // // // //     );
// // // // // // //   }
// // // // // // // }

// // // // // // // class MissionsScreen extends StatefulWidget {
// // // // // // //   final String categoryId;

// // // // // // //   const MissionsScreen({Key? key, required this.categoryId}) : super(key: key);

// // // // // // //   @override
// // // // // // //   _MissionsScreenState createState() => _MissionsScreenState();
// // // // // // // }

// // // // // // // class _MissionsScreenState extends State<MissionsScreen> {
// // // // // // //   String filter = 'All';
// // // // // // //   List<Mission> missions = [];
// // // // // // //   final String backendUrl = 'https://192.168.0.109:7127/api/Mission/Filter';

// // // // // // //   @override
// // // // // // //   void initState() {
// // // // // // //     super.initState();
// // // // // // //     fetchMissions();
// // // // // // //   }

// // // // // // //   Future<void> fetchMissions() async {
// // // // // // //     String url = '$backendUrl?categoryId=${widget.categoryId}';
// // // // // // //     if (filter != 'All') {
// // // // // // //       int state = getMissionState(filter);
// // // // // // //       url += '&state=$state';
// // // // // // //     }

// // // // // // //     try {
// // // // // // //       final response = await http.get(Uri.parse(url));
// // // // // // // print(json.decode(response.body));
// // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {

// // // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // // //         List<Mission> missionsList = [];
// // // // // // //         for (var missionJson in data) {
// // // // // // //           Mission mission = Mission.fromJson(missionJson);
// // // // // // //           mission = await fetchUserData(mission);
// // // // // // //           missionsList.add(mission);
// // // // // // //         }
// // // // // // //         setState(() {
// // // // // // //           missions = missionsList;
// // // // // // //         });
// // // // // // //       } else {
// // // // // // //         throw Exception('Failed to load missions');
// // // // // // //       }
// // // // // // //     } catch (e) {
// // // // // // //       print('Error fetching missions: $e');
// // // // // // //     }
// // // // // // //   }

// // // // // // //   Future<Mission> fetchUserData(Mission mission) async {
// // // // // // //     final String userUrl =
// // // // // // //         'https://192.168.0.109:7127/api/users/${mission.userId}';
// // // // // // //     try {
// // // // // // //       final response = await http.get(Uri.parse(userUrl));
// // // // // // //       print(json.decode(response.body));
// // // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // // //         final userJson = json.decode(response.body);
// // // // // // //         return mission.copyWith(
// // // // // // //           userName: userJson['userName'],
// // // // // // //           userEmail: userJson['email'],
// // // // // // //           userImage: userJson['image'],
// // // // // // //         );
// // // // // // //       } else {
// // // // // // //         // print('Failed to fetch user data for userId: ${mission.userId}');
// // // // // // //       }
// // // // // // //     } catch (e) {
// // // // // // //       print('Error fetching user data: $e');
// // // // // // //     }
// // // // // // //     return mission;
// // // // // // //   }

// // // // // // //   int getMissionState(String state) {
// // // // // // //     switch (state) {
// // // // // // //       case 'Pending':
// // // // // // //         return 0;
// // // // // // //       case 'Scheduled':
// // // // // // //         return 1;
// // // // // // //       case 'Completed':
// // // // // // //         return 2;
// // // // // // //       case 'Cancelled':
// // // // // // //         return 3;
// // // // // // //       default:
// // // // // // //         return 0;
// // // // // // //     }
// // // // // // //   }

// // // // // // //   void updateFilter(String newFilter) {
// // // // // // //     setState(() {
// // // // // // //       filter = newFilter;
// // // // // // //     });
// // // // // // //     fetchMissions();
// // // // // // //   }

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return Scaffold(
// // // // // // //       appBar: AppBar(
// // // // // // //         title: Text('Missions'),
// // // // // // //       ),
// // // // // // //       body: Column(
// // // // // // //         children: [
// // // // // // //           // Filter bar
// // // // // // //           SingleChildScrollView(
// // // // // // //             scrollDirection: Axis.horizontal,
// // // // // // //             child: Row(
// // // // // // //               mainAxisAlignment: MainAxisAlignment.spaceAround,
// // // // // // //               children: [
// // // // // // //                 for (var state in [
// // // // // // //                   'All',
// // // // // // //                   'Pending',
// // // // // // //                   'Scheduled',
// // // // // // //                   'Completed',
// // // // // // //                   'Cancelled'
// // // // // // //                 ])
// // // // // // //                   FilterButton(
// // // // // // //                     label: state,
// // // // // // //                     isSelected: filter == state,
// // // // // // //                     onTap: () => updateFilter(state),
// // // // // // //                   ),
// // // // // // //               ],
// // // // // // //             ),
// // // // // // //           ),
// // // // // // //           // Missions list
// // // // // // //           Expanded(
// // // // // // //             child: ListView.builder(
// // // // // // //               itemCount: missions.length,
// // // // // // //               itemBuilder: (context, index) {
// // // // // // //                 final mission = missions[index];
// // // // // // //                 return MissionCard(
// // // // // // //                   mission: mission,
// // // // // // //                   onTap: () {
// // // // // // //                     Navigator.push(
// // // // // // //                       context,
// // // // // // //                       MaterialPageRoute(
// // // // // // //                         builder: (context) =>
// // // // // // //                             MissionDetailScreen(mission: mission),
// // // // // // //                       ),
// // // // // // //                     );
// // // // // // //                   },
// // // // // // //                 );
// // // // // // //               },
// // // // // // //             ),
// // // // // // //           ),
// // // // // // //         ],
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }

// // // // // // // class FilterButton extends StatelessWidget {
// // // // // // //   final String label;
// // // // // // //   final bool isSelected;
// // // // // // //   final VoidCallback onTap;

// // // // // // //   const FilterButton({
// // // // // // //     required this.label,
// // // // // // //     required this.isSelected,
// // // // // // //     required this.onTap,
// // // // // // //   });

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return GestureDetector(
// // // // // // //       onTap: onTap,
// // // // // // //       child: Chip(
// // // // // // //         label: Text(label),
// // // // // // //         backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
// // // // // // //         labelStyle: TextStyle(
// // // // // // //           color: isSelected ? Colors.white : Colors.black,
// // // // // // //         ),
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
// // // // // // //   });

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return Card(
// // // // // // //       child: ListTile(
// // // // // // //         leading: mission.userImage != null && mission.userImage!.isNotEmpty
// // // // // // //             ? CircleAvatar(
// // // // // // //                 backgroundImage: NetworkImage(mission.userImage!),
// // // // // // //               )
// // // // // // //             : CircleAvatar(
// // // // // // //                 child: Icon(Icons.account_circle),
// // // // // // //               ),
// // // // // // //         title: Text(mission.userName ?? 'Unknown'),
// // // // // // //         subtitle: Text(mission.userEmail ?? 'Unknown'),
// // // // // // //         trailing: Text(mission.state),
// // // // // // //         onTap: onTap,
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }

// // // // // // // class MissionDetailScreen extends StatelessWidget {
// // // // // // //   final Mission mission;

// // // // // // //   const MissionDetailScreen({required this.mission});

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return Scaffold(
// // // // // // //       appBar: AppBar(
// // // // // // //         title: Text('Mission Details'),
// // // // // // //       ),
// // // // // // //       body: Padding(
// // // // // // //         padding: const EdgeInsets.all(16.0),
// // // // // // //         child: Column(
// // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //           children: [
// // // // // // //             mission.userImage != null && mission.userImage!.isNotEmpty
// // // // // // //                 ? CircleAvatar(
// // // // // // //                     radius: 50,
// // // // // // //                     backgroundImage: NetworkImage(mission.userImage!),
// // // // // // //                   )
// // // // // // //                 : CircleAvatar(
// // // // // // //                     radius: 50,
// // // // // // //                     child: Icon(Icons.account_circle, size: 50),
// // // // // // //                   ),
// // // // // // //             SizedBox(height: 16),
// // // // // // //             Text('Name: ${mission.userName}', style: TextStyle(fontSize: 18)),
// // // // // // //             Text('Email: ${mission.userEmail}', style: TextStyle(fontSize: 16)),
// // // // // // //             Text('Mission: ${mission.name}', style: TextStyle(fontSize: 16)),
// // // // // // //             Text('State: ${mission.state}', style: TextStyle(fontSize: 16)),
// // // // // // //             if (mission.state == 'Pending') ...[
// // // // // // //               TextField(
// // // // // // //                 decoration: InputDecoration(labelText: 'Add Notes'),
// // // // // // //               ),
// // // // // // //               ElevatedButton(
// // // // // // //                 onPressed: () {},
// // // // // // //                 child: Text('Send'),
// // // // // // //               ),
// // // // // // //             ] else if (mission.state == 'Scheduled') ...[
// // // // // // //               TextField(
// // // // // // //                 decoration: InputDecoration(labelText: 'Price'),
// // // // // // //               ),
// // // // // // //               ElevatedButton(
// // // // // // //                 onPressed: () {},
// // // // // // //                 child: Text('Mark as Completed'),
// // // // // // //               ),
// // // // // // //             ] else ...[
// // // // // // //               Text('This mission is completed.',
// // // // // // //                   style: TextStyle(color: Colors.green)),
// // // // // // //             ],
// // // // // // //           ],
// // // // // // //         ),
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:http/http.dart' as http;
// // // // // // import 'dart:convert';

// // // // // // class Mission {
// // // // // //   final String id;
// // // // // //   final String name;
// // // // // //   final String state;
// // // // // //   final String userId;
// // // // // //   final String categoryId;
// // // // // //   final String? location;
// // // // // //   final String? grade;
// // // // // //   final String? userName;
// // // // // //   final String? userEmail;
// // // // // //   final String? userImage;

// // // // // //   Mission({
// // // // // //     required this.id,
// // // // // //     required this.name,
// // // // // //     required this.state,
// // // // // //     required this.userId,
// // // // // //     required this.categoryId,
// // // // // //     this.location,
// // // // // //     this.grade,
// // // // // //     this.userName,
// // // // // //     this.userEmail,
// // // // // //     this.userImage,
// // // // // //   });

// // // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // // //     return Mission(
// // // // // //       id: json['id'] ?? '',
// // // // // //       name: json['name'] ?? '',
// // // // // //       state: json['state'].toString(), // Convert enum to string
// // // // // //       userId: json['userId'] ?? '',
// // // // // //       categoryId: json['categoryId'] ?? '',
// // // // // //       location: json['location'],
// // // // // //       grade: json['grade'],
// // // // // //       userName: json['userName'],
// // // // // //       userEmail: json['userEmail'],
// // // // // //       userImage: json['userImage'],
// // // // // //     );
// // // // // //   }

// // // // // //   Mission copyWith({
// // // // // //     String? userName,
// // // // // //     String? userEmail,
// // // // // //     String? userImage,
// // // // // //   }) {
// // // // // //     return Mission(
// // // // // //       id: this.id,
// // // // // //       name: this.name,
// // // // // //       state: this.state,
// // // // // //       userId: this.userId,
// // // // // //       categoryId: this.categoryId,
// // // // // //       location: this.location,
// // // // // //       grade: this.grade,
// // // // // //       userName: userName ?? this.userName,
// // // // // //       userEmail: userEmail ?? this.userEmail,
// // // // // //       userImage: userImage ?? this.userImage,
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // class MissionsScreen extends StatefulWidget {
// // // // // //   final String categoryId;

// // // // // //   const MissionsScreen({Key? key, required this.categoryId}) : super(key: key);

// // // // // //   @override
// // // // // //   _MissionsScreenState createState() => _MissionsScreenState();
// // // // // // }

// // // // // // class _MissionsScreenState extends State<MissionsScreen> {
// // // // // //   String filter = 'All';
// // // // // //   List<Mission> missions = [];
// // // // // //   final String backendUrl = 'https://192.168.0.109:7127/api/Mission/Filter';

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     fetchMissions();
// // // // // //   }

// // // // // //   Future<void> fetchMissions() async {
// // // // // //     String url = '$backendUrl?categoryId=${widget.categoryId}';
// // // // // //     if (filter != 'All') {
// // // // // //       int state = getMissionState(filter);
// // // // // //       url += '&state=$state';
// // // // // //     }

// // // // // //     try {
// // // // // //       final response = await http.get(Uri.parse(url));

// // // // // //       if (response.statusCode == 200  || response.statusCode == 201) {
// // // // // //         final List<dynamic> data = json.decode(response.body);
// // // // // //         print(json.decode(response.body));
// // // // // //         List<Mission> missionsList = [];
// // // // // //         for (var missionJson in data) {
// // // // // //           Mission mission = Mission.fromJson(missionJson);
// // // // // //           mission = await fetchUserData(mission);
// // // // // //           missionsList.add(mission);
// // // // // //         }
// // // // // //         setState(() {
// // // // // //           missions = missionsList;
// // // // // //         });
// // // // // //       } else {
// // // // // //         throw Exception('Failed to load missions');
// // // // // //       }
// // // // // //     } catch (e) {
// // // // // //       print('Error fetching missions: $e');
// // // // // //     }
// // // // // //   }

// // // // // //   Future<Mission> fetchUserData(Mission mission) async {
// // // // // //     final String userUrl = 'https://192.168.0.109:7127/api/User/${mission.userId}';
// // // // // //     try {
// // // // // //       final response = await http.get(Uri.parse(userUrl));
// // // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // // //         final userJson = json.decode(response.body);
// // // // // //         print(json.decode(response.body));
// // // // // //         return mission.copyWith(
// // // // // //           userName: userJson['userName'],
// // // // // //           userEmail: userJson['email'],
// // // // // //           userImage: userJson['image'],
// // // // // //         );
// // // // // //       } else {
// // // // // //         print('Failed to fetch user data for userId: ${mission.userId}');
// // // // // //       }
// // // // // //     } catch (e) {
// // // // // //       print('Error fetching user data: $e');
// // // // // //     }
// // // // // //     return mission;
// // // // // //   }

// // // // // //   int getMissionState(String state) {
// // // // // //     switch (state) {
// // // // // //       case 'Pending':
// // // // // //         return 0;
// // // // // //       case 'Scheduled':
// // // // // //         return 1;
// // // // // //       case 'Completed':
// // // // // //         return 2;
// // // // // //       case 'Cancelled':
// // // // // //         return 3;
// // // // // //       default:
// // // // // //         return 0;
// // // // // //     }
// // // // // //   }

// // // // // //   void updateFilter(String newFilter) {
// // // // // //     setState(() {
// // // // // //       filter = newFilter;
// // // // // //     });
// // // // // //     fetchMissions();
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       appBar: AppBar(
// // // // // //         title: Text('Missions'),
// // // // // //       ),
// // // // // //       body: Column(
// // // // // //         children: [
// // // // // //           // Filter bar
// // // // // //           SingleChildScrollView(
// // // // // //             scrollDirection: Axis.horizontal,
// // // // // //             child: Row(
// // // // // //               mainAxisAlignment: MainAxisAlignment.spaceAround,
// // // // // //               children: [
// // // // // //                 for (var state in [
// // // // // //                   'All',
// // // // // //                   'Pending',
// // // // // //                   'Scheduled',
// // // // // //                   'Completed',
// // // // // //                   'Cancelled'
// // // // // //                 ])
// // // // // //                   FilterButton(
// // // // // //                     label: state,
// // // // // //                     isSelected: filter == state,
// // // // // //                     onTap: () => updateFilter(state),
// // // // // //                   ),
// // // // // //               ],
// // // // // //             ),
// // // // // //           ),
// // // // // //           // Missions list
// // // // // //           Expanded(
// // // // // //             child: ListView.builder(
// // // // // //               itemCount: missions.length,
// // // // // //               itemBuilder: (context, index) {
// // // // // //                 final mission = missions[index];
// // // // // //                 return MissionCard(
// // // // // //                   mission: mission,
// // // // // //                   onTap: () {
// // // // // //                     Navigator.push(
// // // // // //                       context,
// // // // // //                       MaterialPageRoute(
// // // // // //                         builder: (context) =>
// // // // // //                             MissionDetailScreen(mission: mission),
// // // // // //                       ),
// // // // // //                     );
// // // // // //                   },
// // // // // //                 );
// // // // // //               },
// // // // // //             ),
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // class FilterButton extends StatelessWidget {
// // // // // //   final String label;
// // // // // //   final bool isSelected;
// // // // // //   final VoidCallback onTap;

// // // // // //   const FilterButton({
// // // // // //     required this.label,
// // // // // //     required this.isSelected,
// // // // // //     required this.onTap,
// // // // // //   });

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return GestureDetector(
// // // // // //       onTap: onTap,
// // // // // //       child: Chip(
// // // // // //         label: Text(label),
// // // // // //         backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
// // // // // //         labelStyle: TextStyle(
// // // // // //           color: isSelected ? Colors.white : Colors.black,
// // // // // //         ),
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
// // // // // //   });

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Card(
// // // // // //       child: ListTile(
// // // // // //         leading: mission.userImage != null && mission.userImage!.isNotEmpty
// // // // // //             ? CircleAvatar(
// // // // // //                 backgroundImage: NetworkImage(mission.userImage!),
// // // // // //               )
// // // // // //             : CircleAvatar(
// // // // // //                 child: Icon(Icons.account_circle),
// // // // // //               ),
// // // // // //         title: Text(mission.userName ?? 'Unknown'),
// // // // // //         subtitle: Text(mission.userEmail ?? 'Unknown'),
// // // // // //          //subtitle: Text(mission.state),
// // // // // //         onTap: onTap,
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // class MissionDetailScreen extends StatelessWidget {
// // // // // //   final Mission mission;

// // // // // //   const MissionDetailScreen({required this.mission});

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       appBar: AppBar(
// // // // // //         title: Text('Mission Details'),
// // // // // //       ),
// // // // // //       body: Padding(
// // // // // //         padding: const EdgeInsets.all(16.0),
// // // // // //         child: Column(
// // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //           children: [
// // // // // //             mission.userImage != null && mission.userImage!.isNotEmpty
// // // // // //                 ? CircleAvatar(
// // // // // //                     radius: 50,
// // // // // //                     backgroundImage: NetworkImage(mission.userImage!),
// // // // // //                   )
// // // // // //                 : CircleAvatar(
// // // // // //                     radius: 50,
// // // // // //                     child: Icon(Icons.account_circle, size: 50),
// // // // // //                   ),
// // // // // //             SizedBox(height: 16),
// // // // // //             Text('Name: ${mission.userName}', style: TextStyle(fontSize: 18)),
// // // // // //             Text('Email: ${mission.userEmail}', style: TextStyle(fontSize: 16)),
// // // // // //             Text('Mission: ${mission.name}', style: TextStyle(fontSize: 16)),
// // // // // //             Text('State: ${mission.state}', style: TextStyle(fontSize: 16)),
// // // // // //             if (mission.state == 'Pending') ...[
// // // // // //               TextField(
// // // // // //                 decoration: InputDecoration(labelText: 'Add Notes'),
// // // // // //               ),
// // // // // //               ElevatedButton(
// // // // // //                 onPressed: () {},
// // // // // //                 child: Text('Send'),
// // // // // //               ),
// // // // // //             ] else if (mission.state == 'Scheduled') ...[
// // // // // //               TextField(
// // // // // //                 decoration: InputDecoration(labelText: 'Price'),
// // // // // //               ),
// // // // // //               ElevatedButton(
// // // // // //                 onPressed: () {},
// // // // // //                 child: Text('Mark as Completed'),
// // // // // //               ),
// // // // // //             ] else ...[
// // // // // //               Text('This mission is completed.',
// // // // // //                   style: TextStyle(color: Colors.green)),
// // // // // //             ],
// // // // // //           ],
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:http/http.dart' as http;
// // // // // import 'dart:convert';

// // // // // class Mission {
// // // // //   final String id;
// // // // //   final String name;
// // // // //   final String state;
// // // // //   final String userId;
// // // // //   final String categoryId;
// // // // //   final String? location;
// // // // //   final String? grade;
// // // // //   final String? userName;
// // // // //   final String? userEmail;
// // // // //   final String? userImage;

// // // // //   Mission({
// // // // //     required this.id,
// // // // //     required this.name,
// // // // //     required this.state,
// // // // //     required this.userId,
// // // // //     required this.categoryId,
// // // // //     this.location,
// // // // //     this.grade,
// // // // //     this.userName,
// // // // //     this.userEmail,
// // // // //     this.userImage,
// // // // //   });

// // // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // // //     return Mission(
// // // // //       id: json['id'] ?? '',
// // // // //       name: json['name'] ?? '',
// // // // //       state: json['state'].toString(), // Convert enum to string
// // // // //       userId: json['userId'] ?? '',
// // // // //       categoryId: json['categoryId'] ?? '',
// // // // //       location: json['location'],
// // // // //       grade: json['grade'],
// // // // //       userName: json['userName'],
// // // // //       userEmail: json['userEmail'],
// // // // //       userImage: json['userImage'],
// // // // //     );
// // // // //   }

// // // // //   Mission copyWith({
// // // // //     String? userName,
// // // // //     String? userEmail,
// // // // //     String? userImage,
// // // // //   }) {
// // // // //     return Mission(
// // // // //       id: this.id,
// // // // //       name: this.name,
// // // // //       state: this.state,
// // // // //       userId: this.userId,
// // // // //       categoryId: this.categoryId,
// // // // //       location: this.location,
// // // // //       grade: this.grade,
// // // // //       userName: userName ?? this.userName,
// // // // //       userEmail: userEmail ?? this.userEmail,
// // // // //       userImage: userImage ?? this.userImage,
// // // // //     );
// // // // //   }
// // // // // }

// // // // // class MissionsScreen extends StatefulWidget {
// // // // //   final String categoryId;

// // // // //   const MissionsScreen({Key? key, required this.categoryId}) : super(key: key);

// // // // //   @override
// // // // //   _MissionsScreenState createState() => _MissionsScreenState();
// // // // // }

// // // // // class _MissionsScreenState extends State<MissionsScreen> {
// // // // //   String filter = 'All';
// // // // //   List<Mission> missions = [];
// // // // //   final String backendUrl = 'https://192.168.0.109:7127/api/Mission/Filter';

// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     fetchMissions();
// // // // //   }

// // // // //   Future<void> fetchMissions() async {
// // // // //     String url = '$backendUrl?categoryId=${widget.categoryId}';

// // // // //     try {
// // // // //       final response = await http.get(Uri.parse(url));

// // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // //         final List<dynamic> data = json.decode(response.body);
// // // // //         List<Mission> missionsList = [];
// // // // //         for (var missionJson in data) {
// // // // //           Mission mission = Mission.fromJson(missionJson);
// // // // //           mission = await fetchUserData(mission);
// // // // //           missionsList.add(mission);
// // // // //         }

// // // // //         // Apply filter to missions
// // // // //         if (filter != 'All') {
// // // // //           int state = getMissionState(filter);
// // // // //           missionsList = missionsList.where((mission) => int.parse(mission.state) == state).toList();
// // // // //         }

// // // // //         setState(() {
// // // // //           missions = missionsList;
// // // // //         });
// // // // //       } else {
// // // // //         throw Exception('Failed to load missions');
// // // // //       }
// // // // //     } catch (e) {
// // // // //       print('Error fetching missions: $e');
// // // // //     }
// // // // //   }

// // // // //   Future<Mission> fetchUserData(Mission mission) async {
// // // // //     final String userUrl = 'https://192.168.0.109:7127/api/User/${mission.userId}';
// // // // //     try {
// // // // //       final response = await http.get(Uri.parse(userUrl));
// // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // //         final userJson = json.decode(response.body);
// // // // //         return mission.copyWith(
// // // // //           userName: userJson['userName'],
// // // // //           userEmail: userJson['email'],
// // // // //           userImage: userJson['image'],
// // // // //         );
// // // // //       } else {
// // // // //         print('Failed to fetch user data for userId: ${mission.userId}');
// // // // //       }
// // // // //     } catch (e) {
// // // // //       print('Error fetching user data: $e');
// // // // //     }
// // // // //     return mission;
// // // // //   }

// // // // //   int getMissionState(String state) {
// // // // //     switch (state) {
// // // // //       case 'Pending':
// // // // //         return 0;
// // // // //       case 'Scheduled':
// // // // //         return 1;
// // // // //       case 'Completed':
// // // // //         return 2;
// // // // //       case 'Cancelled':
// // // // //         return 3;
// // // // //       default:
// // // // //         return 0;
// // // // //     }
// // // // //   }

// // // // //   void updateFilter(String newFilter) {
// // // // //     setState(() {
// // // // //       filter = newFilter;
// // // // //     });
// // // // //     fetchMissions();
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: Text('Missions'),
// // // // //       ),
// // // // //       body: Column(
// // // // //         children: [
// // // // //           // Filter bar
// // // // //           SingleChildScrollView(
// // // // //             scrollDirection: Axis.horizontal,
// // // // //             child: Row(
// // // // //               mainAxisAlignment: MainAxisAlignment.spaceAround,
// // // // //               children: [
// // // // //                 for (var state in ['All', 'Pending', 'Scheduled', 'Completed', 'Cancelled'])
// // // // //                   FilterButton(
// // // // //                     label: state,
// // // // //                     isSelected: filter == state,
// // // // //                     onTap: () => updateFilter(state),
// // // // //                   ),
// // // // //               ],
// // // // //             ),
// // // // //           ),
// // // // //           // Missions list
// // // // //           Expanded(
// // // // //             child: ListView.builder(
// // // // //               itemCount: missions.length,
// // // // //               itemBuilder: (context, index) {
// // // // //                 final mission = missions[index];
// // // // //                 return MissionCard(
// // // // //                   mission: mission,
// // // // //                   onTap: () {
// // // // //                     Navigator.push(
// // // // //                       context,
// // // // //                       MaterialPageRoute(
// // // // //                         builder: (context) => MissionDetailScreen(mission: mission),
// // // // //                       ),
// // // // //                     );
// // // // //                   },
// // // // //                 );
// // // // //               },
// // // // //             ),
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // // class FilterButton extends StatelessWidget {
// // // // //   final String label;
// // // // //   final bool isSelected;
// // // // //   final VoidCallback onTap;

// // // // //   const FilterButton({
// // // // //     required this.label,
// // // // //     required this.isSelected,
// // // // //     required this.onTap,
// // // // //   });

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return GestureDetector(
// // // // //       onTap: onTap,
// // // // //       child: Chip(
// // // // //         label: Text(label),
// // // // //         backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
// // // // //         labelStyle: TextStyle(
// // // // //           color: isSelected ? Colors.white : Colors.black,
// // // // //         ),
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
// // // // //   });

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Card(
// // // // //       child: ListTile(
// // // // //         leading: mission.userImage != null && mission.userImage!.isNotEmpty
// // // // //             ? CircleAvatar(
// // // // //                 backgroundImage: NetworkImage(mission.userImage!),
// // // // //               )
// // // // //             : CircleAvatar(
// // // // //                 child: Icon(Icons.account_circle),
// // // // //               ),
// // // // //         title: Text(mission.userName ?? 'Unknown'),
// // // // //         subtitle: Text(mission.userEmail ?? 'Unknown'),
// // // // //         trailing: Text(getStateText(mission.state)),
// // // // //         onTap: onTap,
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }
// // // // // class MissionDetailScreen extends StatefulWidget {
// // // // //   final Mission mission;
// // // // //   final String vendorProfileId;

// // // // //   const MissionDetailScreen({required this.mission, required this.vendorProfileId});

// // // // //   @override
// // // // //   _MissionDetailScreenState createState() => _MissionDetailScreenState();
// // // // // }

// // // // // class _MissionDetailScreenState extends State<MissionDetailScreen> {
// // // // //   final TextEditingController _noteController = TextEditingController();
// // // // //   final TextEditingController _priceController = TextEditingController();

// // // // //   Future<void> _submitOffer() async {
// // // // //     final url = 'https://192.168.0.109:7127//api/vendorOffer';
// // // // //     final body = json.encode({
// // // // //       'venderProfileId': widget.vendorProfileId,
// // // // //       'missionId': widget.mission.id,
// // // // //       'note': _noteController.text,
// // // // //       'price': double.parse(_priceController.text),
// // // // //       'state': false, // Assuming 'true' means accepted
// // // // //     });

// // // // //     try {
// // // // //       final response = await http.post(
// // // // //         Uri.parse(url),
// // // // //         headers: {
// // // // //           'Content-Type': 'application/json',
// // // // //         },
// // // // //         body: body,
// // // // //       );

// // // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // // //         // Successfully posted
// // // // //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Offer submitted successfully')));
// // // // //       } else {
// // // // //         // Error handling
// // // // //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to submit offer')));
// // // // //       }
// // // // //     } catch (e) {
// // // // //       // Exception handling
// // // // //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('An error occurred')));
// // // // //     }
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     final mission = widget.mission;

// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: Text('Mission Details'),
// // // // //       ),
// // // // //       body: Padding(
// // // // //         padding: const EdgeInsets.all(16.0),
// // // // //         child: Column(
// // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // //           children: [
// // // // //             mission.userImage != null && mission.userImage!.isNotEmpty
// // // // //                 ? CircleAvatar(
// // // // //                     radius: 50,
// // // // //                     backgroundImage: NetworkImage(mission.userImage!),
// // // // //                   )
// // // // //                 : CircleAvatar(
// // // // //                     radius: 50,
// // // // //                     child: Icon(Icons.account_circle, size: 50),
// // // // //                   ),
// // // // //             SizedBox(height: 16),
// // // // //             if (mission.userName != null) Text('Name: ${mission.userName}', style: TextStyle(fontSize: 18)),
// // // // //             if (mission.userEmail != null) Text('Email: ${mission.userEmail}', style: TextStyle(fontSize: 16)),
// // // // //             if (mission.name != null) Text('Mission: ${mission.name}', style: TextStyle(fontSize: 16)),
// // // // //             Text('State: ${getStateText(mission.state)}', style: TextStyle(fontSize: 16)),
// // // // //             TextField(
// // // // //               controller: _noteController,
// // // // //               decoration: InputDecoration(labelText: 'Add Note'),
// // // // //             ),
// // // // //             TextField(
// // // // //               controller: _priceController,
// // // // //               decoration: InputDecoration(labelText: 'Price'),
// // // // //               keyboardType: TextInputType.number,
// // // // //             ),
// // // // //             SizedBox(height: 16),
// // // // //             ElevatedButton(
// // // // //               onPressed: _submitOffer,
// // // // //               child: Text('Send'),
// // // // //             ),
// // // // //           ],
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // // String getStateText(String state) {
// // // // //   switch (state) {
// // // // //     case '0':
// // // // //       return 'Pending';
// // // // //     case '1':
// // // // //       return 'Scheduled';
// // // // //     case '2':
// // // // //       return 'Completed';
// // // // //     case '3':
// // // // //       return 'Cancelled';
// // // // //     default:
// // // // //       return 'Unknown';
// // // // //   }
// // // // // }
// // // // import 'package:flutter/material.dart';
// // // // import 'package:http/http.dart' as http;
// // // // import 'dart:convert';

// // // // class Mission {
// // // //   final String id;
// // // //   final String name;
// // // //   final String state;
// // // //   final String userId;
// // // //   final String categoryId;
// // // //   final String? location;
// // // //   final String? grade;
// // // //   final String? userName;
// // // //   final String? userEmail;
// // // //   final String? userImage;

// // // //   Mission({
// // // //     required this.id,
// // // //     required this.name,
// // // //     required this.state,
// // // //     required this.userId,
// // // //     required this.categoryId,
// // // //     this.location,
// // // //     this.grade,
// // // //     this.userName,
// // // //     this.userEmail,
// // // //     this.userImage,
// // // //   });

// // // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // // //     return Mission(
// // // //       id: json['id'] ?? '',
// // // //       name: json['name'] ?? '',
// // // //       state: json['state'].toString(), // Convert enum to string
// // // //       userId: json['userId'] ?? '',
// // // //       categoryId: json['categoryId'] ?? '',
// // // //       location: json['location'],
// // // //       grade: json['grade'],
// // // //       userName: json['userName'],
// // // //       userEmail: json['userEmail'],
// // // //       userImage: json['userImage'],
// // // //     );
// // // //   }

// // // //   Mission copyWith({
// // // //     String? userName,
// // // //     String? userEmail,
// // // //     String? userImage,
// // // //   }) {
// // // //     return Mission(
// // // //       id: this.id,
// // // //       name: this.name,
// // // //       state: this.state,
// // // //       userId: this.userId,
// // // //       categoryId: this.categoryId,
// // // //       location: this.location,
// // // //       grade: this.grade,
// // // //       userName: userName ?? this.userName,
// // // //       userEmail: userEmail ?? this.userEmail,
// // // //       userImage: userImage ?? this.userImage,
// // // //     );
// // // //   }
// // // // }

// // // // class MissionsScreen extends StatefulWidget {
// // // //   final String categoryId;
// // // //   final String vendorId; // Add vendorProfileId to the widget

// // // //   const MissionsScreen(
// // // //       {Key? key, required this.categoryId, required this.vendorId})
// // // //       : super(key: key);

// // // //   @override
// // // //   _MissionsScreenState createState() => _MissionsScreenState();
// // // // }

// // // // class _MissionsScreenState extends State<MissionsScreen> {
// // // //   String filter = 'All';
// // // //   List<Mission> missions = [];
// // // //   final String backendUrl = 'https://192.168.0.109:7127/api/Mission/Filter';

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     fetchMissions();
// // // //   }

// // // //   Future<void> fetchMissions() async {
// // // //     String url = '$backendUrl?categoryId=${widget.categoryId}';

// // // //     try {
// // // //       final response = await http.get(Uri.parse(url));

// // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // //         final List<dynamic> data = json.decode(response.body);
// // // //         List<Mission> missionsList = [];
// // // //         for (var missionJson in data) {
// // // //           Mission mission = Mission.fromJson(missionJson);
// // // //           mission = await fetchUserData(mission);
// // // //           missionsList.add(mission);
// // // //         }

// // // //         // Apply filter to missions
// // // //         if (filter != 'All') {
// // // //           int state = getMissionState(filter);
// // // //           missionsList = missionsList
// // // //               .where((mission) => int.parse(mission.state) == state)
// // // //               .toList();
// // // //         }

// // // //         setState(() {
// // // //           missions = missionsList;
// // // //         });
// // // //       } else {
// // // //         throw Exception('Failed to load missions');
// // // //       }
// // // //     } catch (e) {
// // // //       print('Error fetching missions: $e');
// // // //     }
// // // //   }

// // // //   Future<Mission> fetchUserData(Mission mission) async {
// // // //     final String userUrl =
// // // //         'https://192.168.0.109:7127/api/User/${mission.userId}';
// // // //     try {
// // // //       final response = await http.get(Uri.parse(userUrl));
// // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // //         final userJson = json.decode(response.body);
// // // //         return mission.copyWith(
// // // //           userName: userJson['userName'],
// // // //           userEmail: userJson['email'],
// // // //           userImage: userJson['image'],
// // // //         );
// // // //       } else {
// // // //         print('Failed to fetch user data for userId: ${mission.userId}');
// // // //       }
// // // //     } catch (e) {
// // // //       print('Error fetching user data: $e');
// // // //     }
// // // //     return mission;
// // // //   }

// // // //   int getMissionState(String state) {
// // // //     switch (state) {
// // // //       case 'Pending':
// // // //         return 0;
// // // //       case 'Scheduled':
// // // //         return 1;
// // // //       case 'Completed':
// // // //         return 2;
// // // //       case 'Cancelled':
// // // //         return 3;
// // // //       default:
// // // //         return 0;
// // // //     }
// // // //   }

// // // //   void updateFilter(String newFilter) {
// // // //     setState(() {
// // // //       filter = newFilter;
// // // //     });
// // // //     fetchMissions();
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: Text('Missions'),
// // // //       ),
// // // //       body: Column(
// // // //         children: [
// // // //           // Filter bar
// // // //           SingleChildScrollView(
// // // //             scrollDirection: Axis.horizontal,
// // // //             child: Row(
// // // //               mainAxisAlignment: MainAxisAlignment.spaceAround,
// // // //               children: [
// // // //                 for (var state in [
// // // //                   'All',
// // // //                   'Pending',
// // // //                   'Scheduled',
// // // //                   'Completed',
// // // //                   'Cancelled'
// // // //                 ])
// // // //                   FilterButton(
// // // //                     label: state,
// // // //                     isSelected: filter == state,
// // // //                     onTap: () => updateFilter(state),
// // // //                   ),
// // // //               ],
// // // //             ),
// // // //           ),
// // // //           // Missions list
// // // //           Expanded(
// // // //             child: ListView.builder(
// // // //               itemCount: missions.length,
// // // //               itemBuilder: (context, index) {
// // // //                 final mission = missions[index];
// // // //                 return MissionCard(
// // // //                   mission: mission,
// // // //                   onTap: () {
// // // //                     Navigator.push(
// // // //                       context,
// // // //                       MaterialPageRoute(
// // // //                         builder: (context) => MissionDetailScreen(
// // // //                             mission: mission,
// // // //                             vendorProfileId:
// // // //                                 widget.vendorId), // Pass vendorProfileId
// // // //                       ),
// // // //                     );
// // // //                   },
// // // //                 );
// // // //               },
// // // //             ),
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // class FilterButton extends StatelessWidget {
// // // //   final String label;
// // // //   final bool isSelected;
// // // //   final VoidCallback onTap;

// // // //   const FilterButton({
// // // //     required this.label,
// // // //     required this.isSelected,
// // // //     required this.onTap,
// // // //   });

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return GestureDetector(
// // // //       onTap: onTap,
// // // //       child: Chip(
// // // //         label: Text(label),
// // // //         backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
// // // //         labelStyle: TextStyle(
// // // //           color: isSelected ? Colors.white : Colors.black,
// // // //         ),
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
// // // //   });

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Card(
// // // //       child: ListTile(
// // // //         leading: mission.userImage != null && mission.userImage!.isNotEmpty
// // // //             ? CircleAvatar(
// // // //                 backgroundImage: NetworkImage(mission.userImage!),
// // // //               )
// // // //             : CircleAvatar(
// // // //                 child: Icon(Icons.account_circle),
// // // //               ),
// // // //         title: Text(mission.userName ?? 'Unknown'),
// // // //         subtitle: Text(mission.userEmail ?? 'Unknown'),
// // // //         trailing: Text(getStateText(mission.state)),
// // // //         onTap: onTap,
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // class MissionDetailScreen extends StatefulWidget {
// // // //   final Mission mission;
// // // //   final String vendorProfileId;

// // // //   const MissionDetailScreen(
// // // //       {required this.mission, required this.vendorProfileId});

// // // //   @override
// // // //   _MissionDetailScreenState createState() => _MissionDetailScreenState();
// // // // }

// // // // class _MissionDetailScreenState extends State<MissionDetailScreen> {
// // // //   final TextEditingController _noteController = TextEditingController();
// // // //   final TextEditingController _priceController = TextEditingController();

// // // //   Future<void> _submitOffer() async {
// // // //     final url = 'https://192.168.0.109:7127/api/VendorOffer';
// // // //     final body = json.encode({
// // // //       'venderProfileId': widget.vendorProfileId,
// // // //       'missionId': widget.mission.id,
// // // //       'note': _noteController.text,
// // // //       'price': double.parse(_priceController.text),
// // // //       'state': false, // Assuming 'false' means not accepte
// // // //     });
// // // //     print(widget.mission.id);

// // // //     try {
// // // //       final response = await http.post(
// // // //         Uri.parse(url),
// // // //         headers: {
// // // //           'Content-Type': 'application/json',
// // // //         },
// // // //         body: body,
// // // //       );

// // // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // // //         // Successfully posted
// // // //         ScaffoldMessenger.of(context).showSnackBar(
// // // //             SnackBar(content: Text('Offer submitted successfully')));
// // // //       } else {
// // // //         // Error handling
// // // //         final responseBody = json.decode(response.body);
// // // //         print({responseBody['message']});
// // // //         print('Failed to submit offer: ${responseBody['message']}');
// // // //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
// // // //             content:
// // // //                 Text('Failed to submit offer: ${responseBody['message']}')));
// // // //       }
// // // //     } catch (e) {
// // // //       // Exception handling
// // // //       ScaffoldMessenger.of(context)
// // // //           .showSnackBar(SnackBar(content: Text('An error occurred')));
// // // //     }
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final mission = widget.mission;

// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: Text('Mission Details'),
// // // //       ),
// // // //       body: Padding(
// // // //         padding: const EdgeInsets.all(16.0),
// // // //         child: SingleChildScrollView(
// // // //           child: Column(
// // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // //             children: [
// // // //               mission.userImage != null && mission.userImage!.isNotEmpty
// // // //                   ? CircleAvatar(
// // // //                       radius: 50,
// // // //                       backgroundImage: NetworkImage(mission.userImage!),
// // // //                     )
// // // //                   : CircleAvatar(
// // // //                       radius: 50,
// // // //                       child: Icon(Icons.account_circle, size: 50),
// // // //                     ),
// // // //               SizedBox(height: 16),
// // // //               if (mission.userName != null)
// // // //                 Text('Name: ${mission.userName}',
// // // //                     style: TextStyle(fontSize: 18)),
// // // //               if (mission.userEmail != null)
// // // //                 Text('Email: ${mission.userEmail}',
// // // //                     style: TextStyle(fontSize: 16)),
// // // //               if (mission.name != null)
// // // //                 Text('Mission: ${mission.name}',
// // // //                     style: TextStyle(fontSize: 16)),
// // // //               Text('State: ${getStateText(mission.state)}',
// // // //                   style: TextStyle(fontSize: 16)),
// // // //               if (mission.location != null)
// // // //                 Text('Location: ${mission.location}',
// // // //                     style: TextStyle(fontSize: 16)),
// // // //               if (mission.grade != null)
// // // //                 Text('Grade: ${mission.grade}', style: TextStyle(fontSize: 16)),
// // // //               TextField(
// // // //                 controller: _noteController,
// // // //                 decoration: InputDecoration(labelText: 'Add Note'),
// // // //               ),
// // // //               TextField(
// // // //                 controller: _priceController,
// // // //                 decoration: InputDecoration(labelText: 'Price'),
// // // //                 keyboardType: TextInputType.number,
// // // //               ),
// // // //               SizedBox(height: 16),
// // // //               ElevatedButton(
// // // //                 onPressed: _submitOffer,
// // // //                 child: Text('Send'),
// // // //               ),
// // // //             ],
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // String getStateText(String state) {
// // // //   switch (state) {
// // // //     case '0':
// // // //       return 'Pending';
// // // //     case '1':
// // // //       return 'Scheduled';
// // // //     case '2':
// // // //       return 'Completed';
// // // //     case '3':
// // // //       return 'Cancelled';
// // // //     default:
// // // //       return 'Unknown';
// // // //   }
// // // // }
// // // import 'package:flutter/material.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'dart:convert';

// // // class Mission {
// // //   final String id;
// // //   final String name;
// // //   final String state;
// // //   final String userId;
// // //   final String categoryId;
// // //   final String? location;
// // //   final String? grade;
// // //   final String? userName;
// // //   final String? userEmail;
// // //   final String? userImage;

// // //   Mission({
// // //     required this.id,
// // //     required this.name,
// // //     required this.state,
// // //     required this.userId,
// // //     required this.categoryId,
// // //     this.location,
// // //     this.grade,
// // //     this.userName,
// // //     this.userEmail,
// // //     this.userImage,
// // //   });

// // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // //     return Mission(
// // //       id: json['id'] ?? '',
// // //       name: json['name'] ?? '',
// // //       state: json['state'].toString(), // Convert enum to string
// // //       userId: json['userId'] ?? '',
// // //       categoryId: json['categoryId'] ?? '',
// // //       location: json['location'],
// // //       grade: json['grade'],
// // //       userName: json['userName'],
// // //       userEmail: json['userEmail'],
// // //       userImage: json['userImage'],
// // //     );
// // //   }

// // //   Mission copyWith({
// // //     String? userName,
// // //     String? userEmail,
// // //     String? userImage,
// // //   }) {
// // //     return Mission(
// // //       id: this.id,
// // //       name: this.name,
// // //       state: this.state,
// // //       userId: this.userId,
// // //       categoryId: this.categoryId,
// // //       location: this.location,
// // //       grade: this.grade,
// // //       userName: userName ?? this.userName,
// // //       userEmail: userEmail ?? this.userEmail,
// // //       userImage: userImage ?? this.userImage,
// // //     );
// // //   }
// // // }

// // // class MissionsScreen extends StatefulWidget {
// // //   final String categoryId;
// // //   final String vendorId; // Update to vendorId

// // //   const MissionsScreen({Key? key, required this.categoryId, required this.vendorId}) : super(key: key);

// // //   @override
// // //   _MissionsScreenState createState() => _MissionsScreenState();
// // // }

// // // class _MissionsScreenState extends State<MissionsScreen> {
// // //   String filter = 'All';
// // //   List<Mission> missions = [];
// // //   final String backendUrl = 'https://192.168.0.109:7127/api/Mission/Filter';

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     fetchMissions();
// // //   }

// // //   Future<void> fetchMissions() async {
// // //     String url = '$backendUrl?categoryId=${widget.categoryId}';

// // //     try {
// // //       final response = await http.get(Uri.parse(url));

// // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // //         final List<dynamic> data = json.decode(response.body);
// // //         List<Mission> missionsList = [];
// // //         for (var missionJson in data) {
// // //           Mission mission = Mission.fromJson(missionJson);
// // //           mission = await fetchUserData(mission);
// // //           missionsList.add(mission);
// // //         }

// // //         // Apply filter to missions
// // //         if (filter != 'All') {
// // //           int state = getMissionState(filter);
// // //           missionsList = missionsList.where((mission) => int.parse(mission.state) == state).toList();
// // //         }

// // //         setState(() {
// // //           missions = missionsList;
// // //         });
// // //       } else {
// // //         throw Exception('Failed to load missions');
// // //       }
// // //     } catch (e) {
// // //       print('Error fetching missions: $e');
// // //     }
// // //   }

// // //   Future<Mission> fetchUserData(Mission mission) async {
// // //     final String userUrl = 'https://192.168.0.109:7127/api/User/${mission.userId}';
// // //     try {
// // //       final response = await http.get(Uri.parse(userUrl));
// // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // //         final userJson = json.decode(response.body);
// // //         return mission.copyWith(
// // //           userName: userJson['userName'],
// // //           userEmail: userJson['email'],
// // //           userImage: userJson['image'],
// // //         );
// // //       } else {
// // //         print('Failed to fetch user data for userId: ${mission.userId}');
// // //       }
// // //     } catch (e) {
// // //       print('Error fetching user data: $e');
// // //     }
// // //     return mission;
// // //   }

// // //   int getMissionState(String state) {
// // //     switch (state) {
// // //       case 'Pending':
// // //         return 0;
// // //       case 'Scheduled':
// // //         return 1;
// // //       case 'Completed':
// // //         return 2;
// // //       case 'Cancelled':
// // //         return 3;
// // //       default:
// // //         return 0;
// // //     }
// // //   }

// // //   void updateFilter(String newFilter) {
// // //     setState(() {
// // //       filter = newFilter;
// // //     });
// // //     fetchMissions();
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Missions'),
// // //       ),
// // //       body: Column(
// // //         children: [
// // //           // Filter bar
// // //           SingleChildScrollView(
// // //             scrollDirection: Axis.horizontal,
// // //             child: Row(
// // //               mainAxisAlignment: MainAxisAlignment.spaceAround,
// // //               children: [
// // //                 for (var state in ['All', 'Pending', 'Scheduled', 'Completed', 'Cancelled'])
// // //                   FilterButton(
// // //                     label: state,
// // //                     isSelected: filter == state,
// // //                     onTap: () => updateFilter(state),
// // //                   ),
// // //               ],
// // //             ),
// // //           ),
// // //           // Missions list
// // //           Expanded(
// // //             child: ListView.builder(
// // //               itemCount: missions.length,
// // //               itemBuilder: (context, index) {
// // //                 final mission = missions[index];
// // //                 return MissionCard(
// // //                   mission: mission,
// // //                   onTap: () {
// // //                     Navigator.push(
// // //                       context,
// // //                       MaterialPageRoute(
// // //                         builder: (context) => MissionDetailScreen(mission: mission, vendorId: widget.vendorId), // Pass vendorId
// // //                       ),
// // //                     );
// // //                   },
// // //                 );
// // //               },
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }

// // // class FilterButton extends StatelessWidget {
// // //   final String label;
// // //   final bool isSelected;
// // //   final VoidCallback onTap;

// // //   const FilterButton({
// // //     required this.label,
// // //     required this.isSelected,
// // //     required this.onTap,
// // //   });

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return GestureDetector(
// // //       onTap: onTap,
// // //       child: Chip(
// // //         label: Text(label),
// // //         backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
// // //         labelStyle: TextStyle(
// // //           color: isSelected ? Colors.white : Colors.black,
// // //         ),
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
// // //   });

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Card(
// // //       child: ListTile(
// // //         leading: mission.userImage != null && mission.userImage!.isNotEmpty
// // //             ? CircleAvatar(
// // //                 backgroundImage: NetworkImage(mission.userImage!),
// // //               )
// // //             : CircleAvatar(
// // //                 child: Icon(Icons.account_circle),
// // //               ),
// // //         title: Text(mission.userName ?? 'Unknown'),
// // //         subtitle: Text(mission.userEmail ?? 'Unknown'),
// // //         trailing: Text(getStateText(mission.state)),
// // //         onTap: onTap,
// // //       ),
// // //     );
// // //   }
// // // }

// // // class MissionDetailScreen extends StatefulWidget {
// // //   final Mission mission;
// // //   final String vendorId;

// // //   const MissionDetailScreen({required this.mission, required this.vendorId});

// // //   @override
// // //   _MissionDetailScreenState createState() => _MissionDetailScreenState();
// // // }

// // // class _MissionDetailScreenState extends State<MissionDetailScreen> {
// // //   final TextEditingController _noteController = TextEditingController();
// // //   final TextEditingController _priceController = TextEditingController();

// // //   Future<void> _submitOffer() async {
// // //     final url = 'https://192.168.0.109:7127/api/VendorOffer';
// // //     final body = json.encode({
// // //       'venderProfileId': widget.vendorId, // Use vendorId here
// // //       'missionId': widget.mission.id,
// // //       'note': _noteController.text,
// // //       'price': double.parse(_priceController.text),
// // //       'state': false, // Assuming 'false' means not accepted
// // //     });

// // //     print('Submitting offer with missionId: ${widget.mission.id}');
// // //     print('Request body: $body');

// // //     try {
// // //       final response = await http.post(
// // //         Uri.parse(url),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //         },
// // //         body: body,
// // //       );

// // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // //         // Successfully posted
// // //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Offer submitted successfully')));
// // //       } else {
// // //         // Error handling
// // //         final responseBody = json.decode(response.body);
// // //         print('Failed to submit offer: ${responseBody}');
// // //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to submit offer: ${responseBody}')));
// // //       }
// // //     } catch (e) {
// // //       // Exception handling
// // //       print('Error: $e');
// // //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('An error occurred: $e')));
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final mission = widget.mission;

// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Mission Details'),
// // //       ),
// // //       body: Padding(
// // //         padding: const EdgeInsets.all(16.0),
// // //         child: SingleChildScrollView(
// // //           child: Column(
// // //             crossAxisAlignment: CrossAxisAlignment.start,
// // //             children: [
// // //               mission.userImage != null && mission.userImage!.isNotEmpty
// // //                   ? CircleAvatar(
// // //                       radius: 50,
// // //                       backgroundImage: NetworkImage(mission.userImage!),
// // //                     )
// // //                   : CircleAvatar(
// // //                       radius: 50,
// // //                       child: Icon(Icons.account_circle, size: 50),
// // //                     ),
// // //               SizedBox(height: 16),
// // //               if (mission.userName != null) Text('Name: ${mission.userName}', style: TextStyle(fontSize: 18)),
// // //               if (mission.userEmail != null) Text('Email: ${mission.userEmail}', style: TextStyle(fontSize: 16)),
// // //               if (mission.name != null) Text('Mission: ${mission.name}', style: TextStyle(fontSize: 16)),
// // //               Text('State: ${getStateText(mission.state)}', style: TextStyle(fontSize: 16)),
// // //               if (mission.location != null) Text('Location: ${mission.location}', style: TextStyle(fontSize: 16)),
// // //               if (mission.grade != null) Text('Grade: ${mission.grade}', style: TextStyle(fontSize: 16)),
// // //               TextField(
// // //                 controller: _noteController,
// // //                 decoration: InputDecoration(labelText: 'Add Note'),
// // //               ),
// // //               TextField(
// // //                 controller: _priceController,
// // //                 decoration: InputDecoration(labelText: 'Price'),
// // //                 keyboardType: TextInputType.number,
// // //               ),
// // //               SizedBox(height: 16),
// // //               ElevatedButton(
// // //                 onPressed: _submitOffer,
// // //                 child: Text('Send'),
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // String getStateText(String state) {
// // //   switch (state) {
// // //     case '0':
// // //       return 'Pending';
// // //     case '1':
// // //       return 'Scheduled';
// // //     case '2':
// // //       return 'Completed';
// // //     case '3':
// // //       return 'Cancelled';
// // //     default:
// // //       return 'Unknown';
// // //   }
// // // }
// // // import 'package:flutter/material.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'dart:convert';

// // // class Mission {
// // //   final String id;
// // //   final String name;
// // //   final String state;
// // //   final String userId;
// // //   final String categoryId;
// // //   final String? location;
// // //   final String? grade;
// // //   final String? userName;
// // //   final String? userEmail;
// // //   final String? userImage;

// // //   Mission({
// // //     required this.id,
// // //     required this.name,
// // //     required this.state,
// // //     required this.userId,
// // //     required this.categoryId,
// // //     this.location,
// // //     this.grade,
// // //     this.userName,
// // //     this.userEmail,
// // //     this.userImage,
// // //   });

// // //   factory Mission.fromJson(Map<String, dynamic> json) {
// // //     return Mission(
// // //       id: json['id'] ?? '',
// // //       name: json['name'] ?? '',
// // //       state: json['state'].toString(), // Convert enum to string
// // //       userId: json['userId'] ?? '',
// // //       categoryId: json['categoryId'] ?? '',
// // //       location: json['location'],
// // //       grade: json['grade'],
// // //       userName: json['userName'],
// // //       userEmail: json['userEmail'],
// // //       userImage: json['userImage'],
// // //     );
// // //   }

// // //   Mission copyWith({
// // //     String? userName,
// // //     String? userEmail,
// // //     String? userImage,
// // //   }) {
// // //     return Mission(
// // //       id: this.id,
// // //       name: this.name,
// // //       state: this.state,
// // //       userId: this.userId,
// // //       categoryId: this.categoryId,
// // //       location: this.location,
// // //       grade: this.grade,
// // //       userName: userName ?? this.userName,
// // //       userEmail: userEmail ?? this.userEmail,
// // //       userImage: userImage ?? this.userImage,
// // //     );
// // //   }
// // // }

// // // class MissionsScreen extends StatefulWidget {
// // //   final String categoryId;
// // //   final String vendorId; // Update to vendorId

// // //   const MissionsScreen({Key? key, required this.categoryId, required this.vendorId}) : super(key: key);

// // //   @override
// // //   _MissionsScreenState createState() => _MissionsScreenState();
// // // }

// // // class _MissionsScreenState extends State<MissionsScreen> {
// // //   String filter = 'All';
// // //   List<Mission> missions = [];
// // //   final String backendUrl = 'https://192.168.0.109:7127/api/Mission/Filter';

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     fetchMissions();
// // //   }

// // //   Future<void> fetchMissions() async {
// // //     String url = '$backendUrl?categoryId=${widget.categoryId}';

// // //     try {
// // //       final response = await http.get(Uri.parse(url));

// // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // //         final List<dynamic> data = json.decode(response.body);
// // //         List<Mission> missionsList = [];
// // //         for (var missionJson in data) {
// // //           Mission mission = Mission.fromJson(missionJson);
// // //           mission = await fetchUserData(mission);
// // //           missionsList.add(mission);
// // //         }

// // //         // Apply filter to missions
// // //         if (filter != 'All') {
// // //           int state = getMissionState(filter);
// // //           missionsList = missionsList.where((mission) => int.parse(mission.state) == state).toList();
// // //         }

// // //         setState(() {
// // //           missions = missionsList;
// // //         });
// // //       } else {
// // //         throw Exception('Failed to load missions');
// // //       }
// // //     } catch (e) {
// // //       print('Error fetching missions: $e');
// // //     }
// // //   }

// // //   Future<Mission> fetchUserData(Mission mission) async {
// // //     final String userUrl = 'https://192.168.0.109:7127/api/User/${mission.userId}';
// // //     try {
// // //       final response = await http.get(Uri.parse(userUrl));
// // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // //         final userJson = json.decode(response.body);
// // //         return mission.copyWith(
// // //           userName: userJson['userName'],
// // //           userEmail: userJson['email'],
// // //           userImage: userJson['image'],
// // //         );
// // //       } else {
// // //         print('Failed to fetch user data for userId: ${mission.userId}');
// // //       }
// // //     } catch (e) {
// // //       print('Error fetching user data: $e');
// // //     }
// // //     return mission;
// // //   }

// // //   int getMissionState(String state) {
// // //     switch (state) {
// // //       case 'Pending':
// // //         return 0;
// // //       case 'Scheduled':
// // //         return 1;
// // //       case 'Completed':
// // //         return 2;
// // //       case 'Cancelled':
// // //         return 3;
// // //       default:
// // //         return 0;
// // //     }
// // //   }

// // //   void updateFilter(String newFilter) {
// // //     setState(() {
// // //       filter = newFilter;
// // //     });
// // //     fetchMissions();
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Missions'),
// // //       ),
// // //       body: Column(
// // //         children: [
// // //           // Filter bar
// // //           SingleChildScrollView(
// // //             scrollDirection: Axis.horizontal,
// // //             child: Row(
// // //               mainAxisAlignment: MainAxisAlignment.spaceAround,
// // //               children: [
// // //                 for (var state in ['All', 'Pending', 'Scheduled', 'Completed', 'Cancelled'])
// // //                   FilterButton(
// // //                     label: state,
// // //                     isSelected: filter == state,
// // //                     onTap: () => updateFilter(state),
// // //                   ),
// // //               ],
// // //             ),
// // //           ),
// // //           // Missions list
// // //           Expanded(
// // //             child: ListView.builder(
// // //               itemCount: missions.length,
// // //               itemBuilder: (context, index) {
// // //                 final mission = missions[index];
// // //                 return MissionCard(
// // //                   mission: mission,
// // //                   onTap: () {
// // //                     Navigator.push(
// // //                       context,
// // //                       MaterialPageRoute(
// // //                         builder: (context) => MissionDetailScreen(mission: mission, vendorId: widget.vendorId), // Pass vendorId
// // //                       ),
// // //                     );
// // //                   },
// // //                 );
// // //               },
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }

// // // class FilterButton extends StatelessWidget {
// // //   final String label;
// // //   final bool isSelected;
// // //   final VoidCallback onTap;

// // //   const FilterButton({
// // //     required this.label,
// // //     required this.isSelected,
// // //     required this.onTap,
// // //   });

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return GestureDetector(
// // //       onTap: onTap,
// // //       child: Chip(
// // //         label: Text(label),
// // //         backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
// // //         labelStyle: TextStyle(
// // //           color: isSelected ? Colors.white : Colors.black,
// // //         ),
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
// // //   });

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Card(
// // //       child: ListTile(
// // //         leading: mission.userImage != null && mission.userImage!.isNotEmpty
// // //             ? CircleAvatar(
// // //                 backgroundImage: NetworkImage(mission.userImage!),
// // //               )
// // //             : CircleAvatar(
// // //                 child: Icon(Icons.account_circle),
// // //               ),
// // //         title: Text(mission.userName ?? 'Unknown'),
// // //         subtitle: Text(mission.userEmail ?? 'Unknown'),
// // //         trailing: Text(getStateText(mission.state)),
// // //         onTap: onTap,
// // //       ),
// // //     );
// // //   }
// // // }

// // // class MissionDetailScreen extends StatefulWidget {
// // //   final Mission mission;
// // //   final String vendorId;

// // //   const MissionDetailScreen({required this.mission, required this.vendorId});

// // //   @override
// // //   _MissionDetailScreenState createState() => _MissionDetailScreenState();
// // // }

// // // class _MissionDetailScreenState extends State<MissionDetailScreen> {
// // //   final TextEditingController _noteController = TextEditingController();
// // //   final TextEditingController _priceController = TextEditingController();

// // //   Future<void> _submitOffer() async {
// // //     if (widget.mission.id.isEmpty) {
// // //       print('Error: missionId is empty');
// // //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: missionId is empty')));
// // //       return;
// // //     }

// // //     final url = 'https://192.168.0.109:7127/api/vendorOffer';
// // //     final body = json.encode({
// // //       'venderProfileId': widget.vendorId, // Use vendorId here
// // //       'missionId': widget.mission.id,
// // //       'note': _noteController.text,
// // //       'price': double.parse(_priceController.text),
// // //       'state': false, // Assuming 'false' means not accepted
// // //     });

// // //     print('Submitting offer with missionId: ${widget.mission.id}');
// // //     print('Request body: $body');

// // //     try {
// // //       final response = await http.post(
// // //         Uri.parse(url),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //         },
// // //         body: body,
// // //       );

// // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // //         // Successfully posted
// // //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Offer submitted successfully')));
// // //       } else {
// // //         // Error handling
// // //         final responseBody = json.decode(response.body);
// // //         print('Failed to submit offer: ${responseBody}');
// // //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to submit offer: ${responseBody}')));
// // //       }
// // //     } catch (e) {
// // //       // Exception handling
// // //       print('Error: $e');
// // //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('An error occurred: $e')));
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final mission = widget.mission;

// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Mission Details'),
// // //       ),
// // //       body: Padding(
// // //         padding: const EdgeInsets.all(16.0),
// // //         child: SingleChildScrollView(
// // //           child: Column(
// // //             crossAxisAlignment: CrossAxisAlignment.start,
// // //             children: [
// // //               mission.userImage != null && mission.userImage!.isNotEmpty
// // //                   ? CircleAvatar(
// // //                       radius: 50,
// // //                       backgroundImage: NetworkImage(mission.userImage!),
// // //                     )
// // //                   : CircleAvatar(
// // //                       radius: 50,
// // //                       child: Icon(Icons.account_circle, size: 50),
// // //                     ),
// // //               SizedBox(height: 16),
// // //               if (mission.userName != null) Text('Name: ${mission.userName}', style: TextStyle(fontSize: 18)),
// // //               if (mission.userEmail != null) Text('Email: ${mission.userEmail}', style: TextStyle(fontSize: 16)),
// // //               if (mission.name != null) Text('Mission: ${mission.name}', style: TextStyle(fontSize: 16)),
// // //               Text('State: ${getStateText(mission.state)}', style: TextStyle(fontSize: 16)),
// // //               if (mission.location != null) Text('Location: ${mission.location}', style: TextStyle(fontSize: 16)),
// // //               if (mission.grade != null) Text('Grade: ${mission.grade}', style: TextStyle(fontSize: 16)),
// // //               TextField(
// // //                 controller: _noteController,
// // //                 decoration: InputDecoration(labelText: 'Add Note'),
// // //               ),
// // //               TextField(
// // //                 controller: _priceController,
// // //                 decoration: InputDecoration(labelText: 'Price'),
// // //                 keyboardType: TextInputType.number,
// // //               ),
// // //               SizedBox(height: 16),
// // //               ElevatedButton(
// // //                 onPressed: _submitOffer,
// // //                 child: Text('Send'),
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // String getStateText(String state) {
// // //   switch (state) {
// // //     case '0':
// // //       return 'Pending';
// // //     case '1':
// // //       return 'Scheduled';
// // //     case '2':
// // //       return 'Completed';
// // //     case '3':
// // //       return 'Cancelled';
// // //     default:
// // //       return 'Unknown';
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';

// // class Mission {
// //   final String id;
// //   final String name;
// //   final String state;
// //   final String userId;
// //   final String categoryId;
// //   final String? location;
// //   final String? grade;
// //   final String? userName;
// //   final String? userEmail;
// //   final String? userImage;

// //   Mission({
// //     required this.id,
// //     required this.name,
// //     required this.state,
// //     required this.userId,
// //     required this.categoryId,
// //     this.location,
// //     this.grade,
// //     this.userName,
// //     this.userEmail,
// //     this.userImage,
// //   });

// //   factory Mission.fromJson(Map<String, dynamic> json) {
// //     return Mission(
// //       id: json['Id'] ?? '',
// //       name: json['name'] ?? '',
// //       state: json['state'].toString(), // Convert enum to string
// //       userId: json['userId'] ?? '',
// //       categoryId: json['categoryId'] ?? '',
// //       location: json['location'],
// //       grade: json['grade'],
// //       userName: json['userName'],
// //       userEmail: json['userEmail'],
// //       userImage: json['userImage'],
// //     );
// //   }

// //   Mission copyWith({
// //     String? userName,
// //     String? userEmail,
// //     String? userImage,
// //   }) {
// //     return Mission(
// //       id: this.id,
// //       name: this.name,
// //       state: this.state,
// //       userId: this.userId,
// //       categoryId: this.categoryId,
// //       location: this.location,
// //       grade: this.grade,
// //       userName: userName ?? this.userName,
// //       userEmail: userEmail ?? this.userEmail,
// //       userImage: userImage ?? this.userImage,
// //     );
// //   }
// // }

// // class MissionsScreen extends StatefulWidget {
// //   final String categoryId;
// //   final String vendorId;

// //   const MissionsScreen({Key? key, required this.categoryId, required this.vendorId}) : super(key: key);

// //   @override
// //   _MissionsScreenState createState() => _MissionsScreenState();
// // }

// // class _MissionsScreenState extends State<MissionsScreen> {
// //   String filter = 'All';
// //   List<Mission> missions = [];
// //   final String backendUrl = 'https://192.168.0.109:7127/api/Mission/Filter';

// //   @override
// //   void initState() {
// //     super.initState();
// //     fetchMissions();
// //   }

// //   Future<void> fetchMissions() async {
// //     String url = '$backendUrl?categoryId=${widget.categoryId}';

// //     try {
// //       final response = await http.get(Uri.parse(url));

// //       print('Fetch missions response status code: ${response.statusCode}');
// //       print('Fetch missions response body: ${response.body}');

// //       if (response.statusCode == 200 || response.statusCode == 201) {
// //         final List<dynamic> data = json.decode(response.body);
// //         print('Parsed response data: $data');
        
// //         if (data.isEmpty) {
// //           print('No missions found for the given category.');
// //         }

// //         List<Mission> missionsList = [];
// //         for (var missionJson in data) {
// //           Mission mission = Mission.fromJson(missionJson);
// //           print('Fetched mission ID: ${mission.id}');
// //           mission = await fetchUserData(mission);
// //           missionsList.add(mission);
// //         }

// //         // Apply filter to missions
// //         if (filter != 'All') {
// //           int state = getMissionState(filter);
// //           missionsList = missionsList.where((mission) => int.parse(mission.state) == state).toList();
// //         }

// //         setState(() {
// //           missions = missionsList;
// //         });

// //         if (missions.isEmpty) {
// //           print('Missions list is empty after filtering.');
// //         } else {
// //           print('Missions list populated successfully.');
// //         }
// //       } else {
// //         throw Exception('Failed to load missions');
// //       }
// //     } catch (e) {
// //       print('Error fetching missions: $e');
// //     }
// //   }

// //   Future<Mission> fetchUserData(Mission mission) async {
// //     final String userUrl = 'https://192.168.0.109:7127/api/User/${mission.userId}';
// //     try {
// //       final response = await http.get(Uri.parse(userUrl));
// //       if (response.statusCode == 200 || response.statusCode == 201) {
// //         final userJson = json.decode(response.body);
// //         return mission.copyWith(
// //           userName: userJson['userName'],
// //           userEmail: userJson['email'],
// //           userImage: userJson['image'],
// //         );
// //       } else {
// //         print('Failed to fetch user data for userId: ${mission.userId}');
// //       }
// //     } catch (e) {
// //       print('Error fetching user data: $e');
// //     }
// //     return mission;
// //   }

// //   int getMissionState(String state) {
// //     switch (state) {
// //       case 'Pending':
// //         return 0;
// //       case 'Scheduled':
// //         return 1;
// //       case 'Completed':
// //         return 2;
// //       case 'Cancelled':
// //         return 3;
// //       default:
// //         return 0;
// //     }
// //   }

// //   void updateFilter(String newFilter) {
// //     setState(() {
// //       filter = newFilter;
// //     });
// //     fetchMissions();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Missions'),
// //       ),
// //       body: Column(
// //         children: [
// //           // Filter bar
// //           SingleChildScrollView(
// //             scrollDirection: Axis.horizontal,
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceAround,
// //               children: [
// //                 for (var state in ['All', 'Pending', 'Scheduled', 'Completed', 'Cancelled'])
// //                   FilterButton(
// //                     label: state,
// //                     isSelected: filter == state,
// //                     onTap: () => updateFilter(state),
// //                   ),
// //               ],
// //             ),
// //           ),
// //           // Missions list
// //           Expanded(
// //             child: ListView.builder(
// //               itemCount: missions.length,
// //               itemBuilder: (context, index) {
// //                 final mission = missions[index];
// //                 print('Mission ID in list: ${mission.id}');
// //                 return MissionCard(
// //                   mission: mission,
// //                   onTap: () {
// //                     print('Tapped mission ID: ${mission.id}');
// //                     Navigator.push(
// //                       context,
// //                       MaterialPageRoute(
// //                         builder: (context) => MissionDetailScreen(mission: mission, vendorId: widget.vendorId), // Pass vendorId
// //                       ),
// //                     );
// //                   },
// //                 );
// //               },
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class FilterButton extends StatelessWidget {
// //   final String label;
// //   final bool isSelected;
// //   final VoidCallback onTap;

// //   const FilterButton({
// //     required this.label,
// //     required this.isSelected,
// //     required this.onTap,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return GestureDetector(
// //       onTap: onTap,
// //       child: Chip(
// //         label: Text(label),
// //         backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
// //         labelStyle: TextStyle(
// //           color: isSelected ? Colors.white : Colors.black,
// //         ),
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
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       child: ListTile(
// //         leading: mission.userImage != null && mission.userImage!.isNotEmpty
// //             ? CircleAvatar(
// //                 backgroundImage: NetworkImage(mission.userImage!),
// //               )
// //             : CircleAvatar(
// //                 child: Icon(Icons.account_circle),
// //               ),
// //         title: Text(mission.userName ?? 'Unknown'),
// //         subtitle: Text(mission.userEmail ?? 'Unknown'),
// //         trailing: Text(getStateText(mission.state)),
// //         onTap: onTap,
// //       ),
// //     );
// //   }
// // }

// // class MissionDetailScreen extends StatefulWidget {
// //   final Mission mission;
// //   final String vendorId;

// //   const MissionDetailScreen({required this.mission, required this.vendorId});

// //   @override
// //   _MissionDetailScreenState createState() => _MissionDetailScreenState();
// // }

// // class _MissionDetailScreenState extends State<MissionDetailScreen> {
// //   final TextEditingController _noteController = TextEditingController();
// //   final TextEditingController _priceController = TextEditingController();

// //   Future<void> _submitOffer() async {
// //     if (widget.mission.id.isEmpty) {
// //       print('Error: missionId is empty');
// //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: missionId is empty')));
// //       return;
// //     }

// //     final url = 'https://192.168.0.109:7127/api/vendorOffer';
// //     final body = json.encode({
// //       'venderProfileId': widget.vendorId, // Use vendorId here
// //       'missionId': widget.mission.id,
// //       'note': _noteController.text,
// //       'price': double.parse(_priceController.text),
// //       'state': false, // Assuming 'false' means not accepted
// //     });

// //     print('Submitting offer with missionId: ${widget.mission.id}');
// //     print('Request body: $body');

// //     try {
// //       final response = await http.post(
// //         Uri.parse(url),
// //         headers: {
// //           'Content-Type': 'application/json',
// //         },
// //         body: body,
// //       );

// //       if (response.statusCode == 200 || response.statusCode == 201) {
// //         // Successfully posted
// //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Offer submitted successfully')));
// //       } else {
// //         // Error handling
// //         final responseBody = json.decode(response.body);
// //         print('Failed to submit offer: ${responseBody}');
// //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to submit offer: ${responseBody}')));
// //       }
// //     } catch (e) {
// //       // Exception handling
// //       print('Error: $e');
// //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('An error occurred: $e')));
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     final mission = widget.mission;

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Mission Details'),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: SingleChildScrollView(
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               mission.userImage != null && mission.userImage!.isNotEmpty
// //                   ? CircleAvatar(
// //                       radius: 50,
// //                       backgroundImage: NetworkImage(mission.userImage!),
// //                     )
// //                   : CircleAvatar(
// //                       radius: 50,
// //                       child: Icon(Icons.account_circle, size: 50),
// //                     ),
// //               SizedBox(height: 16),
// //               if (mission.userName != null) Text('Name: ${mission.userName}', style: TextStyle(fontSize: 18)),
// //               if (mission.userEmail != null) Text('Email: ${mission.userEmail}', style: TextStyle(fontSize: 16)),
// //               if (mission.name != null) Text('Mission: ${mission.name}', style: TextStyle(fontSize: 16)),
// //               Text('State: ${getStateText(mission.state)}', style: TextStyle(fontSize: 16)),
// //               if (mission.location != null) Text('Location: ${mission.location}', style: TextStyle(fontSize: 16)),
// //               if (mission.grade != null) Text('Grade: ${mission.grade}', style: TextStyle(fontSize: 16)),
// //               TextField(
// //                 controller: _noteController,
// //                 decoration: InputDecoration(labelText: 'Add Note'),
// //               ),
// //               TextField(
// //                 controller: _priceController,
// //                 decoration: InputDecoration(labelText: 'Price'),
// //                 keyboardType: TextInputType.number,
// //               ),
// //               SizedBox(height: 16),
// //               ElevatedButton(
// //                 onPressed: _submitOffer,
// //                 child: Text('Send'),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // String getStateText(String state) {
// //   switch (state) {
// //     case '0':
// //       return 'Pending';
// //     case '1':
// //       return 'Scheduled';
// //     case '2':
// //       return 'Completed';
// //     case '3':
// //       return 'Cancelled';
// //     default:
// //       return 'Unknown';
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class Mission {
//   final String id;
//   final String name;
//   final String state;
//   final String userId;
//   final String categoryId;
//   final String? location;
//   final String? grade;
//   final String? userName;
//   final String? userEmail;
//   final String? userImage;

//   Mission({
//     required this.id,
//     required this.name,
//     required this.state,
//     required this.userId,
//     required this.categoryId,
//     this.location,
//     this.grade,
//     this.userName,
//     this.userEmail,
//     this.userImage,
//   });

//   factory Mission.fromJson(Map<String, dynamic> json) {
//     return Mission(
//       id: json['Id'] ?? '',
//       name: json['name'] ?? '',
//       state: json['state'].toString(), // Convert enum to string
//       userId: json['userId'] ?? '',
//       categoryId: json['categoryId'] ?? '',
//       location: json['location'],
//       grade: json['grade'],
//       userName: json['userName'],
//       userEmail: json['userEmail'],
//       userImage: json['userImage'],
//     );
//   }

//   Mission copyWith({
//     String? userName,
//     String? userEmail,
//     String? userImage,
//   }) {
//     return Mission(
//       id: this.id,
//       name: this.name,
//       state: this.state,
//       userId: this.userId,
//       categoryId: this.categoryId,
//       location: this.location,
//       grade: this.grade,
//       userName: userName ?? this.userName,
//       userEmail: userEmail ?? this.userEmail,
//       userImage: userImage ?? this.userImage,
//     );
//   }
// }

// class MissionsScreen extends StatefulWidget {
//   final String categoryId;
//   final String vendorId;

//   const MissionsScreen({Key? key, required this.categoryId, required this.vendorId}) : super(key: key);

//   @override
//   _MissionsScreenState createState() => _MissionsScreenState();
// }

// class _MissionsScreenState extends State<MissionsScreen> {
//   String filter = 'All';
//   List<Mission> missions = [];
//   final String backendUrl = 'https://192.168.0.109:7127/api/Mission/Filter';

//   @override
//   void initState() {
//     super.initState();
//     fetchMissions();
//   }

//   Future<void> fetchMissions() async {
//     String url = '$backendUrl?categoryId=${widget.categoryId}';

//     try {
//       final response = await http.get(Uri.parse(url));

//       print('Fetch missions response status code: ${response.statusCode}');
//       print('Fetch missions response body: ${response.body}');

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         final List<dynamic> data = json.decode(response.body);
//         print('Parsed response data: $data');
        
//         if (data.isEmpty) {
//           print('No missions found for the given category.');
//         }

//         List<Mission> missionsList = [];
//         for (var missionJson in data) {
//           Mission mission = Mission.fromJson(missionJson);
//           print('Fetched mission ID: ${mission.id}');
//           mission = await fetchUserData(mission);
//           missionsList.add(mission);
//         }

//         // Apply filter to missions
//         if (filter != 'All') {
//           int state = getMissionState(filter);
//           missionsList = missionsList.where((mission) => int.parse(mission.state) == state).toList();
//         }

//         setState(() {
//           missions = missionsList;
//         });

//         if (missions.isEmpty) {
//           print('Missions list is empty after filtering.');
//         } else {
//           print('Missions list populated successfully.');
//         }
//       } else {
//         throw Exception('Failed to load missions');
//       }
//     } catch (e) {
//       print('Error fetching missions: $e');
//     }
//   }

//   Future<Mission> fetchUserData(Mission mission) async {
//     final String userUrl = 'https://192.168.0.109:7127/api/User/${mission.userId}';
//     try {
//       final response = await http.get(Uri.parse(userUrl));
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         final userJson = json.decode(response.body);
//         return mission.copyWith(
//           userName: userJson['userName'],
//           userEmail: userJson['email'],
//           userImage: userJson['image'],
//         );
//       } else {
//         print('Failed to fetch user data for userId: ${mission.userId}');
//       }
//     } catch (e) {
//       print('Error fetching user data: $e');
//     }
//     return mission;
//   }

//   int getMissionState(String state) {
//     switch (state) {
//       case 'Pending':
//         return 0;
//       case 'Scheduled':
//         return 1;
//       case 'Completed':
//         return 2;
//       case 'Cancelled':
//         return 3;
//       default:
//         return 0;
//     }
//   }

//   void updateFilter(String newFilter) {
//     setState(() {
//       filter = newFilter;
//     });
//     fetchMissions();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Missions'),
//       ),
//       body: Column(
//         children: [
//           // Filter bar
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 for (var state in ['All', 'Pending', 'Scheduled', 'Completed', 'Cancelled'])
//                   FilterButton(
//                     label: state,
//                     isSelected: filter == state,
//                     onTap: () => updateFilter(state),
//                   ),
//               ],
//             ),
//           ),
//           // Missions list
//           Expanded(
//             child: ListView.builder(
//               itemCount: missions.length,
//               itemBuilder: (context, index) {
//                 final mission = missions[index];
//                 print('Mission ID in list: ${mission.id}');
//                 return MissionCard(
//                   mission: mission,
//                   onTap: () {
//                     print('Tapped mission ID: ${mission.id}');
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => MissionDetailScreen(mission: mission, vendorId: widget.vendorId), // Pass vendorId
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class FilterButton extends StatelessWidget {
//   final String label;
//   final bool isSelected;
//   final VoidCallback onTap;

//   const FilterButton({
//     required this.label,
//     required this.isSelected,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Chip(
//         label: Text(label),
//         backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
//         labelStyle: TextStyle(
//           color: isSelected ? Colors.white : Colors.black,
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
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         leading: mission.userImage != null && mission.userImage!.isNotEmpty
//             ? CircleAvatar(
//                 backgroundImage: NetworkImage(mission.userImage!),
//               )
//             : CircleAvatar(
//                 child: Icon(Icons.account_circle),
//               ),
//         title: Text(mission.userName ?? 'Unknown'),
//         subtitle: Text(mission.userEmail ?? 'Unknown'),
//         trailing: Text(getStateText(mission.state)),
//         onTap: onTap,
//       ),
//     );
//   }
// }

// class MissionDetailScreen extends StatefulWidget {
//   final Mission mission;
//   final String vendorId;

//   const MissionDetailScreen({required this.mission, required this.vendorId});

//   @override
//   _MissionDetailScreenState createState() => _MissionDetailScreenState();
// }

// class _MissionDetailScreenState extends State<MissionDetailScreen> {
//   final TextEditingController _noteController = TextEditingController();
//   final TextEditingController _priceController = TextEditingController();

//   Future<void> _submitOffer() async {
//     if (widget.mission.id.isEmpty) {
//       print('Error: missionId is empty');
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: missionId is empty')));
//       return;
//     }

//     final url = 'https://192.168.0.109:7127/api/vendorOffer';
//     final body = json.encode({
//       'venderProfileId': widget.vendorId, // Use vendorId here
//       'missionId': widget.mission.id,
//       'note': _noteController.text,
//       'price': double.parse(_priceController.text),
//       'state': false, // Assuming 'false' means not accepted
//     });

//     print('Submitting offer with missionId: ${widget.mission.id}');
//     print('Request body: $body');

//     try {
//       final response = await http.post(
//         Uri.parse(url),
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: body,
//       );

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         // Successfully posted
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Offer submitted successfully')));
//       } else {
//         // Error handling
//         final responseBody = json.decode(response.body);
//         print('Failed to submit offer: ${responseBody}');
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to submit offer: ${responseBody}')));
//       }
//     } catch (e) {
//       // Exception handling
//       print('Error: $e');
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('An error occurred: $e')));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final mission = widget.mission;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Mission Details'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               mission.userImage != null && mission.userImage!.isNotEmpty
//                   ? CircleAvatar(
//                       radius: 50,
//                       backgroundImage: NetworkImage(mission.userImage!),
//                     )
//                   : CircleAvatar(
//                       radius: 50,
//                       child: Icon(Icons.account_circle, size: 50),
//                     ),
//               SizedBox(height: 16),
//               if (mission.userName != null) Text('Name: ${mission.userName}', style: TextStyle(fontSize: 18)),
//               if (mission.userEmail != null) Text('Email: ${mission.userEmail}', style: TextStyle(fontSize: 16)),
//               if (mission.name != null) Text('Mission: ${mission.name}', style: TextStyle(fontSize: 16)),
//               Text('State: ${getStateText(mission.state)}', style: TextStyle(fontSize: 16)),
//               if (mission.location != null) Text('Location: ${mission.location}', style: TextStyle(fontSize: 16)),
//               if (mission.grade != null) Text('Grade: ${mission.grade}', style: TextStyle(fontSize: 16)),
//               TextField(
//                 controller: _noteController,
//                 decoration: InputDecoration(labelText: 'Add Note'),
//               ),
//               TextField(
//                 controller: _priceController,
//                 decoration: InputDecoration(labelText: 'Price'),
//                 keyboardType: TextInputType.number,
//               ),
//               SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: _submitOffer,
//                 child: Text('Send'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// String getStateText(String state) {
//   switch (state) {
//     case '0':
//       return 'Pending';
//     case '1':
//       return 'Scheduled';
//     case '2':
//       return 'Completed';
//     case '3':
//       return 'Cancelled';
//     default:
//       return 'Unknown';
//   }
// }
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Mission {
  final String id;
  final String name;
  final String state;
  final String userId;
  final String categoryId;
  final String? location;
  final String? grade;
  final String? userName;
  final String? userEmail;
  final String? userImage;

  Mission({
    required this.id,
    required this.name,
    required this.state,
    required this.userId,
    required this.categoryId,
    this.location,
    this.grade,
    this.userName,
    this.userEmail,
    this.userImage,
  });

  factory Mission.fromJson(Map<String, dynamic> json) {
    return Mission(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      state: json['state'].toString(), // Convert enum to string
      userId: json['userId'] ?? '',
      categoryId: json['categoryId'] ?? '',
      location: json['location'],
      grade: json['grade'],
      userName: json['userName'],
      userEmail: json['userEmail'],
      userImage: json['userImage'],
    );
  }

  Mission copyWith({
    String? userName,
    String? userEmail,
    String? userImage,
  }) {
    return Mission(
      id: this.id,
      name: this.name,
      state: this.state,
      userId: this.userId,
      categoryId: this.categoryId,
      location: this.location,
      grade: this.grade,
      userName: userName ?? this.userName,
      userEmail: userEmail ?? this.userEmail,
      userImage: userImage ?? this.userImage,
    );
  }
}

class MissionsScreen extends StatefulWidget {
  final String categoryId;
  final String vendorId;

  const MissionsScreen({Key? key, required this.categoryId, required this.vendorId}) : super(key: key);

  @override
  _MissionsScreenState createState() => _MissionsScreenState();
}

class _MissionsScreenState extends State<MissionsScreen> {
  String filter = 'All';
  List<Mission> missions = [];
  final String backendUrl = 'https://192.168.0.109:7127/api/Mission/Filter';

  @override
  void initState() {
    super.initState();
    fetchMissions();
  }

  Future<void> fetchMissions() async {
    String url = '$backendUrl?categoryId=${widget.categoryId}';

    try {
      final response = await http.get(Uri.parse(url));

      print('Fetch missions response status code: ${response.statusCode}');
      print('Fetch missions response body: ${response.body}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = json.decode(response.body);
        print('Parsed response data: $data');
        
        if (data.isEmpty) {
          print('No missions found for the given category.');
        }

        List<Mission> missionsList = [];
        for (var missionJson in data) {
          Mission mission = Mission.fromJson(missionJson);
          print('Fetched mission ID: ${mission.id}');
          mission = await fetchUserData(mission);
          missionsList.add(mission);
        }

        // Apply filter to missions
        if (filter != 'All') {
          int state = getMissionState(filter);
          missionsList = missionsList.where((mission) => int.parse(mission.state) == state).toList();
        }

        setState(() {
          missions = missionsList;
        });

        for (var mission in missions) {
          print('Mission in list after filtering ID: ${mission.id}');
        }

        if (missions.isEmpty) {
          print('Missions list is empty after filtering.');
        } else {
          print('Missions list populated successfully.');
        }
      } else {
        throw Exception('Failed to load missions');
      }
    } catch (e) {
      print('Error fetching missions: $e');
    }
  }

  Future<Mission> fetchUserData(Mission mission) async {
    final String userUrl = 'https://192.168.0.109:7127/api/User/${mission.userId}';
    try {
      final response = await http.get(Uri.parse(userUrl));
      if (response.statusCode == 200 || response.statusCode == 201) {
        final userJson = json.decode(response.body);
        return mission.copyWith(
          userName: userJson['userName'],
          userEmail: userJson['email'],
          userImage: userJson['image'],
        );
      } else {
        print('Failed to fetch user data for userId: ${mission.userId}');
      }
    } catch (e) {
      print('Error fetching user data: $e');
    }
    return mission;
  }

  int getMissionState(String state) {
    switch (state) {
      case 'Pending':
        return 0;
      case 'Scheduled':
        return 1;
      case 'Completed':
        return 2;
      case 'Cancelled':
        return 3;
      default:
        return 0;
    }
  }

  void updateFilter(String newFilter) {
    setState(() {
      filter = newFilter;
    });
    fetchMissions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Missions'),
      ),
      body: Column(
        children: [
          // Filter bar
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (var state in ['All', 'Pending', 'Scheduled', 'Completed', 'Cancelled'])
                  FilterButton(
                    label: state,
                    isSelected: filter == state,
                    onTap: () => updateFilter(state),
                  ),
              ],
            ),
          ),
          // Missions list
          Expanded(
            child: ListView.builder(
              itemCount: missions.length,
              itemBuilder: (context, index) {
                final mission = missions[index];
                print('Mission ID in list: ${mission.id}');
                return MissionCard(
                  mission: mission,
                  onTap: () {
                    print('Tapped mission ID: ${mission.id}');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MissionDetailScreen(missionId: mission.id, vendorId: widget.vendorId), // Pass missionId and vendorId
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const FilterButton({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Chip(
        label: Text(label),
        backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
        labelStyle: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}

class MissionCard extends StatelessWidget {
  final Mission mission;
  final VoidCallback onTap;

  const MissionCard({
    required this.mission,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: mission.userImage != null && mission.userImage!.isNotEmpty
            ? CircleAvatar(
                backgroundImage: NetworkImage(mission.userImage!),
              )
            : CircleAvatar(
                child: Icon(Icons.account_circle),
              ),
        title: Text(mission.userName ?? 'Unknown'),
        subtitle: Text(mission.userEmail ?? 'Unknown'),
        trailing: Text(getStateText(mission.state)),
        onTap: onTap,
      ),
    );
  }
}

class MissionDetailScreen extends StatefulWidget {
  final String missionId;
  final String vendorId;

  const MissionDetailScreen({required this.missionId, required this.vendorId});

  @override
  _MissionDetailScreenState createState() => _MissionDetailScreenState();
}

class _MissionDetailScreenState extends State<MissionDetailScreen> {
  final TextEditingController _noteController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  Future<void> _submitOffer() async {
    if (widget.missionId.isEmpty) {
      print('Error: missionId is empty');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: missionId is empty')));
      return;
    }

    final url = 'https://192.168.0.109:7127/api/vendorOffer';
    final body = json.encode({
      'venderProfileId': widget.vendorId, // Use vendorId here
      'missionId': widget.missionId,
      'note': _noteController.text,
      'price': double.parse(_priceController.text),
      'state': false, // Assuming 'false' means not accepted
    });

    print('Submitting offer with missionId: ${widget.missionId}');
    print('Request body: $body');

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: body,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        // Successfully posted
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Offer submitted successfully')));
      } else {
        // Error handling
        final responseBody = json.decode(response.body);
        print('Failed to submit offer: ${responseBody}');
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to submit offer: ${responseBody}')));
      }
    } catch (e) {
      // Exception handling
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('An error occurred: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    print('Mission ID in detail screen: ${widget.missionId}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Mission Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _noteController,
                decoration: InputDecoration(labelText: 'Add Note'),
              ),
              TextField(
                controller: _priceController,
                decoration: InputDecoration(labelText: 'Price'),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _submitOffer,
                child: Text('Send'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String getStateText(String state) {
  switch (state) {
    case '0':
      return 'Pending';
    case '1':
      return 'Scheduled';
    case '2':
      return 'Completed';
    case '3':
      return 'Cancelled';
    default:
      return 'Unknown';
  }
}