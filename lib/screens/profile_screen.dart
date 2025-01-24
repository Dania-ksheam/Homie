

// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:http/http.dart' as http;
// // // // // // import 'dart:convert';
// // // // // // import 'package:location/location.dart';

// // // // // // class ProfileScreen extends StatefulWidget {
// // // // // //   final String userId;

// // // // // //   const ProfileScreen({required this.userId, Key? key}) : super(key: key);

// // // // // //   @override
// // // // // //   State<ProfileScreen> createState() => _ProfileScreenState();
// // // // // // }

// // // // // // class _ProfileScreenState extends State<ProfileScreen> {
// // // // // //   final _formKey = GlobalKey<FormState>();
// // // // // //   String locationText = 'Tap to set location';
// // // // // //   late TextEditingController _nameController;
// // // // // //   late TextEditingController _emailController;
// // // // // //   late TextEditingController _phoneController;
// // // // // //   late TextEditingController _ageController;
// // // // // //   late TextEditingController _addressController;

// // // // // //   Map<String, dynamic>? userData;
// // // // // //   bool isLoading = true;

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     _nameController = TextEditingController();
// // // // // //     _emailController = TextEditingController();
// // // // // //     _phoneController = TextEditingController();
// // // // // //     _ageController = TextEditingController();
// // // // // //     _addressController = TextEditingController();
// // // // // //     _fetchUserData();
// // // // // //   }

// // // // // //   Future<void> _fetchUserData() async {
// // // // // //     final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
// // // // // //     try {
// // // // // //       final response = await http.get(Uri.parse(url));
// // // // // //       if (response.statusCode == 200) {
// // // // // //         final fetchedData = json.decode(response.body);

// // // // // //         setState(() {
// // // // // //           userData = fetchedData;
// // // // // //           _nameController.text = userData!['userName'] ?? '';
// // // // // //           _emailController.text = userData!['email'] ?? '';
// // // // // //           _phoneController.text = userData!['phone'] ?? '';
// // // // // //           _ageController.text = userData!['age'].toString();
// // // // // //           _addressController.text = userData!['userAddress'] ?? '';
// // // // // //           locationText = userData!['location'] ?? 'Tap to set location';
// // // // // //           isLoading = false;
// // // // // //         });
// // // // // //       } else {
// // // // // //         throw Exception('Failed to fetch user data');
// // // // // //       }
// // // // // //     } catch (error) {
// // // // // //       setState(() {
// // // // // //         isLoading = false;
// // // // // //       });
// // // // // //       print('Error fetching user data: $error');
// // // // // //     }
// // // // // //   }

// // // // // //   Future<void> _updateLocation() async {
// // // // // //     final location = Location();
// // // // // //     final hasPermission = await location.hasPermission();
// // // // // //     if (hasPermission != PermissionStatus.granted) {
// // // // // //       await location.requestPermission();
// // // // // //     }
// // // // // //     final currentLocation = await location.getLocation();
// // // // // //     setState(() {
// // // // // //       locationText = '${currentLocation.latitude}, ${currentLocation.longitude}';
// // // // // //       userData!['location'] = locationText;
// // // // // //     });
// // // // // //   }

// // // // // //   void _saveProfile() async {
// // // // // //     if (_formKey.currentState!.validate() && userData != null) {
// // // // // //       final updatedData = Map<String, dynamic>.from(userData!);
// // // // // //       updatedData['userName'] = _nameController.text;
// // // // // //       updatedData['email'] = _emailController.text;
// // // // // //       updatedData['phone'] = _phoneController.text;
// // // // // //       updatedData['age'] = int.tryParse(_ageController.text) ?? 0;
// // // // // //       updatedData['userAddress'] = _addressController.text;

// // // // // //       await _updateUserProfile(updatedData);
// // // // // //     }
// // // // // //   }

// // // // // //   Future<void> _updateUserProfile(Map<String, dynamic> data) async {
// // // // // //     final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
// // // // // //     try {
// // // // // //       final response = await http.put(
// // // // // //         Uri.parse(url),
// // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // //         body: json.encode(data),
// // // // // //       );

// // // // // //       if (response.statusCode == 200) {
// // // // // //         ScaffoldMessenger.of(context).showSnackBar(
// // // // // //           const SnackBar(content: Text('Profile updated successfully')),
// // // // // //         );
// // // // // //       } else {
// // // // // //         throw Exception('Failed to update profile');
// // // // // //       }
// // // // // //     } catch (error) {
// // // // // //       print('Error updating profile: $error');
// // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // //         const SnackBar(content: Text('Failed to update profile')),
// // // // // //       );
// // // // // //     }
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     if (isLoading) {
// // // // // //       return const Scaffold(
// // // // // //         body: Center(child: CircularProgressIndicator()),
// // // // // //       );
// // // // // //     }

// // // // // //     return Scaffold(
// // // // // //       appBar: AppBar(
// // // // // //         title: const Text('Profile'),
// // // // // //       ),
// // // // // //       body: Padding(
// // // // // //         padding: const EdgeInsets.all(16.0),
// // // // // //         child: Form(
// // // // // //           key: _formKey,
// // // // // //           child: SingleChildScrollView(
// // // // // //             child: Column(
// // // // // //               crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //               children: [
// // // // // //                 if (userData!['image'] != null) ...[
// // // // // //                   Center(
// // // // // //                     child: CircleAvatar(
// // // // // //                       radius: 50,
// // // // // //                       backgroundImage: NetworkImage(userData!['image']),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                   const SizedBox(height: 16),
// // // // // //                 ],
// // // // // //                 TextFormField(
// // // // // //                   controller: _nameController,
// // // // // //                   decoration: const InputDecoration(labelText: 'Name'),
// // // // // //                   validator: (value) {
// // // // // //                     if (value == null || value.isEmpty) {
// // // // // //                       return 'Name cannot be empty';
// // // // // //                     }
// // // // // //                     return null;
// // // // // //                   },
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 16),
// // // // // //                 TextFormField(
// // // // // //                   controller: _emailController,
// // // // // //                   decoration: const InputDecoration(labelText: 'Email'),
// // // // // //                   validator: (value) {
// // // // // //                     if (value == null || value.isEmpty) {
// // // // // //                       return 'Email cannot be empty';
// // // // // //                     }
// // // // // //                     return null;
// // // // // //                   },
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 16),
// // // // // //                 TextFormField(
// // // // // //                   controller: _phoneController,
// // // // // //                   decoration: const InputDecoration(labelText: 'Phone'),
// // // // // //                   validator: (value) {
// // // // // //                     if (value == null || value.isEmpty) {
// // // // // //                       return 'Phone cannot be empty';
// // // // // //                     }
// // // // // //                     return null;
// // // // // //                   },
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 16),
// // // // // //                 TextFormField(
// // // // // //                   controller: _ageController,
// // // // // //                   decoration: const InputDecoration(labelText: 'Age'),
// // // // // //                   keyboardType: TextInputType.number,
// // // // // //                   validator: (value) {
// // // // // //                     if (value == null || value.isEmpty) {
// // // // // //                       return 'Age cannot be empty';
// // // // // //                     }
// // // // // //                     if (int.tryParse(value) == null) {
// // // // // //                       return 'Please enter a valid number';
// // // // // //                     }
// // // // // //                     return null;
// // // // // //                   },
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 16),
// // // // // //                 TextFormField(
// // // // // //                   controller: _addressController,
// // // // // //                   decoration: const InputDecoration(labelText: 'Address'),
// // // // // //                   validator: (value) {
// // // // // //                     if (value == null || value.isEmpty) {
// // // // // //                       return 'Address cannot be empty';
// // // // // //                     }
// // // // // //                     return null;
// // // // // //                   },
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 16),
// // // // // //                 InkWell(
// // // // // //                   onTap: _updateLocation,
// // // // // //                   child: Container(
// // // // // //                     padding: const EdgeInsets.symmetric(
// // // // // //                         vertical: 16, horizontal: 12),
// // // // // //                     decoration: BoxDecoration(
// // // // // //                       border: Border.all(color: Colors.grey),
// // // // // //                       borderRadius: BorderRadius.circular(8),
// // // // // //                     ),
// // // // // //                     child: Row(
// // // // // //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // //                       children: [
// // // // // //                         Text(locationText),
// // // // // //                         const Icon(Icons.location_pin),
// // // // // //                       ],
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 16),
// // // // // //                 ElevatedButton(
// // // // // //                   onPressed: _saveProfile,
// // // // // //                   child: const Text('Save Changes'),
// // // // // //                 ),
// // // // // //               ],
// // // // // //             ),
// // // // // //           ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   @override
// // // // // //   void dispose() {
// // // // // //     _nameController.dispose();
// // // // // //     _emailController.dispose();
// // // // // //     _phoneController.dispose();
// // // // // //     _ageController.dispose();
// // // // // //     _addressController.dispose();
// // // // // //     super.dispose();
// // // // // //   }
// // // // // // }
// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:http/http.dart' as http;
// // // // // import 'dart:convert';
// // // // // import 'package:location/location.dart';

// // // // // class ProfileScreen extends StatefulWidget {
// // // // //   final String userId;

// // // // //   const ProfileScreen({required this.userId, Key? key}) : super(key: key);

// // // // //   @override
// // // // //   State<ProfileScreen> createState() => _ProfileScreenState();
// // // // // }

// // // // // class _ProfileScreenState extends State<ProfileScreen> {
// // // // //   final _formKey = GlobalKey<FormState>();
// // // // //   String locationText = 'Tap to set location';
// // // // //   late TextEditingController _nameController;
// // // // //   late TextEditingController _emailController;
// // // // //   late TextEditingController _phoneController;
// // // // //   late TextEditingController _ageController;
// // // // //   late TextEditingController _addressController;

// // // // //   Map<String, dynamic>? userData;
// // // // //   bool isLoading = true;
// // // // //   bool isSaving = false;

// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     _nameController = TextEditingController();
// // // // //     _emailController = TextEditingController();
// // // // //     _phoneController = TextEditingController();
// // // // //     _ageController = TextEditingController();
// // // // //     _addressController = TextEditingController();
// // // // //     _fetchUserData();
// // // // //   }

// // // // //   Future<void> _fetchUserData() async {
// // // // //     final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
// // // // //     try {
// // // // //       final response = await http.get(Uri.parse(url));
// // // // //       if (response.statusCode == 200) {
// // // // //         final fetchedData = json.decode(response.body);

// // // // //         setState(() {
// // // // //           userData = fetchedData;
// // // // //           _nameController.text = userData!['userName'] ?? '';
// // // // //           _emailController.text = userData!['email'] ?? '';
// // // // //           _phoneController.text = userData!['phone'] ?? '';
// // // // //           _ageController.text = userData!['age'].toString();
// // // // //           _addressController.text = userData!['userAddress'] ?? '';
// // // // //           locationText = userData!['location'] ?? 'Tap to set location';
// // // // //           isLoading = false;
// // // // //         });
// // // // //       } else {
// // // // //         throw Exception('Failed to fetch user data');
// // // // //       }
// // // // //     } catch (error) {
// // // // //       setState(() {
// // // // //         isLoading = false;
// // // // //       });
// // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // //         SnackBar(content: Text('Error fetching user data: $error')),
// // // // //       );
// // // // //     }
// // // // //   }

// // // // //   Future<void> _updateLocation() async {
// // // // //     final location = Location();
// // // // //     final hasPermission = await location.hasPermission();
// // // // //     if (hasPermission != PermissionStatus.granted) {
// // // // //       await location.requestPermission();
// // // // //     }
// // // // //     final currentLocation = await location.getLocation();
// // // // //     setState(() {
// // // // //       locationText = '${currentLocation.latitude}, ${currentLocation.longitude}';
// // // // //       userData!['location'] = locationText;
// // // // //     });
// // // // //   }

// // // // //   Future<void> _updateUserProfile(Map<String, dynamic> data) async {
// // // // //     final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
// // // // //     try {
// // // // //       final response = await http.put(
// // // // //         Uri.parse(url),
// // // // //         headers: {'Content-Type': 'application/json'},
// // // // //         body: json.encode(data),
// // // // //       );

// // // // //       if (response.statusCode == 200) {
// // // // //         ScaffoldMessenger.of(context).showSnackBar(
// // // // //           const SnackBar(content: Text('Profile updated successfully')),
// // // // //         );
// // // // //       } else {
// // // // //         throw Exception('Failed to update profile');
// // // // //       }
// // // // //     } catch (error) {
// // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // //         SnackBar(content: Text('Error updating profile: $error')),
// // // // //       );
// // // // //     }
// // // // //   }

// // // // //   void _saveProfile() async {
// // // // //     if (_formKey.currentState!.validate() && userData != null) {
// // // // //       setState(() {
// // // // //         isSaving = true;
// // // // //       });
// // // // //       final updatedData = {
// // // // //         ...userData!,
// // // // //         'userName': _nameController.text,
// // // // //         'email': _emailController.text,
// // // // //         'phone': _phoneController.text,
// // // // //         'age': int.tryParse(_ageController.text) ?? 0,
// // // // //         'userAddress': _addressController.text,
// // // // //       };

// // // // //       await _updateUserProfile(updatedData);

// // // // //       setState(() {
// // // // //         isSaving = false;
// // // // //       });
// // // // //     }
// // // // //   }

// // // // //   Widget _buildTextField({
// // // // //     required TextEditingController controller,
// // // // //     required String label,
// // // // //     TextInputType keyboardType = TextInputType.text,
// // // // //     String? Function(String?)? validator,
// // // // //   }) {
// // // // //     return TextFormField(
// // // // //       controller: controller,
// // // // //       decoration: InputDecoration(labelText: label),
// // // // //       keyboardType: keyboardType,
// // // // //       validator: validator,
// // // // //     );
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     if (isLoading) {
// // // // //       return const Scaffold(
// // // // //         body: Center(child: CircularProgressIndicator()),
// // // // //       );
// // // // //     }

// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: const Text('Profile'),
// // // // //       ),
// // // // //       body: Padding(
// // // // //         padding: const EdgeInsets.all(16.0),
// // // // //         child: Form(
// // // // //           key: _formKey,
// // // // //           child: SingleChildScrollView(
// // // // //             child: Column(
// // // // //               crossAxisAlignment: CrossAxisAlignment.start,
// // // // //               children: [
// // // // //                 Center(
// // // // //                   child: CircleAvatar(
// // // // //                     radius: 50,
// // // // //                     backgroundImage: userData!['image'] != null
// // // // //                         ? NetworkImage(userData!['image'])
// // // // //                         : AssetImage('assets/default_avatar.png') as ImageProvider,
// // // // //                   ),
// // // // //                 ),
// // // // //                 const SizedBox(height: 16),
// // // // //                 _buildTextField(
// // // // //                   controller: _nameController,
// // // // //                   label: 'Name',
// // // // //                   validator: (value) =>
// // // // //                       value == null || value.isEmpty ? 'Name cannot be empty' : null,
// // // // //                 ),
// // // // //                 const SizedBox(height: 16),
// // // // //                 _buildTextField(
// // // // //                   controller: _emailController,
// // // // //                   label: 'Email',
// // // // //                   validator: (value) =>
// // // // //                       value == null || value.isEmpty ? 'Email cannot be empty' : null,
// // // // //                 ),
// // // // //                 const SizedBox(height: 16),
// // // // //                 _buildTextField(
// // // // //                   controller: _phoneController,
// // // // //                   label: 'Phone',
// // // // //                   validator: (value) =>
// // // // //                       value == null || value.isEmpty ? 'Phone cannot be empty' : null,
// // // // //                 ),
// // // // //                 const SizedBox(height: 16),
// // // // //                 _buildTextField(
// // // // //                   controller: _ageController,
// // // // //                   label: 'Age',
// // // // //                   keyboardType: TextInputType.number,
// // // // //                   validator: (value) {
// // // // //                     if (value == null || value.isEmpty) {
// // // // //                       return 'Age cannot be empty';
// // // // //                     }
// // // // //                     if (int.tryParse(value) == null) {
// // // // //                       return 'Please enter a valid number';
// // // // //                     }
// // // // //                     return null;
// // // // //                   },
// // // // //                 ),
// // // // //                 const SizedBox(height: 16),
// // // // //                 _buildTextField(
// // // // //                   controller: _addressController,
// // // // //                   label: 'Address',
// // // // //                   validator: (value) =>
// // // // //                       value == null || value.isEmpty ? 'Address cannot be empty' : null,
// // // // //                 ),
// // // // //                 const SizedBox(height: 16),
// // // // //                 InkWell(
// // // // //                   onTap: _updateLocation,
// // // // //                   child: Container(
// // // // //                     padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
// // // // //                     decoration: BoxDecoration(
// // // // //                       border: Border.all(color: Colors.grey),
// // // // //                       borderRadius: BorderRadius.circular(8),
// // // // //                     ),
// // // // //                     child: Row(
// // // // //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // //                       children: [
// // // // //                         Text(locationText),
// // // // //                         const Icon(Icons.location_pin),
// // // // //                       ],
// // // // //                     ),
// // // // //                   ),
// // // // //                 ),
// // // // //                 const SizedBox(height: 16),
// // // // //                 ElevatedButton(
// // // // //                   onPressed: isSaving ? null : _saveProfile,
// // // // //                   child: isSaving
// // // // //                       ? const CircularProgressIndicator(
// // // // //                           valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
// // // // //                         )
// // // // //                       : const Text('Save Changes'),
// // // // //                 ),
// // // // //               ],
// // // // //             ),
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   @override
// // // // //   void dispose() {
// // // // //     _nameController.dispose();
// // // // //     _emailController.dispose();
// // // // //     _phoneController.dispose();
// // // // //     _ageController.dispose();
// // // // //     _addressController.dispose();
// // // // //     super.dispose();
// // // // //   }
// // // // // }
// // // // import 'package:flutter/material.dart';
// // // // import 'package:http/http.dart' as http;
// // // // import 'dart:convert';
// // // // import 'package:location/location.dart';

// // // // class ProfileScreen extends StatefulWidget {
// // // //   final String userId;

// // // //   const ProfileScreen({required this.userId, Key? key}) : super(key: key);

// // // //   @override
// // // //   State<ProfileScreen> createState() => _ProfileScreenState();
// // // // }

// // // // class _ProfileScreenState extends State<ProfileScreen> {
// // // //   final _formKey = GlobalKey<FormState>();
// // // //   String locationText = 'Tap to set location';
// // // //   String selectedAddress = 'Tripoli';
// // // //   String selectedCountryCode = '+218';
// // // //   bool showPassword = false;
// // // //   late TextEditingController _nameController;
// // // //   late TextEditingController _emailController;
// // // //   late TextEditingController _phoneController;
// // // //   late TextEditingController _ageController;
// // // //   late TextEditingController _addressController;
// // // //   late TextEditingController _passwordController;

// // // //   Map<String, dynamic>? userData;
// // // //   bool isLoading = true;

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _nameController = TextEditingController();
// // // //     _emailController = TextEditingController();
// // // //     _phoneController = TextEditingController();
// // // //     _ageController = TextEditingController();
// // // //     _addressController = TextEditingController();
// // // //     _passwordController = TextEditingController();
// // // //     _fetchUserData();
// // // //   }

// // // //   Future<void> _fetchUserData() async {
// // // //     final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
// // // //     try {
// // // //       final response = await http.get(Uri.parse(url));
// // // //       if (response.statusCode == 200) {
// // // //         final fetchedData = json.decode(response.body);

// // // //         setState(() {
// // // //           userData = fetchedData;
// // // //           _nameController.text = userData!['userName'] ?? '';
// // // //           _emailController.text = userData!['email'] ?? '';
// // // //           _phoneController.text = userData!['phone'] ?? '';
// // // //           _ageController.text = userData!['age'].toString();
// // // //           selectedAddress = userData!['userAddress'] ?? 'Tripoli';
// // // //           locationText = userData!['location'] ?? 'Tap to set location';
// // // //           isLoading = false;
// // // //         });
// // // //       } else {
// // // //         throw Exception('Failed to fetch user data');
// // // //       }
// // // //     } catch (error) {
// // // //       setState(() {
// // // //         isLoading = false;
// // // //       });
// // // //       print('Error fetching user data: $error');
// // // //     }
// // // //   }

// // // //   Future<void> _updateLocation() async {
// // // //     final location = Location();
// // // //     final hasPermission = await location.hasPermission();
// // // //     if (hasPermission != PermissionStatus.granted) {
// // // //       await location.requestPermission();
// // // //     }
// // // //     final currentLocation = await location.getLocation();
// // // //     setState(() {
// // // //       locationText = '${currentLocation.latitude}, ${currentLocation.longitude}';
// // // //       userData!['location'] = locationText;
// // // //     });
// // // //   }

// // // //   void _saveProfile() async {
// // // //     if (_formKey.currentState!.validate() && userData != null) {
// // // //       final updatedData = Map<String, dynamic>.from(userData!);
// // // //       updatedData['userName'] = _nameController.text;
// // // //       updatedData['email'] = _emailController.text;
// // // //       updatedData['phone'] = '$selectedCountryCode${_phoneController.text}';
// // // //       updatedData['age'] = int.tryParse(_ageController.text) ?? 0;
// // // //       updatedData['userAddress'] = selectedAddress;

// // // //       if (_passwordController.text.isNotEmpty) {
// // // //         updatedData['password'] = _passwordController.text;
// // // //       }

// // // //       await _updateUserProfile(updatedData);
// // // //     }
// // // //   }

// // // //   Future<void> _updateUserProfile(Map<String, dynamic> data) async {
// // // //     final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
// // // //     try {
// // // //       final response = await http.put(
// // // //         Uri.parse(url),
// // // //         headers: {'Content-Type': 'application/json'},
// // // //         body: json.encode(data),
// // // //       );

// // // //       if (response.statusCode == 200) {
// // // //         ScaffoldMessenger.of(context).showSnackBar(
// // // //           const SnackBar(content: Text('Profile updated successfully')),
// // // //         );
// // // //       } else {
// // // //         throw Exception('Failed to update profile');
// // // //       }
// // // //     } catch (error) {
// // // //       print('Error updating profile: $error');
// // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // //         const SnackBar(content: Text('Failed to update profile')),
// // // //       );
// // // //     }
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     if (isLoading) {
// // // //       return const Scaffold(
// // // //         body: Center(child: CircularProgressIndicator()),
// // // //       );
// // // //     }

// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: const Text('Profile'),
// // // //       ),
// // // //       body: Padding(
// // // //         padding: const EdgeInsets.all(16.0),
// // // //         child: Form(
// // // //           key: _formKey,
// // // //           child: SingleChildScrollView(
// // // //             child: Column(
// // // //               crossAxisAlignment: CrossAxisAlignment.start,
// // // //               children: [
// // // //                 if (userData!['image'] != null) ...[
// // // //                   Center(
// // // //                     child: CircleAvatar(
// // // //                       radius: 50,
// // // //                       backgroundImage: NetworkImage(userData!['image']),
// // // //                     ),
// // // //                   ),
// // // //                   const SizedBox(height: 8),
// // // //                 ],
// // // //                 Center(
// // // //                   child: Text(
// // // //                     _nameController.text,
// // // //                     style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// // // //                   ),
// // // //                 ),
// // // //                 const SizedBox(height: 16),
// // // //                 TextFormField(
// // // //                   controller: _emailController,
// // // //                   decoration: const InputDecoration(labelText: 'Email'),
// // // //                   validator: (value) {
// // // //                     if (value == null || value.isEmpty) {
// // // //                       return 'Email cannot be empty';
// // // //                     }
// // // //                     return null;
// // // //                   },
// // // //                 ),
// // // //                 const SizedBox(height: 16),
// // // //                 Row(
// // // //                   children: [
// // // //                     CountryCodePicker(
// // // //                       initialSelection: 'LY',
// // // //                       favorite: ['+218'],
// // // //                       onChanged: (code) {
// // // //                         setState(() {
// // // //                           selectedCountryCode = code.dialCode!;
// // // //                         });
// // // //                       },
// // // //                     ),
// // // //                     Expanded(
// // // //                       child: TextFormField(
// // // //                         controller: _phoneController,
// // // //                         decoration: const InputDecoration(labelText: 'Phone'),
// // // //                         keyboardType: TextInputType.number,
// // // //                         validator: (value) {
// // // //                           if (value == null || value.isEmpty) {
// // // //                             return 'Phone cannot be empty';
// // // //                           }
// // // //                           if (value.length != 9) {
// // // //                             return 'Phone number must be 9 digits';
// // // //                           }
// // // //                           return null;
// // // //                         },
// // // //                       ),
// // // //                     ),
// // // //                   ],
// // // //                 ),
// // // //                 const SizedBox(height: 16),
// // // //                 DropdownButtonFormField<String>(
// // // //                   value: selectedAddress,
// // // //                   items: [
// // // //                     'Tripoli',
// // // //                     'Benghazi',
// // // //                     'Misrata',
// // // //                     'Other'
// // // //                   ].map((address) {
// // // //                     return DropdownMenuItem(
// // // //                       value: address,
// // // //                       child: Text(address),
// // // //                     );
// // // //                   }).toList(),
// // // //                   onChanged: (value) {
// // // //                     setState(() {
// // // //                       selectedAddress = value!;
// // // //                     });
// // // //                   },
// // // //                   decoration: const InputDecoration(labelText: 'Address'),
// // // //                 ),
// // // //                 const SizedBox(height: 16),
// // // //                 InkWell(
// // // //                   onTap: _updateLocation,
// // // //                   child: Container(
// // // //                     padding: const EdgeInsets.symmetric(
// // // //                         vertical: 16, horizontal: 12),
// // // //                     decoration: BoxDecoration(
// // // //                       border: Border.all(color: Colors.grey),
// // // //                       borderRadius: BorderRadius.circular(8),
// // // //                     ),
// // // //                     child: Row(
// // // //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // //                       children: [
// // // //                         Text(locationText),
// // // //                         const Icon(Icons.location_pin),
// // // //                       ],
// // // //                     ),
// // // //                   ),
// // // //                 ),
// // // //                 const SizedBox(height: 16),
// // // //                 TextFormField(
// // // //                   controller: _passwordController,
// // // //                   obscureText: !showPassword,
// // // //                   decoration: InputDecoration(
// // // //                     labelText: 'Change Password',
// // // //                     suffixIcon: IconButton(
// // // //                       icon: Icon(
// // // //                         showPassword ? Icons.visibility : Icons.visibility_off,
// // // //                       ),
// // // //                       onPressed: () {
// // // //                         setState(() {
// // // //                           showPassword = !showPassword;
// // // //                         });
// // // //                       },
// // // //                     ),
// // // //                   ),
// // // //                 ),
// // // //                 const SizedBox(height: 16),
// // // //                 ElevatedButton(
// // // //                   onPressed: _saveProfile,
// // // //                   child: const Text('Save Changes'),
// // // //                 ),
// // // //               ],
// // // //             ),
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   @override
// // // //   void dispose() {
// // // //     _nameController.dispose();
// // // //     _emailController.dispose();
// // // //     _phoneController.dispose();
// // // //     _ageController.dispose();
// // // //     _addressController.dispose();
// // // //     _passwordController.dispose();
// // // //     super.dispose();
// // // //   }
// // // // }

// // // import 'package:flutter/material.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'dart:convert';
// // // import 'package:location/location.dart';
// // // import 'package:flag/flag.dart'; // For country flags
// // // import 'package:flutter/services.dart';

// // // class ProfileScreen extends StatefulWidget {
// // //   final String userId;

// // //   const ProfileScreen({required this.userId, Key? key}) : super(key: key);

// // //   @override
// // //   State<ProfileScreen> createState() => _ProfileScreenState();
// // // }

// // // class _ProfileScreenState extends State<ProfileScreen> {
// // //   final _formKey = GlobalKey<FormState>();

// // //   // Controllers
// // //   late final TextEditingController _nameController;
// // //   late final TextEditingController _emailController;
// // //   late final TextEditingController _phoneController;
// // //   late final TextEditingController _ageController;
// // //   late final TextEditingController _passwordController;

// // //   String locationText = 'Tap to set location';
// // //   String selectedAddress = 'Tripoli';
// // //   String selectedCountryCode = '+218'; // Default country code
// // //   String selectedCountry = 'LY'; // Default country (Libya)
// // //   bool showPassword = false;
// // //   bool isLoading = true;

// // //   Map<String, dynamic>? userData;

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _nameController = TextEditingController();
// // //     _emailController = TextEditingController();
// // //     _phoneController = TextEditingController();
// // //     _ageController = TextEditingController();
// // //     _passwordController = TextEditingController();
// // //     _fetchUserData();
// // //   }

// // //   Future<void> _fetchUserData() async {
// // //     final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
// // //     try {
// // //       final response = await http.get(Uri.parse(url));
// // //       if (response.statusCode == 200) {
// // //         final fetchedData = json.decode(response.body);
// // //         setState(() {
// // //           userData = fetchedData;
// // //           _nameController.text = userData!['userName'] ?? '';
// // //           _emailController.text = userData!['email'] ?? '';
// // //           _phoneController.text = userData!['phone']?.replaceFirst(selectedCountryCode, '') ?? '';
// // //           _ageController.text = userData!['age']?.toString() ?? '';
// // //           selectedAddress = userData!['userAddress'] ?? 'Tripoli';
// // //           locationText = userData!['location'] ?? 'Tap to set location';
// // //           isLoading = false;
// // //         });
// // //       } else {
// // //         throw Exception('Failed to fetch user data');
// // //       }
// // //     } catch (error) {
// // //       setState(() {
// // //         isLoading = false;
// // //       });
// // //       print('Error fetching user data: $error');
// // //     }
// // //   }

// // //   Future<void> _updateLocation() async {
// // //     final location = Location();
// // //     bool serviceEnabled;
// // //     PermissionStatus permissionGranted;

// // //     serviceEnabled = await location.serviceEnabled();
// // //     if (!serviceEnabled) {
// // //       serviceEnabled = await location.requestService();
// // //       if (!serviceEnabled) return;
// // //     }

// // //     permissionGranted = await location.hasPermission();
// // //     if (permissionGranted == PermissionStatus.denied) {
// // //       permissionGranted = await location.requestPermission();
// // //       if (permissionGranted != PermissionStatus.granted) return;
// // //     }

// // //     final currentLocation = await location.getLocation();
// // //     setState(() {
// // //       locationText = '${currentLocation.latitude}, ${currentLocation.longitude}';
// // //     });
// // //   }

// // //   Future<void> _saveProfile() async {
// // //     if (_formKey.currentState!.validate() && userData != null) {
// // //       final updatedData = Map<String, dynamic>.from(userData!);
// // //       updatedData['userName'] = _nameController.text;
// // //       updatedData['email'] = _emailController.text;
// // //       updatedData['phone'] = '$selectedCountryCode${_phoneController.text}';
// // //       updatedData['age'] = int.tryParse(_ageController.text) ?? 0;
// // //       updatedData['userAddress'] = selectedAddress;

// // //       if (_passwordController.text.isNotEmpty) {
// // //         updatedData['password'] = _passwordController.text;
// // //       }

// // //       await _updateUserProfile(updatedData);
// // //     }
// // //   }

// // //   Future<void> _updateUserProfile(Map<String, dynamic> data) async {
// // //     final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
// // //     try {
// // //       final response = await http.put(
// // //         Uri.parse(url),
// // //         headers: {'Content-Type': 'application/json'},
// // //         body: json.encode(data),
// // //       );

// // //       if (response.statusCode == 200) {
// // //         ScaffoldMessenger.of(context).showSnackBar(
// // //           const SnackBar(content: Text('Profile updated successfully')),
// // //         );
// // //       } else {
// // //         throw Exception('Failed to update profile');
// // //       }
// // //     } catch (error) {
// // //       print('Error updating profile: $error');
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //         const SnackBar(content: Text('Failed to update profile')),
// // //       );
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     if (isLoading) {
// // //       return const Scaffold(
// // //         body: Center(child: CircularProgressIndicator()),
// // //       );
// // //     }

// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: const Text('Profile'),
// // //       ),
// // //       body: Padding(
// // //         padding: const EdgeInsets.all(16.0),
// // //         child: Form(
// // //           key: _formKey,
// // //           child: SingleChildScrollView(
// // //             child: Column(
// // //               crossAxisAlignment: CrossAxisAlignment.start,
// // //               children: [
// // //                 if (userData!['image'] != null)
// // //                   Center(
// // //                     child: CircleAvatar(
// // //                       radius: 50,
// // //                       backgroundImage: NetworkImage(userData!['image']),
// // //                     ),
// // //                   ),
// // //                 const SizedBox(height: 8),
// // //                 Center(
// // //                   child: Text(
// // //                     _nameController.text,
// // //                     style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// // //                   ),
// // //                 ),
// // //                 const SizedBox(height: 16),
// // //                 TextFormField(
// // //                   controller: _emailController,
// // //                   decoration: const InputDecoration(labelText: 'Email'),
// // //                   validator: (value) {
// // //                     if (value == null || value.isEmpty) {
// // //                       return 'Email cannot be empty';
// // //                     }
// // //                     return null;
// // //                   },
// // //                 ),
// // //                 const SizedBox(height: 16),
// // //                 Row(
// // //                   children: [
// // //                     Flag.fromString(
// // //                       selectedCountry,
// // //                       height: 32,
// // //                       width: 48,
// // //                     ),
// // //                     const SizedBox(width: 8),
// // //                     Expanded(
// // //                       child: TextFormField(
// // //                         controller: _phoneController,
// // //                         decoration: const InputDecoration(labelText: 'Phone'),
// // //                         keyboardType: TextInputType.phone,
// // //                         inputFormatters: [FilteringTextInputFormatter.digitsOnly],
// // //                         validator: (value) {
// // //                           if (value == null || value.isEmpty) {
// // //                             return 'Phone cannot be empty';
// // //                           }
// // //                           if (value.length != 9) {
// // //                             return 'Phone number must be 9 digits';
// // //                           }
// // //                           return null;
// // //                         },
// // //                       ),
// // //                     ),
// // //                   ],
// // //                 ),
// // //                 const SizedBox(height: 16),
// // //                 DropdownButtonFormField<String>(
// // //                   value: selectedAddress,
// // //                   items: const [
// // //                     DropdownMenuItem(value: 'Tripoli', child: Text('Tripoli')),
// // //                     DropdownMenuItem(value: 'Benghazi', child: Text('Benghazi')),
// // //                     DropdownMenuItem(value: 'Misrata', child: Text('Misrata')),
// // //                     DropdownMenuItem(value: 'Other', child: Text('Other')),
// // //                   ],
// // //                   onChanged: (value) {
// // //                     setState(() {
// // //                       selectedAddress = value!;
// // //                     });
// // //                   },
// // //                   decoration: const InputDecoration(labelText: 'Address'),
// // //                 ),
// // //                 const SizedBox(height: 16),
// // //                 InkWell(
// // //                   onTap: _updateLocation,
// // //                   child: Container(
// // //                     padding: const EdgeInsets.symmetric(
// // //                       vertical: 16,
// // //                       horizontal: 12,
// // //                     ),
// // //                     decoration: BoxDecoration(
// // //                       border: Border.all(color: Colors.grey),
// // //                       borderRadius: BorderRadius.circular(8),
// // //                     ),
// // //                     child: Row(
// // //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                       children: [
// // //                         Text(locationText),
// // //                         const Icon(Icons.location_pin),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 const SizedBox(height: 16),
// // //                 TextFormField(
// // //                   controller: _passwordController,
// // //                   obscureText: !showPassword,
// // //                   decoration: InputDecoration(
// // //                     labelText: 'Change Password',
// // //                     suffixIcon: IconButton(
// // //                       icon: Icon(
// // //                         showPassword ? Icons.visibility : Icons.visibility_off,
// // //                       ),
// // //                       onPressed: () {
// // //                         setState(() {
// // //                           showPassword = !showPassword;
// // //                         });
// // //                       },
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 const SizedBox(height: 16),
// // //                 ElevatedButton(
// // //                   onPressed: _saveProfile,
// // //                   child: const Text('Save Changes'),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   @override
// // //   void dispose() {
// // //     _nameController.dispose();
// // //     _emailController.dispose();
// // //     _phoneController.dispose();
// // //     _ageController.dispose();
// // //     _passwordController.dispose();
// // //     super.dispose();
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';
// // import 'package:location/location.dart';
// // import 'package:flag/flag.dart';
// // import 'package:flutter/services.dart';

// // class ProfileScreen extends StatefulWidget {
// //   final String userId;

// //   const ProfileScreen({required this.userId, Key? key}) : super(key: key);

// //   @override
// //   State<ProfileScreen> createState() => _ProfileScreenState();
// // }

// // class _ProfileScreenState extends State<ProfileScreen> {
// //   final _formKey = GlobalKey<FormState>();

// //   // Controllers
// //   late final TextEditingController _nameController;
// //   late final TextEditingController _emailController;
// //   late final TextEditingController _phoneController;
// //   late final TextEditingController _ageController;
// //   late final TextEditingController _passwordController;

// //   // State variables
// //   String locationText = 'Tap to set location';
// //   String selectedAddress = 'Tripoli'; // Default value for dropdown
// //   String selectedCountryCode = '+218'; // Default country code
// //   String selectedCountry = 'LY'; // Default country
// //   bool showPassword = false;
// //   bool isLoading = true;

// //   Map<String, dynamic>? userData;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _nameController = TextEditingController();
// //     _emailController = TextEditingController();
// //     _phoneController = TextEditingController();
// //     _ageController = TextEditingController();
// //     _passwordController = TextEditingController();
// //     _fetchUserData();
// //   }

// //   /// Fetch user data from the backend API
// //   Future<void> _fetchUserData() async {
// //     final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
// //     try {
// //       final response = await http.get(Uri.parse(url));
// //       if (response.statusCode == 200) {
// //         final fetchedData = json.decode(response.body);
// //         setState(() {
// //           userData = fetchedData;
// //           _nameController.text = userData!['userName'] ?? '';
// //           _emailController.text = userData!['email'] ?? '';
// //           _phoneController.text =
// //               userData!['phone']?.replaceFirst(selectedCountryCode, '') ?? '';
// //           _ageController.text = userData!['age']?.toString() ?? '';
// //           selectedAddress = userData!['userAddress'] ?? 'Tripoli';
// //           locationText = userData!['location'] ?? 'Tap to set location';
// //           isLoading = false;
// //         });
// //       } else {
// //         throw Exception('Failed to fetch user data');
// //       }
// //     } catch (error) {
// //       setState(() {
// //         isLoading = false;
// //       });
// //       print('Error fetching user data: $error');
// //     }
// //   }

// //   /// Update user location using GPS
// //   Future<void> _updateLocation() async {
// //     final location = Location();
// //     bool serviceEnabled;
// //     PermissionStatus permissionGranted;

// //     serviceEnabled = await location.serviceEnabled();
// //     if (!serviceEnabled) {
// //       serviceEnabled = await location.requestService();
// //       if (!serviceEnabled) return;
// //     }

// //     permissionGranted = await location.hasPermission();
// //     if (permissionGranted == PermissionStatus.denied) {
// //       permissionGranted = await location.requestPermission();
// //       if (permissionGranted != PermissionStatus.granted) return;
// //     }

// //     final currentLocation = await location.getLocation();
// //     setState(() {
// //       locationText = '${currentLocation.latitude}, ${currentLocation.longitude}';
// //     });
// //   }

// //   /// Save updated profile data to the backend
// //   Future<void> _saveProfile() async {
// //     if (_formKey.currentState!.validate() && userData != null) {
// //       final updatedData = Map<String, dynamic>.from(userData!);
// //       updatedData['userName'] = _nameController.text;
// //       updatedData['email'] = _emailController.text;
// //       updatedData['phone'] = '$selectedCountryCode${_phoneController.text}';
// //       updatedData['age'] = int.tryParse(_ageController.text) ?? 0;
// //       updatedData['userAddress'] = selectedAddress;

// //       if (_passwordController.text.isNotEmpty) {
// //         updatedData['password'] = _passwordController.text;
// //       }

// //       await _updateUserProfile(updatedData);
// //     }
// //   }

// //   /// Send the updated user data to the backend API
// //   Future<void> _updateUserProfile(Map<String, dynamic> data) async {
// //     final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
// //     try {
// //       final response = await http.put(
// //         Uri.parse(url),
// //         headers: {'Content-Type': 'application/json'},
// //         body: json.encode(data),
// //       );

// //       if (response.statusCode == 200) {
// //         ScaffoldMessenger.of(context).showSnackBar(
// //           const SnackBar(content: Text('Profile updated successfully')),
// //         );
// //       } else {
// //         throw Exception('Failed to update profile');
// //       }
// //     } catch (error) {
// //       print('Error updating profile: $error');
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         const SnackBar(content: Text('Failed to update profile')),
// //       );
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     if (isLoading) {
// //       return const Scaffold(
// //         body: Center(child: CircularProgressIndicator()),
// //       );
// //     }

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Profile'),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Form(
// //           key: _formKey,
// //           child: SingleChildScrollView(
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 if (userData!['image'] != null)
// //                   Center(
// //                     child: CircleAvatar(
// //                       radius: 50,
// //                       backgroundImage: NetworkImage(userData!['image']),
// //                     ),
// //                   ),
// //                 const SizedBox(height: 8),
// //                 Center(
// //                   child: Text(
// //                     _nameController.text,
// //                     style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //                   ),
// //                 ),
// //                 const SizedBox(height: 16),
// //                 TextFormField(
// //                   controller: _emailController,
// //                   decoration: const InputDecoration(labelText: 'Email'),
// //                   validator: (value) {
// //                     if (value == null || value.isEmpty) {
// //                       return 'Email cannot be empty';
// //                     }
// //                     return null;
// //                   },
// //                 ),
// //                 const SizedBox(height: 16),
// //                 Row(
// //                   children: [
// //                     Flag.fromString(
// //                       selectedCountry,
// //                       height: 32,
// //                       width: 48,
// //                     ),
// //                     const SizedBox(width: 8),
// //                     Expanded(
// //                       child: TextFormField(
// //                         controller: _phoneController,
// //                         decoration: const InputDecoration(labelText: 'Phone'),
// //                         keyboardType: TextInputType.phone,
// //                         inputFormatters: [FilteringTextInputFormatter.digitsOnly],
// //                         validator: (value) {
// //                           if (value == null || value.isEmpty) {
// //                             return 'Phone cannot be empty';
// //                           }
// //                           if (value.length != 9) {
// //                             return 'Phone number must be 9 digits';
// //                           }
// //                           return null;
// //                         },
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //                 const SizedBox(height: 16),
// //                 DropdownButtonFormField<String>(
// //                   value: selectedAddress,
// //                   items: const [
// //                     DropdownMenuItem(value: 'Tripoli', child: Text('Tripoli')),
// //                     DropdownMenuItem(value: 'Benghazi', child: Text('Benghazi')),
// //                     DropdownMenuItem(value: 'Misrata', child: Text('Misrata')),
// //                     DropdownMenuItem(value: 'Other', child: Text('Other')),
// //                   ],
// //                   onChanged: (value) {
// //                     setState(() {
// //                       selectedAddress = value!;
// //                     });
// //                   },
// //                   decoration: const InputDecoration(labelText: 'Address'),
// //                 ),
// //                 const SizedBox(height: 16),
// //                 InkWell(
// //                   onTap: _updateLocation,
// //                   child: Container(
// //                     padding: const EdgeInsets.symmetric(
// //                       vertical: 16,
// //                       horizontal: 12,
// //                     ),
// //                     decoration: BoxDecoration(
// //                       border: Border.all(color: Colors.grey),
// //                       borderRadius: BorderRadius.circular(8),
// //                     ),
// //                     child: Row(
// //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                       children: [
// //                         Text(locationText),
// //                         const Icon(Icons.location_pin),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //                 const SizedBox(height: 16),
// //                 TextFormField(
// //                   controller: _passwordController,
// //                   obscureText: !showPassword,
// //                   decoration: InputDecoration(
// //                     labelText: 'Change Password',
// //                     suffixIcon: IconButton(
// //                       icon: Icon(
// //                         showPassword ? Icons.visibility : Icons.visibility_off,
// //                       ),
// //                       onPressed: () {
// //                         setState(() {
// //                           showPassword = !showPassword;
// //                         });
// //                       },
// //                     ),
// //                   ),
// //                 ),
// //                 const SizedBox(height: 16),
// //                 ElevatedButton(
// //                   onPressed: _saveProfile,
// //                   child: const Text('Save Changes'),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   @override
// //   void dispose() {
// //     _nameController.dispose();
// //     _emailController.dispose();
// //     _phoneController.dispose();
// //     _ageController.dispose();
// //     _passwordController.dispose();
// //     super.dispose();
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:location/location.dart';
// import 'package:flag/flag.dart';
// import 'package:flutter/services.dart';

// class ProfileScreen extends StatefulWidget {
//   final String userId;

//   const ProfileScreen({required this.userId, Key? key}) : super(key: key);

//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   final _formKey = GlobalKey<FormState>();

//   // Controllers
//   late final TextEditingController _nameController;
//   late final TextEditingController _emailController;
//   late final TextEditingController _phoneController;
//   late final TextEditingController _ageController;
//   late final TextEditingController _passwordController;

//   // State variables
//   String locationText = 'Tap to set location';
//   String selectedAddress = 'Tripoli'; // Default value for dropdown
//   String selectedCountryCode = '+218'; // Default country code
//   String selectedCountry = 'LY'; // Default country
//   bool showPassword = false;
//   bool isLoading = true;

//   Map<String, dynamic>? userData;

//   @override
//   void initState() {
//     super.initState();
//     _nameController = TextEditingController();
//     _emailController = TextEditingController();
//     _phoneController = TextEditingController();
//     _ageController = TextEditingController();
//     _passwordController = TextEditingController();
//     _fetchUserData();
//   }

//   /// Fetch user data from the backend API
//   Future<void> _fetchUserData() async {
//     final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
//     try {
//       final response = await http.get(Uri.parse(url));
//       if (response.statusCode == 200) {
//         final fetchedData = json.decode(response.body);
//         setState(() {
//           userData = fetchedData;
//           _nameController.text = userData!['userName'] ?? '';
//           _emailController.text = userData!['email'] ?? '';
//           _phoneController.text =
//               userData!['phone']?.replaceFirst(selectedCountryCode, '') ?? '';
//           _ageController.text = userData!['age']?.toString() ?? '';
//           selectedAddress = (userData!['userAddress'] ?? 'Tripoli').trim();
//           locationText = userData!['location'] ?? 'Tap to set location';
//           isLoading = false;
//         });
//       } else {
//         throw Exception('Failed to fetch user data');
//       }
//     } catch (error) {
//       setState(() {
//         isLoading = false;
//       });
//       print('Error fetching user data: $error');
//     }
//   }

//   /// Update user location using GPS
//   Future<void> _updateLocation() async {
//     final location = Location();
//     bool serviceEnabled;
//     PermissionStatus permissionGranted;

//     serviceEnabled = await location.serviceEnabled();
//     if (!serviceEnabled) {
//       serviceEnabled = await location.requestService();
//       if (!serviceEnabled) return;
//     }

//     permissionGranted = await location.hasPermission();
//     if (permissionGranted == PermissionStatus.denied) {
//       permissionGranted = await location.requestPermission();
//       if (permissionGranted != PermissionStatus.granted) return;
//     }

//     final currentLocation = await location.getLocation();
//     setState(() {
//       locationText = '${currentLocation.latitude}, ${currentLocation.longitude}';
//     });
//   }

//   /// Save updated profile data to the backend
//   Future<void> _saveProfile() async {
//     if (_formKey.currentState!.validate() && userData != null) {
//       final updatedData = Map<String, dynamic>.from(userData!);
//       updatedData['userName'] = _nameController.text;
//       updatedData['email'] = _emailController.text;
//       updatedData['phone'] = '$selectedCountryCode${_phoneController.text}';
//       updatedData['age'] = int.tryParse(_ageController.text) ?? 0;
//       updatedData['userAddress'] = selectedAddress;

//       if (_passwordController.text.isNotEmpty) {
//         updatedData['password'] = _passwordController.text;
//       }

//       await _updateUserProfile(updatedData);
//     }
//   }

//   /// Send the updated user data to the backend API
//   Future<void> _updateUserProfile(Map<String, dynamic> data) async {
//     final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
//     try {
//       final response = await http.put(
//         Uri.parse(url),
//         headers: {'Content-Type': 'application/json'},
//         body: json.encode(data),
//       );

//       if (response.statusCode == 200) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Profile updated successfully')),
//         );
//       } else {
//         throw Exception('Failed to update profile');
//       }
//     } catch (error) {
//       print('Error updating profile: $error');
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Failed to update profile')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (isLoading) {
//       return const Scaffold(
//         body: Center(child: CircularProgressIndicator()),
//       );
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Profile'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 if (userData!['image'] != null)
//                   Center(
//                     child: CircleAvatar(
//                       radius: 50,
//                       backgroundImage: NetworkImage(userData!['image']),
//                     ),
//                   ),
//                 const SizedBox(height: 8),
//                 Center(
//                   child: Text(
//                     _nameController.text,
//                     style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 TextFormField(
//                   controller: _emailController,
//                   decoration: const InputDecoration(labelText: 'Email'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Email cannot be empty';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16),
//                 Row(
//                   children: [
//                     Flag.fromString(
//                       selectedCountry,
//                       height: 32,
//                       width: 48,
//                     ),
//                     const SizedBox(width: 8),
//                     Expanded(
//                       child: TextFormField(
//                         controller: _phoneController,
//                         decoration: const InputDecoration(labelText: 'Phone'),
//                         keyboardType: TextInputType.phone,
//                         inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Phone cannot be empty';
//                           }
//                           if (value.length != 9) {
//                             return 'Phone number must be 9 digits';
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 16),
//              //   DropdownButtonFormField<String>(
//                   // value: selectedAddress.isNotEmpty ? selectedAddress : null,
//                   // items: const [
//                   //   DropdownMenuItem(value: 'Tripoli', child: Text('Tripoli')),
//                   //   DropdownMenuItem(value: 'Benghazi', child: Text('Benghazi')),
//                   //   DropdownMenuItem(value: 'Misrata', child: Text('Misrata')),
//                   //   DropdownMenuItem(value: 'Other', child: Text('Other')),
//                   // ],
//                   // onChanged: (value) {
//                   //   setState(() {
//                   //     selectedAddress = value!;
//                   //   });
//                //   },
//                   // decoration: const InputDecoration(labelText: 'Address'),
//                   // validator: (value) {
//                   //   if (value == null || value.isEmpty) {
//                   //     return 'Please select an address';
//                   //   }
//                   //   return null;
//                   // },
//               //  ),
//                 const SizedBox(height: 16),
//                 InkWell(
//                   onTap: _updateLocation,
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 16,
//                       horizontal: 12,
//                     ),
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(locationText),
//                         const Icon(Icons.location_pin),
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 TextFormField(
//                   controller: _passwordController,
//                   obscureText: !showPassword,
//                   decoration: InputDecoration(
//                     labelText: 'Change Password',
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                         showPassword ? Icons.visibility : Icons.visibility_off,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           showPassword = !showPassword;
//                         });
//                       },
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 ElevatedButton(
//                   onPressed: _saveProfile,
//                   child: const Text('Save Changes'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _emailController.dispose();
//     _phoneController.dispose();
//     _ageController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }
// }
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:location/location.dart';
import 'package:flag/flag.dart';
import 'package:flutter/services.dart';

class ProfileScreen extends StatefulWidget {
  final String userId;

  const ProfileScreen({required this.userId, Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  // Controllers
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _phoneController;
  late final TextEditingController _ageController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmPasswordController;

  // State variables
  String locationText = 'Tap to set location';
  String selectedAddress = 'Tripoli'; // Default value for dropdown
  String selectedCountryCode = '+218'; // Default country code
  String selectedCountry = 'LY'; // Default country
  bool showPassword = false;
  bool isLoading = true;
  bool showPasswordFields = false;
  Map<String, dynamic>? userData;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _ageController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    _fetchUserData();
  }

  /// Fetch user data from the backend API
  Future<void> _fetchUserData() async {
    final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final fetchedData = json.decode(response.body);
        setState(() {
          userData = fetchedData;
          _nameController.text = userData!['userName'] ?? '';
          _emailController.text = userData!['email'] ?? '';
          _phoneController.text =
              userData!['phone']?.replaceFirst(selectedCountryCode, '') ?? '';
          _ageController.text = userData!['age']?.toString() ?? '';
          selectedAddress = (userData!['userAddress'] ?? 'Tripoli').trim();
          locationText = userData!['location'] ?? 'Tap to set location';
          isLoading = false;
        });
      } else {
        throw Exception('Failed to fetch user data');
      }
    } catch (error) {
      setState(() {
        isLoading = false;
      });
      print('Error fetching user data: $error');
    }
  }

  /// Update user location using GPS
  Future<void> _updateLocation() async {
    final location = Location();
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) return;
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) return;
    }

    final currentLocation = await location.getLocation();
    setState(() {
      locationText = '${currentLocation.latitude}, ${currentLocation.longitude}';
    });
  }

  /// Save updated profile data to the backend
  Future<void> _saveProfile() async {
    if (_formKey.currentState!.validate() && userData != null) {
      final updatedData = Map<String, dynamic>.from(userData!);
      updatedData['userName'] = _nameController.text;
      updatedData['email'] = _emailController.text;
      updatedData['phone'] = '$selectedCountryCode${_phoneController.text}';
      updatedData['age'] = int.tryParse(_ageController.text) ?? 0;
      updatedData['userAddress'] = selectedAddress;

      if (_passwordController.text.isNotEmpty) {
        updatedData['password'] = _passwordController.text;
      }

      await _updateUserProfile(updatedData);
    }
  }

  /// Send the updated user data to the backend API
  Future<void> _updateUserProfile(Map<String, dynamic> data) async {
    final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
    try {
      final response = await http.put(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(data),
      );

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Profile updated successfully')),
        );
      } else {
        throw Exception('Failed to update profile');
      }
    } catch (error) {
      print('Error updating profile: $error');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to update profile')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (userData!['image'] != null)
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(userData!['image']),
                    ),
                  ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        _nameController.text,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {
                        setState(() {
                          showPasswordFields = false;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email cannot be empty';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Flag.fromString(
                      selectedCountry,
                      height: 32,
                      width: 48,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextFormField(
                        controller: _phoneController,
                        decoration: const InputDecoration(labelText: 'Phone'),
                        keyboardType: TextInputType.phone,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Phone cannot be empty';
                          }
                          if (value.length != 9) {
                            return 'Phone number must be 9 digits';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _ageController,
                  decoration: const InputDecoration(labelText: 'Age'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Age cannot be empty';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _ageController,
                  decoration: const InputDecoration(labelText: 'Address'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Address cannot be empty';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: _updateLocation,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(locationText),
                        const Icon(Icons.location_pin),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                if (showPasswordFields) 
                  Column(
                    children: [
                      TextFormField(
                        controller: _passwordController,
                        obscureText: !showPassword,
                        decoration: InputDecoration(
                          labelText: 'New Password',
                          suffixIcon: IconButton(
                            icon: Icon(showPassword ? Icons.visibility : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value != _confirmPasswordController.text) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _confirmPasswordController,
                        obscureText: !showPassword,
                        decoration: const InputDecoration(
                          labelText: 'Confirm Password',
                        ),
                        validator: (value) {
                          if (value != _passwordController.text) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                      ),
                    ],
                  ) 
                else
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showPasswordFields = true;
                      });
                    },
                    child: const Text('Change Password'),
                  ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _saveProfile,
                  child: const Text('Save Changes'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _ageController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}
