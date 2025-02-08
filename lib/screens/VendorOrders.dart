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