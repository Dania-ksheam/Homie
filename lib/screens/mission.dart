// class Mission {
//   final String id;
//   final String name;
//   final MissionState state;
//   final String categoryId;
//   final String userId;
//   final DateTime day;
//   final String location;
//   final String note;

//   Mission({
//     required this.id,
//     required this.name,
//     required this.state,
//     required this.categoryId,
//     required this.userId,
//     required this.day,
//     required this.location,
//     required this.note,
//   });

//   factory Mission.fromJson(Map<String, dynamic> json) {
//     return Mission(
//       id: json['id']?.toString() ?? '',
//       name: json['name'] ?? '',
//       state: MissionState.values[(json['state'] is int) ? json['state'] : int.tryParse(json['state'].toString()) ?? 0],
//       categoryId: json['categoryId']?.toString() ?? '',
//       userId: json['userId']?.toString() ?? '',
//       day: DateTime.tryParse(json['day'].toString()) ?? DateTime.now(),
//       location: json['location'] ?? '',
//       note: json['note'] ?? '',
//     );
//   }
// }

// enum MissionState {
//   Pending,
//   Scheduled,
//   Completed,
//   Cancelled,
// }
