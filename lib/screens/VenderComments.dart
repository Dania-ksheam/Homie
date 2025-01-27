// import 'package:flutter/material.dart';


// // Mock data for testing
// class Comment {
//   final String username;
//   final String email;
//   final String content;
//   final String? profilePictureUrl;
//   final int rating;

//   Comment({
//     required this.username,
//     required this.email,
//     required this.content,
//     this.profilePictureUrl,
//     required this.rating,
//   });
// }

// // Simulating a list of mock comments
// List<Comment> mockComments = [
//   Comment(
//     username: 'John Doe',
//     email: 'john@example.com',
//     content: 'Great service, highly recommend!',
//     profilePictureUrl: 'https://example.com/profile.jpg',
//     rating: 5,
//   ),
//   Comment(
//     username: 'Jane Smith',
//     email: 'jane@example.com',
//     content: 'Not bad, could be better.',
//     profilePictureUrl: null, // No profile picture
//     rating: 3,
//   ),
//   Comment(
//     username: 'Alice Brown',
//     email: 'alice@example.com',
//     content: 'Worst experience ever. Will not use again.',
//     profilePictureUrl: 'https://example.com/profile2.jpg',
//     rating: 1,
//   ),
// ];

// class CommentsScreen extends StatelessWidget {
//   // Replace the Future with a mock list for testing
//   List<Comment> getMockComments() {
//     return mockComments;
//   }

//   Widget buildCommentItem(Comment comment) {
//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CircleAvatar(
//               radius: 24,
//               backgroundImage: comment.profilePictureUrl != null
//                   ? NetworkImage(comment.profilePictureUrl!)
//                   : const AssetImage('assets/profile_icon.png') as ImageProvider,
//             ),
//             const SizedBox(width: 12.0),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     comment.username,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16.0,
//                     ),
//                   ),
//                   const SizedBox(height: 4.0),
//                   Text(
//                     comment.email,
//                     style: const TextStyle(
//                       fontSize: 12.0,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   const SizedBox(height: 8.0),
//                   Text(
//                     comment.content,
//                     style: const TextStyle(fontSize: 14.0),
//                   ),
//                   const SizedBox(height: 8.0),
//                   Row(
//                     children: List.generate(5, (index) {
//                       return Icon(
//                         index < comment.rating
//                             ? Icons.star
//                             : Icons.star_border,
//                         color: Colors.amber,
//                         size: 20,
//                       );
//                     }),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<Comment> comments = getMockComments();

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Comments'),
//       ),
//       body: ListView.builder(
//         itemCount: comments.length,
//         itemBuilder: (context, index) {
//           return buildCommentItem(comments[index]);
//         },
//       ),
//     );
//   }
// }

// void main() => runApp(MaterialApp(home: CommentsScreen()));
