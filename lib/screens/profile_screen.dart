import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:location/location.dart';
import 'package:flag/flag.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

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

  // State variables
  String locationText = 'Tap to set location';
  String selectedAddress = 'Tripoli'; // Default value for dropdowncx
  String selectedCountryCode = '+218'; // Default country code
  String selectedCountry = 'LY'; // Default country
  bool showPassword = false;
  bool isLoading = true;
  File? _selectedImage;

  Map<String, dynamic>? userData;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _ageController = TextEditingController();
    _passwordController = TextEditingController();
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

  /// Pick an image from the gallery
  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _selectedImage = File(image.path);
      });
    }
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
                if (_selectedImage != null)
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: FileImage(_selectedImage!),
                    ),
                  )
                else if (userData!['image'] != null)
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(userData!['image']),
                    ),
                  ),
                const SizedBox(height: 8),
                Center(
                  child: ElevatedButton(
                    onPressed: _pickImage,
                    child: const Text('Change Profile Picture'),
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                  child: Text(
                    _nameController.text,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
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
                InkWell(
                  onTap: _updateLocation,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 12,
                    ),
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
                TextFormField(
                  controller: _passwordController,
                  obscureText: !showPassword,
                  decoration: InputDecoration(
                    labelText: 'Change Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        showPassword ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                    ),
                  ),
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
    super.dispose();
  }
}
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:http/http.dart' as http;
// // // // // // import 'dart:convert';
// // // // // // import 'package:location/location.dart';
// // // // // // import 'package:flag/flag.dart';
// // // // // // import 'package:flutter/services.dart';
// // // // // // import 'package:image_picker/image_picker.dart';
// // // // // // import 'dart:io';
// // // // // //
// // // // // // class ProfileScreen extends StatefulWidget {
// // // // // //   final String userId;
// // // // // //
// // // // // //   const ProfileScreen({required this.userId, Key? key}) : super(key: key);
// // // // // //
// // // // // //   @override
// // // // // //   State<ProfileScreen> createState() => _ProfileScreenState();
// // // // // // }
// // // // // //
// // // // // // class _ProfileScreenState extends State<ProfileScreen> {
// // // // // //   final _formKey = GlobalKey<FormState>();
// // // // // //
// // // // // //   // Controllers
// // // // // //   late final TextEditingController _nameController;
// // // // // //   late final TextEditingController _emailController;
// // // // // //   late final TextEditingController _phoneController;
// // // // // //   late final TextEditingController _ageController;
// // // // // //   late final TextEditingController _passwordController;
// // // // // //
// // // // // //   // State variables
// // // // // //   String locationText = 'Tap to set location';
// // // // // //   String selectedAddress = 'Tripoli'; // Default value for dropdown
// // // // // //   String selectedCountryCode = '+218'; // Default country code
// // // // // //   String selectedCountry = 'LY'; // Default country
// // // // // //   bool showPassword = false;
// // // // // //   bool isLoading = true;
// // // // // //   File? _selectedImage;
// // // // // //
// // // // // //   Map<String, dynamic>? userData;
// // // // // //
// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     _nameController = TextEditingController();
// // // // // //     _emailController = TextEditingController();
// // // // // //     _phoneController = TextEditingController();
// // // // // //     _ageController = TextEditingController();
// // // // // //     _passwordController = TextEditingController();
// // // // // //     _fetchUserData();
// // // // // //   }
// // // // // //
// // // // // //   /// Fetch user data from the backend API
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
// // // // // //           _phoneController.text =
// // // // // //               userData!['phone']?.replaceFirst(selectedCountryCode, '') ?? '';
// // // // // //           _ageController.text = userData!['age']?.toString() ?? '';
// // // // // //           selectedAddress = (userData!['userAddress'] ?? 'Tripoli').trim();
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
// // // // // //
// // // // // //   /// Update user location using GPS
// // // // // //   Future<void> _updateLocation() async {
// // // // // //     final location = Location();
// // // // // //     bool serviceEnabled;
// // // // // //     PermissionStatus permissionGranted;
// // // // // //
// // // // // //     serviceEnabled = await location.serviceEnabled();
// // // // // //     if (!serviceEnabled) {
// // // // // //       serviceEnabled = await location.requestService();
// // // // // //       if (!serviceEnabled) return;
// // // // // //     }
// // // // // //
// // // // // //     permissionGranted = await location.hasPermission();
// // // // // //     if (permissionGranted == PermissionStatus.denied) {
// // // // // //       permissionGranted = await location.requestPermission();
// // // // // //       if (permissionGranted != PermissionStatus.granted) return;
// // // // // //     }
// // // // // //
// // // // // //     final currentLocation = await location.getLocation();
// // // // // //     setState(() {
// // // // // //       locationText = '${currentLocation.latitude}, ${currentLocation.longitude}';
// // // // // //     });
// // // // // //   }
// // // // // //
// // // // // //   /// Pick an image from the gallery
// // // // // //   Future<void> _pickImage() async {
// // // // // //     final ImagePicker picker = ImagePicker();
// // // // // //     final XFile? image = await picker.pickImage(source: ImageSource.gallery);
// // // // // //
// // // // // //     if (image != null) {
// // // // // //       setState(() {
// // // // // //         _selectedImage = File(image.path);
// // // // // //       });
// // // // // //     }
// // // // // //   }
// // // // // //
// // // // // //   /// Save updated profile data to the backend
// // // // // //   Future<void> _saveProfile() async {
// // // // // //     if (_formKey.currentState!.validate() && userData != null) {
// // // // // //       final updatedData = Map<String, dynamic>.from(userData!);
// // // // // //       updatedData['userName'] = _nameController.text;
// // // // // //       updatedData['email'] = _emailController.text;
// // // // // //       updatedData['phone'] = '$selectedCountryCode${_phoneController.text}';
// // // // // //       updatedData['age'] = int.tryParse(_ageController.text) ?? 0;
// // // // // //       updatedData['userAddress'] = selectedAddress;
// // // // // //
// // // // // //       if (_passwordController.text.isNotEmpty) {
// // // // // //         updatedData['password'] = _passwordController.text;
// // // // // //       }
// // // // // //
// // // // // //       await _updateUserProfile(updatedData);
// // // // // //     }
// // // // // //   }
// // // // // //
// // // // // //   /// Send the updated user data to the backend API
// // // // // //   Future<void> _updateUserProfile(Map<String, dynamic> data) async {
// // // // // //     final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
// // // // // //     try {
// // // // // //       final response = await http.put(
// // // // // //         Uri.parse(url),
// // // // // //         headers: {'Content-Type': 'application/json'},
// // // // // //         body: json.encode(data),
// // // // // //       );
// // // // // //
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
// // // // // //
// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     if (isLoading) {
// // // // // //       return const Scaffold(
// // // // // //         body: Center(child: CircularProgressIndicator()),
// // // // // //       );
// // // // // //     }
// // // // // //
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
// // // // // //                 if (_selectedImage != null)
// // // // // //                   Center(
// // // // // //                     child: CircleAvatar(
// // // // // //                       radius: 50,
// // // // // //                       backgroundImage: FileImage(_selectedImage!),
// // // // // //                     ),
// // // // // //                   )
// // // // // //                 else if (userData!['image'] != null)
// // // // // //                   Center(
// // // // // //                     child: CircleAvatar(
// // // // // //                       radius: 50,
// // // // // //                       backgroundImage: NetworkImage(userData!['image']),
// // // // // //                     ),
// // // // // //                   )
// // // // // //                 else
// // // // // //                   Center(
// // // // // //                     child: CircleAvatar(
// // // // // //                       radius: 50,
// // // // // //                       child: const Icon(Icons.person, size: 50),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 const SizedBox(height: 8),
// // // // // //                 Center(
// // // // // //                   child: ElevatedButton(
// // // // // //                     onPressed: () async {
// // // // // //                       await _pickImage();
// // // // // //                     },
// // // // // //                     child: const Text('Change Profile Picture'),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 8),
// // // // // //                 DropdownButtonFormField<String>(
// // // // // //                   value: ['Tripoli', 'Misrata', 'Benghazi']
// // // // // //                       .contains(selectedAddress)
// // // // // //                       ? selectedAddress
// // // // // //                       : 'Tripoli',
// // // // // //                   decoration: const InputDecoration(labelText: 'Address'),
// // // // // //                   items: ['Tripoli', 'Misrata', 'Benghazi']
// // // // // //                       .map((address) => DropdownMenuItem(
// // // // // //                     value: address,
// // // // // //                     child: Text(address),
// // // // // //                   ))
// // // // // //                       .toList(),
// // // // // //                   onChanged: (value) {
// // // // // //                     setState(() {
// // // // // //                       selectedAddress = value!;
// // // // // //                     });
// // // // // //                   },
// // // // // //                 ),
// // // // // //               ],
// // // // // //             ),
// // // // // //           ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:http/http.dart' as http;
// // // // // // import 'dart:convert';
// // // // // // import 'package:location/location.dart';
// // // // // // import 'package:flag/flag.dart';
// // // // // // import 'package:flutter/services.dart';
// // // // // // import 'package:image_picker/image_picker.dart';
// // // // // // import 'dart:io';
// // // // // //
// // // // // // class ProfileScreen extends StatefulWidget {
// // // // // //   final String userId;
// // // // // //
// // // // // //   const ProfileScreen({required this.userId, Key? key}) : super(key: key);
// // // // // //
// // // // // //   @override
// // // // // //   State<ProfileScreen> createState() => _ProfileScreenState();
// // // // // // }
// // // // // //
// // // // // // class _ProfileScreenState extends State<ProfileScreen> {
// // // // // //   final _formKey = GlobalKey<FormState>();
// // // // // //
// // // // // //   // Controllers
// // // // // //   late final TextEditingController _nameController;
// // // // // //   late final TextEditingController _emailController;
// // // // // //   late final TextEditingController _phoneController;
// // // // // //
// // // // // //   // Password controllers
// // // // // //   final TextEditingController _newPasswordController = TextEditingController();
// // // // // //   final TextEditingController _confirmPasswordController = TextEditingController();
// // // // // //
// // // // // //   // State variables
// // // // // //   String locationText = 'Tap to set location';
// // // // // //   String selectedAddress = 'Tripoli'; // Default dropdown value
// // // // // //   String selectedCountryCode = '+218'; // Default country code
// // // // // //   String selectedCountry = 'LY'; // Default country
// // // // // //   bool showPassword = false;
// // // // // //   bool isLoading = true;
// // // // // //   File? _selectedImage;
// // // // // //
// // // // // //   Map<String, dynamic>? userData;
// // // // // //
// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     _nameController = TextEditingController();
// // // // // //     _emailController = TextEditingController();
// // // // // //     _phoneController = TextEditingController();
// // // // // //     _fetchUserData();
// // // // // //   }
// // // // // //
// // // // // //   Future<void> _fetchUserData() async {
// // // // // //     final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
// // // // // //     try {
// // // // // //       final response = await http.get(Uri.parse(url));
// // // // // //       if (response.statusCode == 200) {
// // // // // //         final fetchedData = json.decode(response.body);
// // // // // //         setState(() {
// // // // // //           userData = fetchedData;
// // // // // //           _nameController.text = userData?['userName'] ?? '';
// // // // // //           _emailController.text = userData?['email'] ?? '';
// // // // // //           _phoneController.text = userData?['phone']?.replaceFirst(selectedCountryCode, '') ?? '';
// // // // // //           selectedAddress = userData?['userAddress'] ?? 'Tripoli';
// // // // // //           locationText = userData?['location'] ?? 'Tap to set location';
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
// // // // // //
// // // // // //   Future<void> _updateLocation() async {
// // // // // //     final location = Location();
// // // // // //     try {
// // // // // //       if (!(await location.serviceEnabled()) && !(await location.requestService())) {
// // // // // //         return;
// // // // // //       }
// // // // // //       if ((await location.hasPermission()) == PermissionStatus.denied &&
// // // // // //           (await location.requestPermission()) != PermissionStatus.granted) {
// // // // // //         return;
// // // // // //       }
// // // // // //       final currentLocation = await location.getLocation();
// // // // // //       setState(() {
// // // // // //         locationText = '${currentLocation.latitude}, ${currentLocation.longitude}';
// // // // // //       });
// // // // // //     } catch (error) {
// // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // //         const SnackBar(content: Text('Unable to fetch location')),
// // // // // //       );
// // // // // //     }
// // // // // //   }
// // // // // //
// // // // // //   Future<void> _pickImage() async {
// // // // // //     final ImagePicker picker = ImagePicker();
// // // // // //     final XFile? image = await picker.pickImage(source: ImageSource.gallery);
// // // // // //
// // // // // //     if (image != null) {
// // // // // //       setState(() {
// // // // // //         _selectedImage = File(image.path);
// // // // // //       });
// // // // // //     }
// // // // // //   }
// // // // // //
// // // // // //   Future<void> _showChangePasswordDialog() async {
// // // // // //     showDialog(
// // // // // //       context: context,
// // // // // //       builder: (context) {
// // // // // //         return AlertDialog(
// // // // // //           title: const Text('Change Password'),
// // // // // //           content: Column(
// // // // // //             mainAxisSize: MainAxisSize.min,
// // // // // //             children: [
// // // // // //               TextFormField(
// // // // // //                 controller: _newPasswordController,
// // // // // //                 obscureText: !showPassword,
// // // // // //                 decoration: InputDecoration(
// // // // // //                   labelText: 'New Password',
// // // // // //                   suffixIcon: IconButton(
// // // // // //                     icon: Icon(showPassword ? Icons.visibility : Icons.visibility_off),
// // // // // //                     onPressed: () {
// // // // // //                       setState(() {
// // // // // //                         showPassword = !showPassword;
// // // // // //                       });
// // // // // //                     },
// // // // // //                   ),
// // // // // //                 ),
// // // // // //               ),
// // // // // //               const SizedBox(height: 8),
// // // // // //               TextFormField(
// // // // // //                 controller: _confirmPasswordController,
// // // // // //                 obscureText: !showPassword,
// // // // // //                 decoration: InputDecoration(
// // // // // //                   labelText: 'Confirm Password',
// // // // // //                   suffixIcon: IconButton(
// // // // // //                     icon: Icon(showPassword ? Icons.visibility : Icons.visibility_off),
// // // // // //                     onPressed: () {
// // // // // //                       setState(() {
// // // // // //                         showPassword = !showPassword;
// // // // // //                       });
// // // // // //                     },
// // // // // //                   ),
// // // // // //                 ),
// // // // // //               ),
// // // // // //             ],
// // // // // //           ),
// // // // // //           actions: [
// // // // // //             TextButton(
// // // // // //               onPressed: () {
// // // // // //                 Navigator.pop(context);
// // // // // //               },
// // // // // //               child: const Text('Cancel'),
// // // // // //             ),
// // // // // //             TextButton(
// // // // // //               onPressed: () {
// // // // // //                 if (_newPasswordController.text.isEmpty ||
// // // // // //                     _newPasswordController.text.length < 6) {
// // // // // //                   ScaffoldMessenger.of(context).showSnackBar(
// // // // // //                     const SnackBar(content: Text('Password must be at least 6 characters')),
// // // // // //                   );
// // // // // //                   return;
// // // // // //                 }
// // // // // //                 if (_newPasswordController.text != _confirmPasswordController.text) {
// // // // // //                   ScaffoldMessenger.of(context).showSnackBar(
// // // // // //                     const SnackBar(content: Text('Passwords do not match')),
// // // // // //                   );
// // // // // //                   return;
// // // // // //                 }
// // // // // //                 Navigator.pop(context);
// // // // // //                 ScaffoldMessenger.of(context).showSnackBar(
// // // // // //                   const SnackBar(content: Text('Password updated successfully')),
// // // // // //                 );
// // // // // //               },
// // // // // //               child: const Text('Save'),
// // // // // //             ),
// // // // // //           ],
// // // // // //         );
// // // // // //       },
// // // // // //     );
// // // // // //   }
// // // // // //
// // // // // //   Future<void> _saveProfile() async {
// // // // // //     if (_formKey.currentState!.validate() && userData != null) {
// // // // // //       final updatedData = Map<String, dynamic>.from(userData!);
// // // // // //       updatedData['userName'] = _nameController.text;
// // // // // //       updatedData['email'] = _emailController.text;
// // // // // //       updatedData['phone'] = '$selectedCountryCode${_phoneController.text}';
// // // // // //       updatedData['userAddress'] = selectedAddress;
// // // // // //
// // // // // //       try {
// // // // // //         final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
// // // // // //         final response = await http.put(
// // // // // //           Uri.parse(url),
// // // // // //           headers: {'Content-Type': 'application/json'},
// // // // // //           body: json.encode(updatedData),
// // // // // //         );
// // // // // //         if (response.statusCode == 200) {
// // // // // //           ScaffoldMessenger.of(context).showSnackBar(
// // // // // //             const SnackBar(content: Text('Profile updated successfully')),
// // // // // //           );
// // // // // //         } else {
// // // // // //           throw Exception('Failed to update profile');
// // // // // //         }
// // // // // //       } catch (error) {
// // // // // //         ScaffoldMessenger.of(context).showSnackBar(
// // // // // //           const SnackBar(content: Text('Failed to update profile')),
// // // // // //         );
// // // // // //       }
// // // // // //     }
// // // // // //   }
// // // // // //
// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     if (isLoading) {
// // // // // //       return const Scaffold(
// // // // // //         body: Center(child: CircularProgressIndicator()),
// // // // // //       );
// // // // // //     }
// // // // // //
// // // // // //     return Scaffold(
// // // // // //       appBar: AppBar(
// // // // // //         title: const Text('Profile'),
// // // // // //       ),
// // // // // //       body: Padding(
// // // // // //         padding: const EdgeInsets.all(16.0),
// // // // // //         child: Form(
// // // // // //           key: _formKey,
// // // // // //           child: ListView(
// // // // // //             children: [
// // // // // //               Center(
// // // // // //                 child: GestureDetector(
// // // // // //                   onTap: _pickImage,
// // // // // //                   child: CircleAvatar(
// // // // // //                     radius: 50,
// // // // // //                     backgroundImage: _selectedImage != null
// // // // // //                         ? FileImage(_selectedImage!)
// // // // // //                         : userData!['image'] != null
// // // // // //                         ? NetworkImage(userData!['image'])
// // // // // //                         : null,
// // // // // //                     child: _selectedImage == null && userData!['image'] == null
// // // // // //                         ? const Icon(Icons.add, size: 50)
// // // // // //                         : null,
// // // // // //                   ),
// // // // // //                 ),
// // // // // //               ),
// // // // // //               const SizedBox(height: 16),
// // // // // //               TextFormField(
// // // // // //                 controller: _emailController,
// // // // // //                 decoration: const InputDecoration(labelText: 'Email'),
// // // // // //                 validator: (value) {
// // // // // //                   if (value == null || value.isEmpty) {
// // // // // //                     return 'Email cannot be empty';
// // // // // //                   }
// // // // // //                   if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
// // // // // //                     return 'Enter a valid email';
// // // // // //                   }
// // // // // //                   return null;
// // // // // //                 },
// // // // // //               ),
// // // // // //               const SizedBox(height: 16),
// // // // // //               Row(
// // // // // //                 children: [
// // // // // //                   Flag.fromString(selectedCountry, height: 32, width: 48),
// // // // // //                   const SizedBox(width: 8),
// // // // // //                   Expanded(
// // // // // //                     child: TextFormField(
// // // // // //                       controller: _phoneController,
// // // // // //                       decoration: const InputDecoration(labelText: 'Phone'),
// // // // // //                       keyboardType: TextInputType.phone,
// // // // // //                       inputFormatters: [FilteringTextInputFormatter.digitsOnly],
// // // // // //                       validator: (value) {
// // // // // //                         if (value == null || value.isEmpty) {
// // // // // //                           return 'Phone cannot be empty';
// // // // // //                         }
// // // // // //                         if (value.length != 9) {
// // // // // //                           return 'Phone number must be 9 digits';
// // // // // //                         }
// // // // // //                         return null;
// // // // // //                       },
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ],
// // // // // //               ),
// // // // // //               const SizedBox(height: 16),
// // // // // //               DropdownButtonFormField<String>(
// // // // // //                 value: ['Tripoli', 'Misrata', 'Benghazi'].contains(selectedAddress)
// // // // // //                     ? selectedAddress
// // // // // //                     : 'Tripoli',
// // // // // //                 decoration: const InputDecoration(labelText: 'Address'),
// // // // // //                 items: ['Tripoli', 'Misrata', 'Benghazi']
// // // // // //                     .map((address) => DropdownMenuItem(
// // // // // //                   value: address,
// // // // // //                   child: Text(address),
// // // // // //                 ))
// // // // // //                     .toList(),
// // // // // //                 onChanged: (value) {
// // // // // //                   setState(() {
// // // // // //                     selectedAddress = value!;
// // // // // //                   });
// // // // // //                 },
// // // // // //               ),
// // // // // //               const SizedBox(height: 16),
// // // // // //               InkWell(
// // // // // //                 onTap: _updateLocation,
// // // // // //                 child: Container(
// // // // // //                   padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
// // // // // //                   decoration: BoxDecoration(
// // // // // //                     border: Border.all(color: Colors.grey),
// // // // // //                     borderRadius: BorderRadius.circular(8),
// // // // // //                   ),
// // // // // //                   child: Row(
// // // // // //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // //                     children: [
// // // // // //                       Text(locationText),
// // // // // //                       const Icon(Icons.location_pin),
// // // // // //                     ],
// // // // // //                   ),
// // // // // //                 ),
// // // // // //               ),
// // // // // //               const SizedBox(height: 16),
// // // // // //               ElevatedButton(
// // // // // //                 onPressed: _showChangePasswordDialog,
// // // // // //                 child: const Text('Change Password'),
// // // // // //               ),
// // // // // //               const SizedBox(height: 16),
// // // // // //               ElevatedButton(
// // // // // //                 onPressed: _saveProfile,
// // // // // //                 child: const Text('Save Changes'),
// // // // // //               ),
// // // // // //             ],
// // // // // //           ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // //
// // // // // //   @override
// // // // // //   void dispose() {
// // // // // //     _nameController.dispose();
// // // // // //     _emailController.dispose();
// // // // // //     _phoneController.dispose();
// // // // // //     _newPasswordController.dispose();
// // // // // //     _confirmPasswordController.dispose();
// // // // // //     super.dispose();
// // // // // //   }
// // // // // // }
// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:http/http.dart' as http;
// // // // // import 'dart:convert';
// // // // // import 'package:location/location.dart';
// // // // // import 'package:flag/flag.dart';
// // // // // import 'package:flutter/services.dart';
// // // // // import 'package:image_picker/image_picker.dart';
// // // // // import 'dart:io';
// // // // //
// // // // // class ProfileScreen extends StatefulWidget {
// // // // //   final String userId;
// // // // //
// // // // //   const ProfileScreen({required this.userId, Key? key}) : super(key: key);
// // // // //
// // // // //   @override
// // // // //   State<ProfileScreen> createState() => _ProfileScreenState();
// // // // // }
// // // // //
// // // // // class _ProfileScreenState extends State<ProfileScreen> {
// // // // //   final _formKey = GlobalKey<FormState>();
// // // // //
// // // // //   // Controllers
// // // // //   late final TextEditingController _nameController;
// // // // //   late final TextEditingController _emailController;
// // // // //   late final TextEditingController _phoneController;
// // // // //
// // // // //   // Password controllers
// // // // //   final TextEditingController _newPasswordController = TextEditingController();
// // // // //   final TextEditingController _confirmPasswordController = TextEditingController();
// // // // //
// // // // //   // State variables
// // // // //   String locationText = 'Tap to set location';
// // // // //   String selectedAddress = 'Tripoli';
// // // // //   String selectedCountryCode = '+218';
// // // // //   String selectedCountry = 'LY';
// // // // //   bool showPassword = false;
// // // // //   bool isLoading = true;
// // // // //   File? _selectedImage;
// // // // //
// // // // //   Map<String, dynamic>? userData;
// // // // //
// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     _nameController = TextEditingController();
// // // // //     _emailController = TextEditingController();
// // // // //     _phoneController = TextEditingController();
// // // // //     _fetchUserData();
// // // // //   }
// // // // //
// // // // //   Future<void> _fetchUserData() async {
// // // // //     final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
// // // // //     try {
// // // // //       final response = await http.get(Uri.parse(url));
// // // // //       if (response.statusCode == 200) {
// // // // //         final fetchedData = json.decode(response.body);
// // // // //         setState(() {
// // // // //           userData = fetchedData;
// // // // //           _nameController.text = userData?['userName'] ?? '';
// // // // //           _emailController.text = userData?['email'] ?? '';
// // // // //           _phoneController.text = userData?['phone']?.replaceFirst(selectedCountryCode, '') ?? '';
// // // // //           selectedAddress = userData?['userAddress'] ?? 'Tripoli';
// // // // //           locationText = userData?['location'] ?? 'Tap to set location';
// // // // //           isLoading = false;
// // // // //         });
// // // // //       } else {
// // // // //         throw Exception('Failed to fetch user data');
// // // // //       }
// // // // //     } catch (error) {
// // // // //       setState(() {
// // // // //         isLoading = false;
// // // // //       });
// // // // //       print('Error fetching user data: $error');
// // // // //     }
// // // // //   }
// // // // //
// // // // //   Future<void> _pickImage() async {
// // // // //     final ImagePicker picker = ImagePicker();
// // // // //     final XFile? image = await picker.pickImage(source: ImageSource.gallery);
// // // // //
// // // // //     if (image != null) {
// // // // //       setState(() {
// // // // //         _selectedImage = File(image.path);
// // // // //       });
// // // // //     }
// // // // //   }
// // // // //
// // // // //   Future<void> _showChangePasswordDialog() async {
// // // // //     showDialog(
// // // // //       context: context,
// // // // //       builder: (context) {
// // // // //         return AlertDialog(
// // // // //           title: const Text('Change Password'),
// // // // //           content: Column(
// // // // //             mainAxisSize: MainAxisSize.min,
// // // // //             children: [
// // // // //               TextFormField(
// // // // //                 controller: _newPasswordController,
// // // // //                 obscureText: !showPassword,
// // // // //                 decoration: InputDecoration(
// // // // //                   labelText: 'New Password',
// // // // //                   suffixIcon: IconButton(
// // // // //                     icon: Icon(
// // // // //                       showPassword ? Icons.visibility : Icons.visibility_off,
// // // // //                     ),
// // // // //                     onPressed: () {
// // // // //                       setState(() {
// // // // //                         showPassword = !showPassword;
// // // // //                       });
// // // // //                     },
// // // // //                   ),
// // // // //                 ),
// // // // //               ),
// // // // //               const SizedBox(height: 8),
// // // // //               TextFormField(
// // // // //                 controller: _confirmPasswordController,
// // // // //                 obscureText: !showPassword,
// // // // //                 decoration: InputDecoration(
// // // // //                   labelText: 'Confirm Password',
// // // // //                   suffixIcon: IconButton(
// // // // //                     icon: Icon(
// // // // //                       showPassword ? Icons.visibility : Icons.visibility_off,
// // // // //                     ),
// // // // //                     onPressed: () {
// // // // //                       setState(() {
// // // // //                         showPassword = !showPassword;
// // // // //                       });
// // // // //                     },
// // // // //                   ),
// // // // //                 ),
// // // // //               ),
// // // // //             ],
// // // // //           ),
// // // // //           actions: [
// // // // //             TextButton(
// // // // //               onPressed: () {
// // // // //                 Navigator.pop(context);
// // // // //               },
// // // // //               child: const Text('Cancel'),
// // // // //             ),
// // // // //             TextButton(
// // // // //               onPressed: () {
// // // // //                 if (_newPasswordController.text == _confirmPasswordController.text) {
// // // // //                   Navigator.pop(context);
// // // // //                   ScaffoldMessenger.of(context).showSnackBar(
// // // // //                     const SnackBar(content: Text('Password updated successfully')),
// // // // //                   );
// // // // //                 } else {
// // // // //                   ScaffoldMessenger.of(context).showSnackBar(
// // // // //                     const SnackBar(content: Text('Passwords do not match')),
// // // // //                   );
// // // // //                 }
// // // // //               },
// // // // //               child: const Text('Save'),
// // // // //             ),
// // // // //           ],
// // // // //         );
// // // // //       },
// // // // //     );
// // // // //   }
// // // // //
// // // // //   Future<void> _updateLocation() async {
// // // // //     final location = Location();
// // // // //     bool serviceEnabled;
// // // // //     PermissionStatus permissionGranted;
// // // // //
// // // // //     serviceEnabled = await location.serviceEnabled();
// // // // //     if (!serviceEnabled) {
// // // // //       serviceEnabled = await location.requestService();
// // // // //       if (!serviceEnabled) return;
// // // // //     }
// // // // //
// // // // //     permissionGranted = await location.hasPermission();
// // // // //     if (permissionGranted == PermissionStatus.denied) {
// // // // //       permissionGranted = await location.requestPermission();
// // // // //       if (permissionGranted != PermissionStatus.granted) return;
// // // // //     }
// // // // //
// // // // //     final currentLocation = await location.getLocation();
// // // // //     setState(() {
// // // // //       locationText = '${currentLocation.latitude}, ${currentLocation.longitude}';
// // // // //     });
// // // // //   }
// // // // //
// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     if (isLoading) {
// // // // //       return const Scaffold(
// // // // //         body: Center(child: CircularProgressIndicator()),
// // // // //       );
// // // // //     }
// // // // //
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: const Text('Profile'),
// // // // //       ),
// // // // //       body: Padding(
// // // // //         padding: const EdgeInsets.all(16.0),
// // // // //         child: Form(
// // // // //           key: _formKey,
// // // // //           child: ListView(
// // // // //             children: [
// // // // //               // Profile Avatar with options
// // // // //               Center(
// // // // //                 child: Stack(
// // // // //                   alignment: Alignment.bottomRight,
// // // // //                   children: [
// // // // //                     CircleAvatar(
// // // // //                       radius: 50,
// // // // //                       backgroundImage: _selectedImage != null
// // // // //                           ? FileImage(_selectedImage!)
// // // // //                           : null,
// // // // //                       child: _selectedImage == null
// // // // //                           ? const Icon(Icons.person, size: 50)
// // // // //                           : null,
// // // // //                     ),
// // // // //                     Positioned(
// // // // //                       bottom: 0,
// // // // //                       right: 0,
// // // // //                       child: GestureDetector(
// // // // //                         onTap: () => showModalBottomSheet(
// // // // //                           context: context,
// // // // //                           builder: (context) {
// // // // //                             return SafeArea(
// // // // //                               child: Column(
// // // // //                                 mainAxisSize: MainAxisSize.min,
// // // // //                                 children: [
// // // // //                                   ListTile(
// // // // //                                     leading: const Icon(Icons.image),
// // // // //                                     title: const Text('Change Image'),
// // // // //                                     onTap: () {
// // // // //                                       Navigator.pop(context);
// // // // //                                       _pickImage();
// // // // //                                     },
// // // // //                                   ),
// // // // //                                   if (_selectedImage != null)
// // // // //                                     ListTile(
// // // // //                                       leading: const Icon(Icons.delete),
// // // // //                                       title: const Text('Delete Image'),
// // // // //                                       onTap: () {
// // // // //                                         Navigator.pop(context);
// // // // //                                         setState(() {
// // // // //                                           _selectedImage = null;
// // // // //                                         });
// // // // //                                       },
// // // // //                                     ),
// // // // //                                 ],
// // // // //                               ),
// // // // //                             );
// // // // //                           },
// // // // //                         ),
// // // // //                         child: Container(
// // // // //                           padding: const EdgeInsets.all(4),
// // // // //                           decoration: BoxDecoration(
// // // // //                             color: Colors.blue,
// // // // //                             shape: BoxShape.circle,
// // // // //                           ),
// // // // //                           child: const Icon(Icons.camera_alt, color: Colors.white, size: 18),
// // // // //                         ),
// // // // //                       ),
// // // // //                     ),
// // // // //                   ],
// // // // //                 ),
// // // // //               ),
// // // // //               const SizedBox(height: 8),
// // // // //               // Username with edit icon
// // // // //               Row(
// // // // //                 mainAxisAlignment: MainAxisAlignment.center,
// // // // //                 children: [
// // // // //                   Text(
// // // // //                     _nameController.text,
// // // // //                     style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// // // // //                   ),
// // // // //                   IconButton(
// // // // //                     icon: const Icon(Icons.edit, size: 18, color: Colors.blue),
// // // // //                     onPressed: () {
// // // // //                       showDialog(
// // // // //                         context: context,
// // // // //                         builder: (context) {
// // // // //                           return AlertDialog(
// // // // //                             title: const Text('Edit Username'),
// // // // //                             content: TextFormField(
// // // // //                               controller: _nameController,
// // // // //                               decoration: const InputDecoration(labelText: 'Username'),
// // // // //                               autofocus: true,
// // // // //                             ),
// // // // //                             actions: [
// // // // //                               TextButton(
// // // // //                                 onPressed: () => Navigator.pop(context),
// // // // //                                 child: const Text('Cancel'),
// // // // //                               ),
// // // // //                               TextButton(
// // // // //                                 onPressed: () {
// // // // //                                   setState(() {});
// // // // //                                   Navigator.pop(context);
// // // // //                                 },
// // // // //                                 child: const Text('Save'),
// // // // //                               ),
// // // // //                             ],
// // // // //                           );
// // // // //                         },
// // // // //                       );
// // // // //                     },
// // // // //                   ),
// // // // //                 ],
// // // // //               ),
// // // // //               const SizedBox(height: 16),
// // // // //               TextFormField(
// // // // //                 controller: _emailController,
// // // // //                 decoration: const InputDecoration(labelText: 'Email'),
// // // // //                 validator: (value) {
// // // // //                   if (value == null || value.isEmpty) {
// // // // //                     return 'Email cannot be empty';
// // // // //                   }
// // // // //                   return null;
// // // // //                 },
// // // // //               ),
// // // // //               const SizedBox(height: 16),
// // // // //               Row(
// // // // //                 children: [
// // // // //                   Flag.fromString(selectedCountry, height: 32, width: 48),
// // // // //                   const SizedBox(width: 8),
// // // // //                   Expanded(
// // // // //                     child: TextFormField(
// // // // //                       controller: _phoneController,
// // // // //                       decoration: const InputDecoration(labelText: 'Phone'),
// // // // //                       keyboardType: TextInputType.phone,
// // // // //                       inputFormatters: [FilteringTextInputFormatter.digitsOnly],
// // // // //                       validator: (value) {
// // // // //                         if (value == null || value.isEmpty) {
// // // // //                           return 'Phone cannot be empty';
// // // // //                         }
// // // // //                         if (value.length != 9) {
// // // // //                           return 'Phone number must be 9 digits';
// // // // //                         }
// // // // //                         return null;
// // // // //                       },
// // // // //                     ),
// // // // //                   ),
// // // // //                 ],
// // // // //               ),
// // // // //               const SizedBox(height: 16),
// // // // //               DropdownButtonFormField<String>(
// // // // //                 value: ['Tripoli', 'Misrata', 'Benghazi'].contains(selectedAddress)
// // // // //                     ? selectedAddress
// // // // //                     : 'Tripoli',
// // // // //                 decoration: const InputDecoration(labelText: 'Address'),
// // // // //                 items: ['Tripoli', 'Misrata', 'Benghazi']
// // // // //                     .map((address) => DropdownMenuItem(
// // // // //                   value: address,
// // // // //                   child: Text(address),
// // // // //                 ))
// // // // //                     .toList(),
// // // // //                 onChanged: (value) {
// // // // //                   setState(() {
// // // // //                     selectedAddress = value!;
// // // // //                   });
// // // // //                 },
// // // // //               ),
// // // // //               const SizedBox(height: 16),
// // // // //               InkWell(
// // // // //                 onTap: _updateLocation,
// // // // //                 child: Container(
// // // // //                   padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
// // // // //                   decoration: BoxDecoration(
// // // // //                     border: Border.all(color: Colors.grey),
// // // // //                     borderRadius: BorderRadius.circular(8),
// // // // //                   ),
// // // // //                   child: Row(
// // // // //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // //                     children: [
// // // // //                       Text(locationText),
// // // // //                       const Icon(Icons.location_pin),
// // // // //                     ],
// // // // //                   ),
// // // // //                 ),
// // // // //               ),
// // // // //               const SizedBox(height: 16),
// // // // //               GestureDetector(
// // // // //                 onTap: _showChangePasswordDialog,
// // // // //                 child: const Text(
// // // // //                   'Change Password',
// // // // //                   style: TextStyle(
// // // // //                     color: Colors.blue,
// // // // //                     decoration: TextDecoration.underline,
// // // // //                   ),
// // // // //                 ),
// // // // //               ),
// // // // //               const SizedBox(height: 16),
// // // // //               ElevatedButton(
// // // // //                 onPressed: () {
// // // // //                   if (_formKey.currentState!.validate()) {
// // // // //                     ScaffoldMessenger.of(context).showSnackBar(
// // // // //                       const SnackBar(content: Text('Profile Saved!')),
// // // // //                     );
// // // // //                   }
// // // // //                 },
// // // // //                 child: const Text('Save Changes'),
// // // // //               ),
// // // // //             ],
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // //
// // // // //   @override
// // // // //   void dispose() {
// // // // //     _nameController.dispose();
// // // // //     _emailController.dispose();
// // // // //     _phoneController.dispose();
// // // // //     _newPasswordController.dispose();
// // // // //     _confirmPasswordController.dispose();
// // // // //     super.dispose();
// // // // //   }
// // // // // }
// // // // import 'package:flutter/material.dart';
// // // // import 'package:http/http.dart' as http;
// // // // import 'dart:convert';
// // // // import 'package:location/location.dart';
// // // // import 'package:flag/flag.dart';
// // // // import 'package:flutter/services.dart';
// // // // import 'package:image_picker/image_picker.dart';
// // // // import 'dart:io';
// // // //
// // // // class ProfileScreen extends StatefulWidget {
// // // //   final String userId;
// // // //
// // // //   const ProfileScreen({required this.userId, Key? key}) : super(key: key);
// // // //
// // // //   @override
// // // //   State<ProfileScreen> createState() => _ProfileScreenState();
// // // // }
// // // //
// // // // class _ProfileScreenState extends State<ProfileScreen> {
// // // //   final _formKey = GlobalKey<FormState>();
// // // //
// // // //   // Controllers
// // // //   late final TextEditingController _nameController;
// // // //   late final TextEditingController _emailController;
// // // //   late final TextEditingController _phoneController;
// // // //   late final TextEditingController _passwordController;
// // // //
// // // //   // State variables
// // // //   String locationText = 'Tap to set location';
// // // //   String selectedAddress = 'Tripoli'; // Default dropdown value
// // // //   String selectedCountryCode = '+218'; // Default country code
// // // //   String selectedCountry = 'LY'; // Default country
// // // //   bool showPassword = false;
// // // //   bool isLoading = true;
// // // //   File? _selectedImage;
// // // //
// // // //   Map<String, dynamic>? userData;
// // // //
// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _nameController = TextEditingController();
// // // //     _emailController = TextEditingController();
// // // //     _phoneController = TextEditingController();
// // // //     _passwordController = TextEditingController();
// // // //     _fetchUserData();
// // // //   }
// // // //
// // // //   /// Fetch user data from the backend API
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
// // // //           _phoneController.text =
// // // //               userData!['phone']?.replaceFirst(selectedCountryCode, '') ?? '';
// // // //           selectedAddress = (userData!['userAddress'] ?? 'Tripoli').trim();
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
// // // //
// // // //   /// Pick an image from the gallery
// // // //   Future<void> _pickImage() async {
// // // //     final ImagePicker picker = ImagePicker();
// // // //     final XFile? image = await picker.pickImage(source: ImageSource.gallery);
// // // //
// // // //     if (image != null) {
// // // //       setState(() {
// // // //         _selectedImage = File(image.path);
// // // //       });
// // // //     }
// // // //   }
// // // //
// // // //   /// Reset image to default
// // // //   void _deleteImage() {
// // // //     setState(() {
// // // //       _selectedImage = null;
// // // //     });
// // // //   }
// // // //
// // // //   /// Save updated profile data to the backend
// // // //   Future<void> _saveProfile() async {
// // // //     if (_formKey.currentState!.validate() && userData != null) {
// // // //       final updatedData = Map<String, dynamic>.from(userData!);
// // // //       updatedData['userName'] = _nameController.text;
// // // //       updatedData['email'] = _emailController.text;
// // // //       updatedData['phone'] = '$selectedCountryCode${_phoneController.text}';
// // // //
// // // //       if (_passwordController.text.isNotEmpty) {
// // // //         updatedData['password'] = _passwordController.text;
// // // //       }
// // // //
// // // //       final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
// // // //       try {
// // // //         final response = await http.put(
// // // //           Uri.parse(url),
// // // //           headers: {'Content-Type': 'application/json'},
// // // //           body: json.encode(updatedData),
// // // //         );
// // // //
// // // //         if (response.statusCode == 200) {
// // // //           ScaffoldMessenger.of(context).showSnackBar(
// // // //             const SnackBar(content: Text('Profile updated successfully')),
// // // //           );
// // // //         } else {
// // // //           throw Exception('Failed to update profile');
// // // //         }
// // // //       } catch (error) {
// // // //         print('Error updating profile: $error');
// // // //         ScaffoldMessenger.of(context).showSnackBar(
// // // //           const SnackBar(content: Text('Failed to update profile')),
// // // //         );
// // // //       }
// // // //     }
// // // //   }
// // // //
// // // //   /// Update user location using GPS
// // // //   Future<void> _updateLocation() async {
// // // //     final location = Location();
// // // //     bool serviceEnabled;
// // // //     PermissionStatus permissionGranted;
// // // //
// // // //     serviceEnabled = await location.serviceEnabled();
// // // //     if (!serviceEnabled) {
// // // //       serviceEnabled = await location.requestService();
// // // //       if (!serviceEnabled) return;
// // // //     }
// // // //
// // // //     permissionGranted = await location.hasPermission();
// // // //     if (permissionGranted == PermissionStatus.denied) {
// // // //       permissionGranted = await location.requestPermission();
// // // //       if (permissionGranted != PermissionStatus.granted) return;
// // // //     }
// // // //
// // // //     final currentLocation = await location.getLocation();
// // // //     setState(() {
// // // //       locationText = '${currentLocation.latitude}, ${currentLocation.longitude}';
// // // //     });
// // // //   }
// // // //
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     if (isLoading) {
// // // //       return const Scaffold(
// // // //         body: Center(child: CircularProgressIndicator()),
// // // //       );
// // // //     }
// // // //
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
// // // //                 // Profile Picture with Delete Option
// // // //                 Center(
// // // //                   child: Stack(
// // // //                     alignment: Alignment.bottomRight,
// // // //                     children: [
// // // //                       CircleAvatar(
// // // //                         radius: 50,
// // // //                         backgroundImage: _selectedImage != null
// // // //                             ? FileImage(_selectedImage!)
// // // //                             : null,
// // // //                         child: _selectedImage == null
// // // //                             ? const Icon(Icons.person, size: 50)
// // // //                             : null,
// // // //                       ),
// // // //                       Positioned(
// // // //                         bottom: 0,
// // // //                         right: 0,
// // // //                         child: GestureDetector(
// // // //                           onTap: _pickImage,
// // // //                           child: Container(
// // // //                             padding: const EdgeInsets.all(4),
// // // //                             decoration: BoxDecoration(
// // // //                               color: Colors.blue,
// // // //                               shape: BoxShape.circle,
// // // //                             ),
// // // //                             child: const Icon(Icons.camera_alt, color: Colors.white, size: 18),
// // // //                           ),
// // // //                         ),
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 ),
// // // //                 const SizedBox(height: 8),
// // // //                 if (_selectedImage != null)
// // // //                   Center(
// // // //                     child: TextButton(
// // // //                       onPressed: _deleteImage,
// // // //                       child: const Text(
// // // //                         'Delete Image',
// // // //                         style: TextStyle(color: Colors.red),
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                 const SizedBox(height: 16),
// // // //                 TextFormField(
// // // //                   controller: _nameController,
// // // //                   decoration: const InputDecoration(labelText: 'Username'),
// // // //                   validator: (value) {
// // // //                     if (value == null || value.isEmpty) {
// // // //                       return 'Username cannot be empty';
// // // //                     }
// // // //                     return null;
// // // //                   },
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
// // // //                     Flag.fromString(selectedCountry, height: 32, width: 48),
// // // //                     const SizedBox(width: 8),
// // // //                     Expanded(
// // // //                       child: TextFormField(
// // // //                         controller: _phoneController,
// // // //                         decoration: const InputDecoration(labelText: 'Phone'),
// // // //                         keyboardType: TextInputType.phone,
// // // //                         inputFormatters: [FilteringTextInputFormatter.digitsOnly],
// // // //                         validator: (value) {
// // // //                           if (value == null || value.isEmpty) {
// // // //                             return 'Phone cannot be empty';
// // // //                           }
// // // //                           return null;
// // // //                         },
// // // //                       ),
// // // //                     ),
// // // //                   ],
// // // //                 ),
// // // //                 const SizedBox(height: 16),
// // // //                 InkWell(
// // // //                   onTap: _updateLocation,
// // // //                   child: Container(
// // // //                     padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
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
// // // //                       icon: Icon(showPassword ? Icons.visibility : Icons.visibility_off),
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
// // // //
// // // //   @override
// // // //   void dispose() {
// // // //     _nameController.dispose();
// // // //     _emailController.dispose();
// // // //     _phoneController.dispose();
// // // //     _passwordController.dispose();
// // // //     super.dispose();
// // // //   }
// // // // }
// // // import 'package:flutter/material.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'dart:convert';
// // // import 'dart:io';
// // //
// // // class ProfileScreen extends StatefulWidget {
// // //   final String userId;
// // //
// // //   const ProfileScreen({required this.userId, Key? key}) : super(key: key);
// // //
// // //   @override
// // //   State<ProfileScreen> createState() => _ProfileScreenState();
// // // }
// // //
// // // class _ProfileScreenState extends State<ProfileScreen> {
// // //   final _formKey = GlobalKey<FormState>();
// // //
// // //   // Controllers
// // //   late final TextEditingController _nameController;
// // //   late final TextEditingController _emailController;
// // //   late final TextEditingController _phoneController;
// // //   late final TextEditingController _passwordController;
// // //
// // //   // State variables
// // //   String locationText = 'Tap to set location';
// // //   String selectedAddress = 'Tripoli';
// // //   String? selectedGender; // Allow null initially to handle cases where gender is not set
// // //   bool isLoading = true;
// // //   File? _selectedImage;
// // //
// // //   Map<String, dynamic>? userData;
// // //
// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _nameController = TextEditingController();
// // //     _emailController = TextEditingController();
// // //     _phoneController = TextEditingController();
// // //     _passwordController = TextEditingController();
// // //     _fetchUserData();
// // //   }
// // //
// // //   /// Fetch user data by ID
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
// // //           _phoneController.text = userData!['phone'] ?? '';
// // //           selectedAddress = userData!['userAddress'] ?? 'Tripoli';
// // //           locationText = userData!['location'] ?? 'Tap to set location';
// // //           selectedGender = userData!['gender'] ?? null;
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
// // //
// // //   /// Update user data by ID
// // //   Future<void> _updateUserData() async {
// // //     if (_formKey.currentState!.validate() && userData != null) {
// // //       final updatedData = {
// // //         'userName': _nameController.text,
// // //         'email': _emailController.text,
// // //         'phone': _phoneController.text,
// // //         'password': _passwordController.text.isNotEmpty
// // //             ? _passwordController.text
// // //             : userData!['password'], // Keep current password if not updated
// // //         'userAddress': selectedAddress,
// // //         'location': locationText,
// // //         'gender': selectedGender, // Send gender as a string
// // //         'image': null // Placeholder for image uploading
// // //       };
// // //
// // //       final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
// // //       try {
// // //         final response = await http.put(
// // //           Uri.parse(url),
// // //           headers: {'Content-Type': 'application/json'},
// // //           body: json.encode(updatedData),
// // //         );
// // //
// // //         if (response.statusCode == 200) {
// // //           ScaffoldMessenger.of(context).showSnackBar(
// // //             const SnackBar(content: Text('Profile updated successfully')),
// // //           );
// // //         } else {
// // //           throw Exception('Failed to update profile');
// // //         }
// // //       } catch (error) {
// // //         print('Error updating profile: $error');
// // //         ScaffoldMessenger.of(context).showSnackBar(
// // //           const SnackBar(content: Text('Failed to update profile')),
// // //         );
// // //       }
// // //     }
// // //   }
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     if (isLoading) {
// // //       return const Scaffold(
// // //         body: Center(child: CircularProgressIndicator()),
// // //       );
// // //     }
// // //
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
// // //                 // Profile Picture Placeholder
// // //                 Center(
// // //                   child: CircleAvatar(
// // //                     radius: 50,
// // //                     backgroundImage: userData!['image'] != null
// // //                         ? NetworkImage(userData!['image'])
// // //                         : null,
// // //                     child: userData!['image'] == null
// // //                         ? const Icon(Icons.person, size: 50)
// // //                         : null,
// // //                   ),
// // //                 ),
// // //                 const SizedBox(height: 16),
// // //                 TextFormField(
// // //                   controller: _nameController,
// // //                   decoration: const InputDecoration(labelText: 'Username'),
// // //                   validator: (value) {
// // //                     if (value == null || value.isEmpty) {
// // //                       return 'Username cannot be empty';
// // //                     }
// // //                     return null;
// // //                   },
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
// // //                 TextFormField(
// // //                   controller: _phoneController,
// // //                   decoration: const InputDecoration(labelText: 'Phone'),
// // //                   keyboardType: TextInputType.phone,
// // //                   validator: (value) {
// // //                     if (value == null || value.isEmpty) {
// // //                       return 'Phone number cannot be empty';
// // //                     }
// // //                     return null;
// // //                   },
// // //                 ),
// // //                 const SizedBox(height: 16),
// // //                 TextFormField(
// // //                   controller: _passwordController,
// // //                   obscureText: true,
// // //                   decoration: const InputDecoration(labelText: 'Change Password'),
// // //                 ),
// // //                 const SizedBox(height: 16),
// // //                 DropdownButtonFormField<String>(
// // //                   value: selectedGender,
// // //                   decoration: const InputDecoration(labelText: 'Gender'),
// // //                   items: ['Male', 'Female', 'Other']
// // //                       .map((gender) => DropdownMenuItem(
// // //                     value: gender,
// // //                     child: Text(gender),
// // //                   ))
// // //                       .toList(),
// // //                   onChanged: (value) {
// // //                     setState(() {
// // //                       selectedGender = value; // Set gender as string
// // //                     });
// // //                   },
// // //                   validator: (value) {
// // //                     if (value == null || value.isEmpty) {
// // //                       return 'Please select your gender';
// // //                     }
// // //                     return null;
// // //                   },
// // //                 ),
// // //                 const SizedBox(height: 16),
// // //                 TextFormField(
// // //                   initialValue: locationText,
// // //                   decoration: const InputDecoration(labelText: 'Location'),
// // //                   onChanged: (value) {
// // //                     locationText = value;
// // //                   },
// // //                 ),
// // //                 const SizedBox(height: 16),
// // //                 ElevatedButton(
// // //                   onPressed: _updateUserData,
// // //                   child: const Text('Save Changes'),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // //
// // //   @override
// // //   void dispose() {
// // //     _nameController.dispose();
// // //     _emailController.dispose();
// // //     _phoneController.dispose();
// // //     _passwordController.dispose();
// // //     super.dispose();
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';
// //
// // class ProfileScreen extends StatefulWidget {
// //   final String userId;
// //
// //   const ProfileScreen({required this.userId, Key? key}) : super(key: key);
// //
// //   @override
// //   State<ProfileScreen> createState() => _ProfileScreenState();
// // }
// //
// // class _ProfileScreenState extends State<ProfileScreen> {
// //   final _formKey = GlobalKey<FormState>();
// //
// //   // Controllers
// //   late final TextEditingController _nameController;
// //   late final TextEditingController _emailController;
// //   late final TextEditingController _phoneController;
// //   late final TextEditingController _passwordController;
// //
// //   // State variables
// //   String? selectedGender; // Gender selection
// //   String locationText = 'Tap to set location';
// //   String selectedAddress = 'Tripoli';
// //   bool isLoading = true;
// //   bool isUpdating = false; // Tracks if the update process is in progress
// //   Map<String, dynamic>? userData;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _nameController = TextEditingController();
// //     _emailController = TextEditingController();
// //     _phoneController = TextEditingController();
// //     _passwordController = TextEditingController();
// //     _fetchUserData();
// //   }
// //
// //   /// Fetch user data by ID
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
// //           _phoneController.text = userData!['phone'] ?? '';
// //           selectedAddress = userData!['userAddress'] ?? 'Tripoli';
// //           locationText = userData!['location'] ?? 'Tap to set location';
// //           selectedGender = userData!['gender']; // Match the enum value
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
// //
// //   /// Update user data by ID
// //   Future<void> _updateUserData() async {
// //     if (_formKey.currentState!.validate()) {
// //       setState(() {
// //         isUpdating = true; // Indicate the update is in progress
// //       });
// //
// //       final updatedData = {
// //         'userName': _nameController.text,
// //         'email': _emailController.text,
// //         'phone': _phoneController.text,
// //         'password': _passwordController.text.isNotEmpty
// //             ? _passwordController.text
// //             : userData!['password'], // Retain the existing password if not updated
// //         'userAddress': selectedAddress,
// //         'location': locationText,
// //         'gender': selectedGender, // Send gender as a string
// //       };
// //
// //       final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
// //       try {
// //         final response = await http.put(
// //           Uri.parse(url),
// //           headers: {'Content-Type': 'application/json'},
// //           body: json.encode(updatedData),
// //         );
// //
// //         if (response.statusCode == 200) {
// //           ScaffoldMessenger.of(context).showSnackBar(
// //             const SnackBar(content: Text('Profile updated successfully')),
// //           );
// //         } else {
// //           throw Exception('Failed to update profile');
// //         }
// //       } catch (error) {
// //         print('Error updating profile: $error');
// //         ScaffoldMessenger.of(context).showSnackBar(
// //           SnackBar(content: Text('Failed to update profile: $error')),
// //         );
// //       } finally {
// //         setState(() {
// //           isUpdating = false; // Reset the updating state
// //         });
// //       }
// //     }
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     if (isLoading) {
// //       return const Scaffold(
// //         body: Center(child: CircularProgressIndicator()),
// //       );
// //     }
// //
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
// //                 TextFormField(
// //                   controller: _nameController,
// //                   decoration: const InputDecoration(labelText: 'Username'),
// //                   validator: (value) {
// //                     if (value == null || value.isEmpty) {
// //                       return 'Username cannot be empty';
// //                     }
// //                     return null;
// //                   },
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
// //                 TextFormField(
// //                   controller: _phoneController,
// //                   decoration: const InputDecoration(labelText: 'Phone'),
// //                   keyboardType: TextInputType.phone,
// //                   validator: (value) {
// //                     if (value == null || value.isEmpty) {
// //                       return 'Phone number cannot be empty';
// //                     }
// //                     return null;
// //                   },
// //                 ),
// //                 const SizedBox(height: 16),
// //                 DropdownButtonFormField<String>(
// //                   value: selectedGender,
// //                   decoration: const InputDecoration(labelText: 'Gender'),
// //                   items: ['Male', 'Female']
// //                       .map((gender) => DropdownMenuItem(
// //                     value: gender,
// //                     child: Text(gender),
// //                   ))
// //                       .toList(),
// //                   onChanged: (value) {
// //                     setState(() {
// //                       selectedGender = value; // Update the selected gender
// //                     });
// //                   },
// //                   validator: (value) {
// //                     if (value == null || value.isEmpty) {
// //                       return 'Please select your gender';
// //                     }
// //                     return null;
// //                   },
// //                 ),
// //                 const SizedBox(height: 16),
// //                 TextFormField(
// //                   initialValue: locationText,
// //                   decoration: const InputDecoration(labelText: 'Location'),
// //                   onChanged: (value) {
// //                     locationText = value;
// //                   },
// //                 ),
// //                 const SizedBox(height: 16),
// //                 ElevatedButton(
// //                   onPressed: isUpdating ? null : _updateUserData,
// //                   child: isUpdating
// //                       ? const CircularProgressIndicator(
// //                     valueColor: AlwaysStoppedAnimation(Colors.white),
// //                   )
// //                       : const Text('Save Changes'),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// //
// //   @override
// //   void dispose() {
// //     _nameController.dispose();
// //     _emailController.dispose();
// //     _phoneController.dispose();
// //     _passwordController.dispose();
// //     super.dispose();
// //   }
// // }
// //
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:location/location.dart';
// import 'package:flag/flag.dart';
// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
//
// class ProfileScreen extends StatefulWidget {
//   final String userId;
//
//   const ProfileScreen({required this.userId, Key? key}) : super(key: key);
//
//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }
//
// class _ProfileScreenState extends State<ProfileScreen> {
//   final _formKey = GlobalKey<FormState>();
//
//   late final TextEditingController _nameController;
//   late final TextEditingController _emailController;
//   late final TextEditingController _phoneController;
//   late final TextEditingController _ageController;
//   late final TextEditingController _passwordController;
//
//   String locationText = 'Tap to set location';
//   String selectedAddress = 'Tripoli';
//   String selectedCountryCode = '+218';
//   String selectedCountry = 'LY';
//   bool showPassword = false;
//   bool isLoading = true;
//   File? _selectedImage;
//
//   Map<String, dynamic>? userData;
//
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
//
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
//
//   /// Pick an image from the gallery
//   Future<void> _pickImage() async {
//     final ImagePicker picker = ImagePicker();
//     final XFile? image = await picker.pickImage(source: ImageSource.gallery);
//
//     if (image != null) {
//       setState(() {
//         _selectedImage = File(image.path);
//       });
//     }
//   }
//
//   /// Save updated profile data to the backend
//   Future<void> _saveProfile() async {
//     if (_formKey.currentState!.validate() && userData != null) {
//       final updatedData = Map<String, dynamic>.from(userData!);
//       updatedData['userName'] = _nameController.text;
//       updatedData['email'] = _emailController.text;
//       updatedData['phone'] = '$selectedCountryCode${_phoneController.text}';
//       updatedData['age'] = int.tryParse(_ageController.text) ?? 0;
//       updatedData['userAddress'] = selectedAddress;
//
//       if (_passwordController.text.isNotEmpty) {
//         updatedData['password'] = _passwordController.text;
//       }
//
//       await _updateUserProfile(updatedData);
//     }
//   }
//
//   /// Send the updated user data to the backend API
//   Future<void> _updateUserProfile(Map<String, dynamic> data) async {
//     final url = 'https://192.168.0.109:7127/api/User/${widget.userId}';
//     try {
//       final response = await http.put(
//         Uri.parse(url),
//         headers: {'Content-Type': 'application/json'},
//         body: json.encode(data),
//       );
//
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
//
//   @override
//   Widget build(BuildContext context) {
//     if (isLoading) {
//       return const Scaffold(
//         body: Center(child: CircularProgressIndicator()),
//       );
//     }
//
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
//                 if (_selectedImage != null)
//                   Center(
//                     child: CircleAvatar(
//                       radius: 50,
//                       backgroundImage: FileImage(_selectedImage!),
//                     ),
//                   )
//                 else if (userData!['image'] != null)
//                   Center(
//                     child: CircleAvatar(
//                       radius: 50,
//                       backgroundImage: NetworkImage(userData!['image']),
//                     ),
//                   ),
//                 const SizedBox(height: 8),
//                 Center(
//                   child: ElevatedButton(
//                     onPressed: _pickImage,
//                     child: const Text('Change Profile Picture'),
//                   ),
//                 ),
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
// }