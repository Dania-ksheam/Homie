import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';

import '../theme.dart';
import '../widgets/image_base.dart';

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
  final String? details;
  final String? hours;
  final String? note;
  final String? image;
  final int? room;
  final DateTime? day;

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
    this.details,
    this.hours,
    this.note,
    this.image,
    this.room,
    this.day,
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
      details: json['details'],
      hours: json['hours'],
      note: json['note'],
      image: json['image'],
      room: json['room'],
      day: json['day'] != null ? DateTime.parse(json['day']) : null,
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
      details: this.details,
      hours: this.hours,
      note: this.note,
      image: this.image,
      room: this.room,
      day: this.day,
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
        title: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 2),
          child: Text(
            'Missions',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          // Filter bar
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (var state in ['All', 'Pending', 'Scheduled', 'Completed', 'Cancelled']) ...[
                  FilterButton(
                    label: state,
                    isSelected: filter == state,
                    onTap: () => updateFilter(state),
                  ),
                ],
              ],
            ),
          ),
          SizedBox(height: 4),
          // Missions list
          Expanded(
            child: ListView.builder(
              itemCount: missions.length,
              itemBuilder: (context, index) {
                final mission = missions[index];
                print('Mission ID in list: ${mission.id}');
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: MissionCard(
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
                  ),
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
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Chip(
          label: Text(label),
          backgroundColor: isSelected ? AppColors.primaryColor : Colors.grey[300],
          labelStyle: TextStyle(
            color: isSelected ? Colors.white : Colors.grey[600],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: isSelected ? AppColors.primaryColor : Colors.grey[600]!,
            ),
          ),
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
            ? mission.userImage!.startsWith('data:image')
            ? CircleAvatar(
          child: ImageFromBase64(base64String: mission.userImage!),
        )
            : CircleAvatar(
          backgroundImage: NetworkImage(mission.userImage!),
        )
            : CircleAvatar(
          child: Icon(Icons.account_circle),
        ),
        title: Text(mission.userName ?? 'Unknown'),
        subtitle: Text(mission.userEmail ?? 'Unknown'),
        trailing: Container(
          decoration: BoxDecoration(
            color: Colors.transparent, // Background color of the pill
            borderRadius: BorderRadius.circular(20), // Rounded corners
            border: Border.all(
              color: AppColors.primaryColor, // Outline color
              width: 2.0, // Border width
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Text(
            getStateText(mission.state),
            style: TextStyle(
              color: AppColors.primaryColor, // Text color
            ),
          ),
        ),
        onTap: onTap,
      ),
    );
  }}

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
  Mission? mission;

  @override
  void initState() {
    super.initState();
    fetchMissionDetails();
  }

  Future<void> fetchMissionDetails() async {
    final String missionUrl = 'https://192.168.0.109:7127/api/Mission/${widget.missionId}';

    try {
      final response = await http.get(Uri.parse(missionUrl));

      print('Fetch mission details response status code: ${response.statusCode}');
      print('Fetch mission details response body: ${response.body}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final missionData = json.decode(response.body);
        setState(() {
          mission = Mission.fromJson(missionData);
        });
        print('Mission details fetched successfully: $mission');
      } else {
        throw Exception('Failed to load mission details');
      }
    } catch (e) {
      print('Error fetching mission details: $e');
    }
  }

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

  Future<void> _changeStateToComplete() async {
    final String url = 'https://192.168.0.109:7127/api/ChangeStateToComplete/${widget.missionId}';

    try {
      print('Changing state to complete for missionId: ${widget.missionId}');
      final response = await http.put(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      print('Change state response status code: ${response.statusCode}');
      print('Change state response body: ${response.body}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Mission state changed to completed')));
      } else {
        if (response.body.isNotEmpty) {
          final responseBody = json.decode(response.body);
          print('Failed to change mission state: ${responseBody}');
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to change mission state: ${responseBody}')));
        } else {
          print('Failed to change mission state: Empty response body');
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to change mission state: Empty response body')));
        }
      }
    } catch (e) {
      print('Error changing mission state: $e');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('An error occurred: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    print('Mission ID in detail screen: ${widget.missionId}');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mission Details',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.primaryColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: mission == null
          ? Center(child: CircularProgressIndicator())
          : Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mission Name: ${mission!.name}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('State: ${getStateText(mission!.state)}'),
              if (mission!.location != null) SizedBox(height: 10),
              if (mission!.location != null)
                Row(
                  children: [
                    Text('Location: '),
                    InkWell(
                      onTap: () async {
                        final url = 'https://www.google.com/maps/search/?api=1&query=${Uri.encodeComponent(mission!.location!)}';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Text(
                        mission!.location!,
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              if (mission!.grade != null) SizedBox(height: 10),
              if (mission!.grade != null) Text('Grade: ${mission!.grade}'),
              if (mission!.details != null) SizedBox(height: 10),
              if (mission!.details != null) Text('Details: ${mission!.details}'),
              if (mission!.hours != null) SizedBox(height: 10),
              if (mission!.hours != null) Text('Hours: ${mission!.hours}'),
              if (mission!.note != null) SizedBox(height: 10),
              if (mission!.note != null) Text('Note: ${mission!.note}'),
              if (mission!.room != null) SizedBox(height: 10),
              if (mission!.room != null) Text('Room: ${mission!.room}'),
              if (mission!.day != null) SizedBox(height: 10),
              if (mission!.day != null) Text('Day: ${mission!.day!.toLocal().toString().split(' ')[0]}'),
              SizedBox(height: 20),
              if (mission!.state == '0') ...[

                TextField(
                  controller: _priceController,
                  decoration: InputDecoration(
                    labelText: 'Price',
                    suffixText: 'LYD ',
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
    TextField(
    controller: _noteController,
    decoration: InputDecoration(
    labelText: 'Add Note',
    alignLabelWithHint: true,
    ),
    maxLines: 5,
    ),
                SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: ElevatedButton(
                    onPressed: _submitOffer,
                    child: Text(
                      'Send',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
              if (mission!.state == '1') ...[
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: ElevatedButton(
                    onPressed: _changeStateToComplete,
                    child: Text(
                      'Mark as Complete',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
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