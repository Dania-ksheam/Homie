// // // import 'package:flutter/material.dart';
// // // import 'package:image_picker/image_picker.dart';
// // // import 'package:location/location.dart';
// // // import 'package:flag/flag.dart';
// // // import 'dart:io';

// // // class VendorProfile extends StatefulWidget {
// // //   @override
// // //   _VendorProfileState createState() => _VendorProfileState();
// // // }

// // // class _VendorProfileState extends State<VendorProfile> {
// // //   final TextEditingController _usernameController = TextEditingController();
// // //   final TextEditingController _bioController = TextEditingController();
// // //   final TextEditingController _phoneController = TextEditingController();
// // //   final TextEditingController _emailController = TextEditingController();
// // //   final TextEditingController _experienceController = TextEditingController();
// // //   final TextEditingController _newPasswordController = TextEditingController();
// // //   final TextEditingController _confirmPasswordController = TextEditingController();
// // //   final TextEditingController _addressController = TextEditingController();
// // //   final TextEditingController _ageController = TextEditingController();

// // //   String? _profileImage;
// // //   String _selectedGender = 'Male'; // Default gender
// // //   final Location _location = Location();

// // //   Future<void> _pickImage() async {
// // //     final ImagePicker _picker = ImagePicker();
// // //     final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
// // //     if (image != null) {
// // //       setState(() {
// // //         _profileImage = image.path;
// // //       });
// // //     }
// // //   }

// // //   void _deleteImage() {
// // //     setState(() {
// // //       _profileImage = null;
// // //     });
// // //   }

// // //   Future<void> _showChangePasswordDialog() async {
// // //     showDialog(
// // //       context: context,
// // //       builder: (BuildContext context) {
// // //         return AlertDialog(
// // //           title: Text("Change Password"),
// // //           content: Column(
// // //             mainAxisSize: MainAxisSize.min,
// // //             children: [
// // //               TextField(
// // //                 controller: _newPasswordController,
// // //                 obscureText: true,
// // //                 decoration: InputDecoration(labelText: "New Password"),
// // //               ),
// // //               TextField(
// // //                 controller: _confirmPasswordController,
// // //                 obscureText: true,
// // //                 decoration: InputDecoration(labelText: "Confirm Password"),
// // //               ),
// // //             ],
// // //           ),
// // //           actions: [
// // //             TextButton(
// // //               onPressed: () => Navigator.pop(context),
// // //               child: Text("Cancel"),
// // //             ),
// // //             TextButton(
// // //               onPressed: () {
// // //                 if (_newPasswordController.text !=
// // //                     _confirmPasswordController.text) {
// // //                   ScaffoldMessenger.of(context).showSnackBar(
// // //                     SnackBar(content: Text("Passwords do not match!")),
// // //                   );
// // //                 } else {
// // //                   Navigator.pop(context);
// // //                   ScaffoldMessenger.of(context).showSnackBar(
// // //                     SnackBar(content: Text("Password changed successfully!")),
// // //                   );
// // //                 }
// // //               },
// // //               child: Text("Save"),
// // //             ),
// // //           ],
// // //         );
// // //       },
// // //     );
// // //   }

// // //   Future<void> _getCurrentLocation() async {
// // //     final LocationData locationData = await _location.getLocation();
// // //     _addressController.text =
// // //         "Lat: ${locationData.latitude}, Long: ${locationData.longitude}";
// // //     ScaffoldMessenger.of(context).showSnackBar(
// // //       SnackBar(
// // //         content: Text(
// // //             "Location: Lat ${locationData.latitude}, Long ${locationData.longitude}"),
// // //       ),
// // //     );
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text("Vendor Profile"),
// // //       ),
// // //       body: Padding(
// // //         padding: const EdgeInsets.all(16.0),
// // //         child: SingleChildScrollView(
// // //           child: Column(
// // //             children: [
// // //               Stack(
// // //                 alignment: Alignment.center,
// // //                 children: [
// // //                   CircleAvatar(
// // //                     radius: 50,
// // //                     backgroundImage: _profileImage != null
// // //                         ? FileImage(File(_profileImage!))
// // //                         : null,
// // //                     child: _profileImage == null
// // //                         ? Icon(Icons.person, size: 50)
// // //                         : null,
// // //                   ),
// // //                   Positioned(
// // //                     bottom: 0,
// // //                     right: 0,
// // //                     child: IconButton(
// // //                       icon: Icon(Icons.add_circle, color: Colors.blue),
// // //                       onPressed: () {
// // //                         showModalBottomSheet(
// // //                           context: context,
// // //                           builder: (BuildContext context) {
// // //                             return Wrap(
// // //                               children: [
// // //                                 ListTile(
// // //                                   leading: Icon(Icons.photo_library),
// // //                                   title: Text("Change Picture"),
// // //                                   onTap: () {
// // //                                     Navigator.pop(context);
// // //                                     _pickImage();
// // //                                   },
// // //                                 ),
// // //                                 ListTile(
// // //                                   leading: Icon(Icons.delete),
// // //                                   title: Text("Delete Picture"),
// // //                                   onTap: () {
// // //                                     Navigator.pop(context);
// // //                                     _deleteImage();
// // //                                   },
// // //                                 ),
// // //                               ],
// // //                             );
// // //                           },
// // //                         );
// // //                       },
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //               const SizedBox(height: 16),
// // //               TextField(
// // //                 controller: _usernameController,
// // //                 decoration: InputDecoration(labelText: "Username"),
// // //               ),
// // //               const SizedBox(height: 16),
// // //               TextField(
// // //                 controller: _bioController,
// // //                 maxLines: 4,
// // //                 decoration: InputDecoration(labelText: "Bio"),
// // //               ),
// // //               const SizedBox(height: 16),
// // //               Row(
// // //                 children: [
// // //                   Flag.fromCode(FlagsCode.LY, height: 20, width: 30),
// // //                   const SizedBox(width: 8),
// // //                   Text("+218"),
// // //                   const SizedBox(width: 8),
// // //                   Expanded(
// // //                     child: TextField(
// // //                       controller: _phoneController,
// // //                       keyboardType: TextInputType.number,
// // //                       maxLength: 9,
// // //                       decoration: InputDecoration(labelText: "Phone"),
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //               const SizedBox(height: 16),
// // //               TextField(
// // //                 controller: _emailController,
// // //                 decoration: InputDecoration(labelText: "Email"),
// // //               ),
// // //               const SizedBox(height: 16),
// // //               TextField(
// // //                 controller: _experienceController,
// // //                 keyboardType: TextInputType.number,
// // //                 decoration: InputDecoration(labelText: "Experience"),
// // //               ),
// // //               const SizedBox(height: 16),
// // //               DropdownButtonFormField<String>(
// // //                 value: _selectedGender,
// // //                 items: [
// // //                   DropdownMenuItem(value: 'Male', child: Text("Male")),
// // //                   DropdownMenuItem(value: 'Female', child: Text("Female")),
// // //                 ],
// // //                 onChanged: (value) {
// // //                   setState(() {
// // //                     _selectedGender = value!;
// // //                   });
// // //                 },
// // //                 decoration: InputDecoration(labelText: "Gender"),
// // //               ),
// // //               const SizedBox(height: 16),
// // //               TextField(
// // //                 controller: _ageController,
// // //                 keyboardType: TextInputType.number,
// // //                 decoration: InputDecoration(labelText: "Age"),
// // //               ),
// // //               const SizedBox(height: 16),
// // //               TextField(
// // //                 controller: _addressController,
// // //                 decoration: InputDecoration(
// // //                   labelText: "Address",
// // //                   suffixIcon: IconButton(
// // //                     icon: Icon(Icons.my_location, color: Colors.blue),
// // //                     onPressed: _getCurrentLocation,
// // //                   ),
// // //                 ),
// // //               ),
// // //               const SizedBox(height: 32),
// // //               ElevatedButton(
// // //                 onPressed: () {
// // //                   ScaffoldMessenger.of(context).showSnackBar(
// // //                     SnackBar(content: Text("Profile Updated Successfully!")),
// // //                   );
// // //                 },
// // //                 child: Text("Save Changes"),
// // //               ),
// // //               const SizedBox(height: 16),
// // //               Align(
// // //                 alignment: Alignment.bottomLeft,
// // //                 child: TextButton(
// // //                   onPressed: _showChangePasswordDialog,
// // //                   child: Text("Change Password"),
// // //                 ),
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:image_picker/image_picker.dart';
// // import 'package:location/location.dart';
// // import 'package:flag/flag.dart';
// // import 'dart:io';

// // class VendorProfile extends StatefulWidget {
// //   @override
// //   _VendorProfileState createState() => _VendorProfileState();
// // }

// // class _VendorProfileState extends State<VendorProfile> {
// //   final TextEditingController _usernameController = TextEditingController();
// //   final TextEditingController _bioController = TextEditingController();
// //   final TextEditingController _phoneController = TextEditingController();
// //   final TextEditingController _emailController = TextEditingController();
// //   final TextEditingController _experienceController = TextEditingController();
// //   final TextEditingController _newPasswordController = TextEditingController();
// //   final TextEditingController _confirmPasswordController =
// //       TextEditingController();
// //   final TextEditingController _addressController = TextEditingController();
// //   final TextEditingController _userAddressController = TextEditingController();
// //   final TextEditingController _ageController = TextEditingController();

// //   String? _profileImage;
// //   String _selectedGender = 'Male'; // Default gender
// //   final Location _location = Location();

// //   Future<void> _pickImage() async {
// //     final ImagePicker _picker = ImagePicker();
// //     final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
// //     if (image != null) {
// //       setState(() {
// //         _profileImage = image.path;
// //       });
// //     }
// //   }

// //   void _deleteImage() {
// //     setState(() {
// //       _profileImage = null;
// //     });
// //   }

// //   Future<void> _getCurrentLocation() async {
// //     final LocationData locationData = await _location.getLocation();
// //     _addressController.text =
// //         "Lat: ${locationData.latitude}, Long: ${locationData.longitude}";
// //     ScaffoldMessenger.of(context).showSnackBar(
// //       SnackBar(
// //         content: Text("Location updated!"),
// //       ),
// //     );
// //   }

// //   Future<void> _showChangePasswordDialog() async {
// //     showDialog(
// //       context: context,
// //       builder: (BuildContext context) {
// //         return AlertDialog(
// //           title: Text("Change Password"),
// //           content: Column(
// //             mainAxisSize: MainAxisSize.min,
// //             children: [
// //               TextField(
// //                 controller: _newPasswordController,
// //                 obscureText: true,
// //                 decoration: InputDecoration(labelText: "New Password"),
// //               ),
// //               TextField(
// //                 controller: _confirmPasswordController,
// //                 obscureText: true,
// //                 decoration: InputDecoration(labelText: "Confirm Password"),
// //               ),
// //             ],
// //           ),
// //           actions: [
// //             TextButton(
// //               onPressed: () => Navigator.pop(context),
// //               child: Text("Cancel"),
// //             ),
// //             TextButton(
// //               onPressed: () {
// //                 if (_newPasswordController.text !=
// //                     _confirmPasswordController.text) {
// //                   ScaffoldMessenger.of(context).showSnackBar(
// //                     SnackBar(content: Text("Passwords do not match")),
// //                   );
// //                 } else {
// //                   Navigator.pop(context);
// //                   ScaffoldMessenger.of(context).showSnackBar(
// //                     SnackBar(content: Text("Password changed successfully")),
// //                   );
// //                 }
// //               },
// //               child: Text("Save"),
// //             ),
// //           ],
// //         );
// //       },
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Profile"),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: SingleChildScrollView(
// //           child: Column(
// //             children: [
// //               Stack(
// //                 alignment: Alignment.center,
// //                 children: [
// //                   CircleAvatar(
// //                     radius: 50,
// //                     backgroundImage: _profileImage != null
// //                         ? FileImage(File(_profileImage!))
// //                         : null,
// //                     child: _profileImage == null
// //                         ? Icon(Icons.person, size: 50)
// //                         : null,
// //                   ),
// //                   Positioned(
// //                     bottom: 0,
// //                     right: 0,
// //                     child: IconButton(
// //                       icon: Icon(Icons.add_circle, color: Colors.blue),
// //                       onPressed: () {
// //                         showModalBottomSheet(
// //                           context: context,
// //                           builder: (BuildContext context) {
// //                             return Wrap(
// //                               children: [
// //                                 ListTile(
// //                                   leading: Icon(Icons.photo_library),
// //                                   title: Text("Change Picture"),
// //                                   onTap: () {
// //                                     Navigator.pop(context);
// //                                     _pickImage();
// //                                   },
// //                                 ),
// //                                 ListTile(
// //                                   leading: Icon(Icons.delete),
// //                                   title: Text("Delete Picture"),
// //                                   onTap: () {
// //                                     Navigator.pop(context);
// //                                     _deleteImage();
// //                                   },
// //                                 ),
// //                               ],
// //                             );
// //                           },
// //                         );
// //                       },
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //               const SizedBox(height: 16),
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Text(
// //                     _usernameController.text.isEmpty
// //                         ? "Username"
// //                         : _usernameController.text,
// //                     style: const TextStyle(fontWeight: FontWeight.bold),
// //                   ),
// //                   IconButton(
// //                     icon: Icon(Icons.edit),
// //                     onPressed: () {
// //                       setState(() {
// //                         _usernameController.text = '';
// //                       });
// //                     },
// //                   ),
// //                 ],
// //               ),
// //               const SizedBox(height: 16),
// //               TextField(
// //                 controller: _bioController,
// //                 maxLines: 4,
// //                 decoration: InputDecoration(labelText: "Bio"),
// //               ),
// //               const SizedBox(height: 16),
// //               Row(
// //                 children: [
// //                   Flag.fromCode(FlagsCode.LY, height: 20, width: 30),
// //                   const SizedBox(width: 8),
// //                   Text("+218"),
// //                   const SizedBox(width: 8),
// //                   Expanded(
// //                     child: TextField(
// //                       controller: _phoneController,
// //                       keyboardType: TextInputType.number,
// //                       maxLength: 9,
// //                       decoration: InputDecoration(labelText: "Phone"),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //               const SizedBox(height: 16),
// //               TextField(
// //                 controller: _emailController,
// //                 decoration: InputDecoration(labelText: "Email"),
// //               ),
// //               const SizedBox(height: 16),
// //               TextField(
// //                 controller: _experienceController,
// //                 keyboardType: TextInputType.number,
// //                 decoration: InputDecoration(labelText: "Experience"),
// //               ),
// //               const SizedBox(height: 16),
// //               DropdownButtonFormField<String>(
// //                 value: _selectedGender,
// //                 items: [
// //                   DropdownMenuItem(value: 'Male', child: Text("Male")),
// //                   DropdownMenuItem(value: 'Female', child: Text("Female")),
// //                 ],
// //                 onChanged: (value) {
// //                   setState(() {
// //                     _selectedGender = value!;
// //                   });
// //                 },
// //                 decoration: InputDecoration(labelText: "Gender"),
// //               ),
// //               const SizedBox(height: 16),
// //               TextField(
// //                 controller: _addressController,
// //                 decoration: InputDecoration(
// //                   labelText: "Address",
// //                   suffixIcon: IconButton(
// //                     icon: Icon(Icons.location_on),
// //                     onPressed: _getCurrentLocation,
// //                   ),
// //                 ),
// //               ),
// //               const SizedBox(height: 16),
// //               TextField(
// //                 controller: _userAddressController,
// //                 decoration: InputDecoration(labelText: "User Address"),
// //               ),
// //               const SizedBox(height: 16),
// //               TextField(
// //                 controller: _ageController,
// //                 keyboardType: TextInputType.number,
// //                 decoration: InputDecoration(labelText: "Age"),
// //               ),
// //               const SizedBox(height: 32),
// //               ElevatedButton(
// //                 onPressed: () {
// //                   ScaffoldMessenger.of(context).showSnackBar(
// //                     SnackBar(content: Text("Profile Updated Successfully")),
// //                   );
// //                 },
// //                 child: Text("Save Changes"),
// //               ),
// //               const SizedBox(height: 16),
// //               Align(
// //                 alignment: Alignment.bottomLeft,
// //                 child: TextButton(
// //                   onPressed: _showChangePasswordDialog,
// //                   child: Text("Change Password"),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:location/location.dart';
// import 'package:flag/flag.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'dart:io';

// class VendorProfile extends StatefulWidget {
//   final String userId;
//   final String vendorId;

//   const VendorProfile({
//     Key? key,
//     required this.userId,
//     required this.vendorId,
//   }) : super(key: key);

//   @override
//   _VendorProfileState createState() => _VendorProfileState();
// }

// class _VendorProfileState extends State<VendorProfile> {
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _bioController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _experienceController = TextEditingController();
//   final TextEditingController _newPasswordController = TextEditingController();
//   final TextEditingController _confirmPasswordController = TextEditingController();
//   final TextEditingController _addressController = TextEditingController();
//   final TextEditingController _userAddressController = TextEditingController();
//   final TextEditingController _ageController = TextEditingController();

//   String? _profileImage;
//   String _selectedGender = 'Male'; // Default gender
//   final Location _location = Location();
//   bool _isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     _fetchData();
//   }

//   Future<void> _fetchData() async {
//     try {
//       final userResponse = await http.get(
//         Uri.parse('https://192.168.0.109:7127/api/user/${widget.userId}'),
//       );
//       final vendorResponse = await http.get(
//         Uri.parse('https://192.168.0.109:7127/api/venderProfile/${widget.vendorId}'),
//       );

//       if (userResponse.statusCode == 200 && vendorResponse.statusCode == 200) {
//         final userData = jsonDecode(userResponse.body);
//         final vendorData = jsonDecode(vendorResponse.body);

//         setState(() {
//           _usernameController.text = userData['userName'] ?? '';
//           _bioController.text = vendorData['bio'] ?? '';
//           _phoneController.text = userData['phone'] ?? '';
//           _emailController.text = userData['email'] ?? '';
//           _experienceController.text = vendorData['experience']?.toString() ?? '';
//           _addressController.text = userData['location'] ?? '';
//           _userAddressController.text = userData['userAddress'] ?? '';
//           _ageController.text = userData['age']?.toString() ?? '';
//           _selectedGender = userData['gender'] == 1 ? 'Male' : 'Female';
//           _profileImage = userData['image'];
//           _isLoading = false;
//         });
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to fetch data')),
//         );
//       }
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('An error occurred: $e')),
//       );
//     }
//   }

//   Future<void> _pickImage() async {
//     final ImagePicker _picker = ImagePicker();
//     final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
//     if (image != null) {
//       setState(() {
//         _profileImage = image.path;
//       });
//     }
//   }

//   void _deleteImage() {
//     setState(() {
//       _profileImage = null;
//     });
//   }

//   Future<void> _getCurrentLocation() async {
//     final LocationData locationData = await _location.getLocation();
//     _addressController.text =
//         "Lat: ${locationData.latitude}, Long: ${locationData.longitude}";
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text("Location updated!"),
//       ),
//     );
//   }

//   Future<void> _showChangePasswordDialog() async {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text("Change Password"),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 controller: _newPasswordController,
//                 obscureText: true,
//                 decoration: InputDecoration(labelText: "New Password"),
//               ),
//               TextField(
//                 controller: _confirmPasswordController,
//                 obscureText: true,
//                 decoration: InputDecoration(labelText: "Confirm Password"),
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: Text("Cancel"),
//             ),
//             TextButton(
//               onPressed: () {
//                 if (_newPasswordController.text != _confirmPasswordController.text) {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text("Passwords do not match")),
//                   );
//                 } else {
//                   Navigator.pop(context);
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text("Password changed successfully")),
//                   );
//                 }
//               },
//               child: Text("Save"),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Profile"),
//       ),
//       body: _isLoading
//           ? Center(child: CircularProgressIndicator())
//           : Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Stack(
//                       alignment: Alignment.center,
//                       children: [
//                         CircleAvatar(
//                           radius: 50,
//                           backgroundImage: _profileImage != null ? FileImage(File(_profileImage!)) : null,
//                           child: _profileImage == null ? Icon(Icons.person, size: 50) : null,
//                         ),
//                         Positioned(
//                           bottom: 0,
//                           right: 0,
//                           child: IconButton(
//                             icon: Icon(Icons.add_circle, color: Colors.blue),
//                             onPressed: () {
//                               showModalBottomSheet(
//                                 context: context,
//                                 builder: (BuildContext context) {
//                                   return Wrap(
//                                     children: [
//                                       ListTile(
//                                         leading: Icon(Icons.photo_library),
//                                         title: Text("Change Picture"),
//                                         onTap: () {
//                                           Navigator.pop(context);
//                                           _pickImage();
//                                         },
//                                       ),
//                                       ListTile(
//                                         leading: Icon(Icons.delete),
//                                         title: Text("Delete Picture"),
//                                         onTap: () {
//                                           Navigator.pop(context);
//                                           _deleteImage();
//                                         },
//                                       ),
//                                     ],
//                                   );
//                                 },
//                               );
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 16),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           _usernameController.text.isEmpty ? "Username" : _usernameController.text,
//                           style: const TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         IconButton(
//                           icon: Icon(Icons.edit),
//                           onPressed: () {
//                             setState(() {
//                               _usernameController.text = '';
//                             });
//                           },
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 16),
//                     TextField(
//                       controller: _bioController,
//                       maxLines: 4,
//                       decoration: InputDecoration(labelText: "Bio"),
//                     ),
//                     const SizedBox(height: 16),
//                     Row(
//                       children: [
//                         Flag.fromCode(FlagsCode.LY, height: 20, width: 30),
//                         const SizedBox(width: 8),
//                         Text("+218"),
//                         const SizedBox(width: 8),
//                         Expanded(
//                           child: TextField(
//                             controller: _phoneController,
//                             keyboardType: TextInputType.number,
//                             maxLength: 9,
//                             decoration: InputDecoration(labelText: "Phone"),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 16),
//                     TextField(
//                       controller: _emailController,
//                       decoration: InputDecoration(labelText: "Email"),
//                     ),
//                     const SizedBox(height: 16),
//                     TextField(
//                       controller: _experienceController,
//                       keyboardType: TextInputType.number,
//                       decoration: InputDecoration(labelText: "Experience"),
//                     ),
//                     const SizedBox(height: 16),
//                     DropdownButtonFormField<String>(
//                       value: _selectedGender,
//                       items: [
//                         DropdownMenuItem(value: 'Male', child: Text("Male")),
//                         DropdownMenuItem(value: 'Female', child: Text("Female")),
//                       ],
//                       onChanged: (value) {
//                         setState(() {
//                           _selectedGender = value!;
//                         });
//                       },
//                       decoration: InputDecoration(labelText: "Gender"),
//                     ),
//                     const SizedBox(height: 16),
//                     TextField(
//                       controller: _addressController,
//                       decoration: InputDecoration(
//                         labelText: "Address",
//                         suffixIcon: IconButton(
//                           icon: Icon(Icons.location_on),
//                           onPressed: _getCurrentLocation,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     TextField(
//                       controller: _userAddressController,
//                       decoration: InputDecoration(labelText: "User Address"),
//                     ),
//                     const SizedBox(height: 16),
//                     TextField(
//                       controller: _ageController,
//                       keyboardType: TextInputType.number,
//                       decoration: InputDecoration(labelText: "Age"),
//                     ),
//                     const SizedBox(height: 32),
//                     ElevatedButton(
//                       onPressed: () {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(content: Text("Profile Updated Successfully")),
//                         );
//                       },
//                       child: Text("Save Changes"),
//                     ),
//                     const SizedBox(height: 16),
//                     Align(
//                       alignment: Alignment.bottomLeft,
//                       child: TextButton(
//                         onPressed: _showChangePasswordDialog,
//                         child: Text("Change Password"),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:location/location.dart';
import 'package:flag/flag.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

class VendorProfile extends StatefulWidget {
  final String userId;
  final String vendorId;

  const VendorProfile({
    Key? key,
    required this.userId,
    required this.vendorId,
  }) : super(key: key);

  @override
  _VendorProfileState createState() => _VendorProfileState();
}  

class _VendorProfileState extends State<VendorProfile> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _experienceController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _userAddressController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  String? _profileImage;
  String _selectedGender = 'Male'; // Default gender
  final Location _location = Location();
  bool _isLoading = true;
  
  @override
  void initState() {
    super.initState();
    _fetchData();
  }
  
  Future<void> _fetchData() async {
    try {
      // Log the userId and vendorId to debug
      print('Fetching data for userId: ${widget.userId} and vendorId: ${widget.vendorId}');

      final userResponse = await http.get(
        Uri.parse('https://192.168.0.109:7127/api/user/${widget.userId}'),
      );

      final vendorResponse = await http.get(
        Uri.parse(
            'https://192.168.0.109:7127/api/venderProfile/${widget.vendorId}'),
      );
      print('User Response: ${userResponse.body}');
      print('Vendor Response: ${vendorResponse.body}');

      print(jsonDecode(userResponse.body));
      if (userResponse.statusCode == 200 ||
          userResponse.statusCode == 201 && vendorResponse.statusCode == 200 ||
          userResponse.statusCode == 201) {
        final userData = jsonDecode(userResponse.body);
        final vendorData = jsonDecode(vendorResponse.body);

        setState(() {
          _usernameController.text = userData['userName'] ?? '';
          _bioController.text = vendorData['bio'] ?? '';
          _phoneController.text = userData['phone'] ?? '';
          _emailController.text = userData['email'] ?? '';
          _experienceController.text =
              vendorData['experience']?.toString() ?? '';
          _addressController.text = userData['location'] ?? '';
          _userAddressController.text = userData['userAddress'] ?? '';
          _ageController.text = userData['age']?.toString() ?? '';
          _selectedGender = userData['gender'] == 1 ? 'Male' : 'Female';
          _profileImage = userData['image'];
          _isLoading = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to fetch data')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An error occurred: $e')),
      );
    }
  }

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _profileImage = image.path;
      });
    }
  }

  void _deleteImage() {
    setState(() {
      _profileImage = null;
    });
  }

  Future<void> _getCurrentLocation() async {
    final LocationData locationData = await _location.getLocation();
    _addressController.text =
        "Lat: ${locationData.latitude}, Long: ${locationData.longitude}";
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Location updated!"),
      ),
    );
  }

  Future<void> _showChangePasswordDialog() async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Change Password"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _newPasswordController,
                obscureText: true,
                decoration: InputDecoration(labelText: "New Password"),
              ),
              TextField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(labelText: "Confirm Password"),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                if (_newPasswordController.text !=
                    _confirmPasswordController.text) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Passwords do not match")),
                  );
                } else {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Password changed successfully")),
                  );
                }
              },
              child: Text("Save"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: _profileImage != null
                              ? FileImage(File(_profileImage!))
                              : null,
                          child: _profileImage == null
                              ? Icon(Icons.person, size: 50)
                              : null,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: IconButton(
                            icon: Icon(Icons.add_circle, color: Colors.blue),
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return Wrap(
                                    children: [
                                      ListTile(
                                        leading: Icon(Icons.photo_library),
                                        title: Text("Change Picture"),
                                        onTap: () {
                                          Navigator.pop(context);
                                          _pickImage();
                                        },
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.delete),
                                        title: Text("Delete Picture"),
                                        onTap: () {
                                          Navigator.pop(context);
                                          _deleteImage();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _usernameController.text.isEmpty
                              ? "Username"
                              : _usernameController.text,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            setState(() {
                              _usernameController.text = '';
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _bioController,
                      maxLines: 4,
                      decoration: InputDecoration(labelText: "Bio"),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Flag.fromCode(FlagsCode.LY, height: 20, width: 30),
                        const SizedBox(width: 8),
                        Text("+218"),
                        const SizedBox(width: 8),
                        Expanded(
                          child: TextField(
                            controller: _phoneController,
                            keyboardType: TextInputType.number,
                            maxLength: 9,
                            decoration: InputDecoration(labelText: "Phone"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(labelText: "Email"),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _experienceController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: "Experience"),
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: _selectedGender,
                      items: [
                        DropdownMenuItem(value: 'Male', child: Text("Male")),
                        DropdownMenuItem(
                            value: 'Female', child: Text("Female")),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedGender = value!;
                        });
                      },
                      decoration: InputDecoration(labelText: "Gender"),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _addressController,
                      decoration: InputDecoration(
                        labelText: "Address",
                        suffixIcon: IconButton(
                          icon: Icon(Icons.location_on),
                          onPressed: _getCurrentLocation,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _userAddressController,
                      decoration: InputDecoration(labelText: "User Address"),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _ageController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: "Age"),
                    ),
                    const SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text("Profile Updated Successfully")),
                        );
                      },
                      child: Text("Save Changes"),
                    ),
                    const SizedBox(height: 16),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: TextButton(
                        onPressed: _showChangePasswordDialog,
                        child: Text("Change Password"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
    