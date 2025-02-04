import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MissionsScreen(),
  ));
}

class MissionsScreen extends StatefulWidget {
  @override
  _MissionsScreenState createState() => _MissionsScreenState();
}

class _MissionsScreenState extends State<MissionsScreen> {
  String filter = 'All';

  final List<Mission> missions = [
    Mission('John Doe', 'john@example.com', 'https://via.placeholder.com/150', 'Pending'),
    Mission('Jane Smith', 'jane@example.com', 'https://via.placeholder.com/150', 'Scheduled'),
    Mission('Alice Johnson', 'alice@example.com', 'https://via.placeholder.com/150', 'Completed'),
  ];

  @override
  Widget build(BuildContext context) {
    final filteredMissions = filter == 'All'
        ? missions
        : missions.where((mission) => mission.state == filter).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Missions'),
      ),
      body: Column(
        children: [
          // Filter bar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (var state in ['All', 'Pending', 'Scheduled', 'Completed'])
                FilterButton(
                  label: state,
                  isSelected: filter == state,
                  onTap: () {
                    setState(() {
                      filter = state;
                    });
                  },
                ),
            ],
          ),
          // Missions list
          Expanded(
            child: ListView.builder(
              itemCount: filteredMissions.length,
              itemBuilder: (context, index) {
                final mission = filteredMissions[index];
                return MissionCard(
                  mission: mission,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MissionDetailScreen(mission: mission),
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
        leading: CircleAvatar(
          backgroundImage: NetworkImage(mission.pictureUrl),
        ),
        title: Text(mission.username),
        subtitle: Text(mission.email),
        onTap: onTap,
      ),
    );
  }
}

class MissionDetailScreen extends StatelessWidget {
  final Mission mission;

  const MissionDetailScreen({required this.mission});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mission Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(mission.pictureUrl),
            ),
            SizedBox(height: 16),
            Text('Username: ${mission.username}', style: TextStyle(fontSize: 18)),
            Text('Email: ${mission.email}', style: TextStyle(fontSize: 16)),
            if (mission.state == 'Pending') ...[
              TextField(
                decoration: InputDecoration(labelText: 'Add Notes'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Send'),
              ),
            ] else if (mission.state == 'Scheduled') ...[
              TextField(
                decoration: InputDecoration(labelText: 'Price'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Mark as Completed'),
              ),
            ] else ...[
              Text('This mission is completed.', style: TextStyle(color: Colors.green)),
            ],
          ],
        ),
      ),
    );
  }
}

class Mission {
  final String username;
  final String email;
  final String pictureUrl;
  final String state;

  Mission(this.username, this.email, this.pictureUrl, this.state);
}
