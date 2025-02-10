
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flag/flag.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../theme.dart';
import 'login_screen.dart';

class ProfileScreen extends StatefulWidget {
  final String userId;

  const ProfileScreen({required this.userId, super.key});

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
  String selectedAddress = 'Tripoli'; // Default value for dropdown
  String selectedCountryCode = '+218'; // Default country code
  String selectedCountry = 'LY'; // Default country
  String selectedGender = 'Male'; // Default gender
  bool isLoading = true;
  File? _selectedImage;

  Map<String, dynamic>? userData;

  // Add these variables
  int _selectedIndex = 0;
  final List<String> _titles = ["Home", "Profile", "Orders"];

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
          selectedGender = (userData!['gender'] ?? 'Male').trim();
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

  /// Remove the profile image
  void _removeImage() {
    setState(() {
      _selectedImage = null;
    });
  }

  /// Show a dialog to choose between changing or deleting the profile picture
  void _showImageOptions() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Profile Picture'),
          content: const Text('Choose an option:'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _pickImage();
              },
              child: const Text('Change'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _removeImage();
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  /// Show a dialog to change the password
  void _showChangePasswordDialog() {
    final _newPasswordController = TextEditingController();
    final _confirmPasswordController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Change Password'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _newPasswordController,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'New Password'),
              ),
              TextField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Confirm Password'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (_newPasswordController.text ==
                    _confirmPasswordController.text) {
                  _passwordController.text = _newPasswordController.text;
                  Navigator.of(context).pop();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Passwords do not match')),
                  );
                }
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
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
      updatedData['gender'] = selectedGender;

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
        title: Text(
          "${_titles[_selectedIndex]}+new mohey edit",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
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
        actions: [
          if (_selectedIndex == 1) ...[
            IconButton(
              icon: const Icon(Icons.logout, color: AppColors.primaryColor),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LogInScreen(),
                  ),
                );
              },
              tooltip: "Log Out",
            ),
          ],
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.grey[300],
            height: 1.5,
          ),
        ),
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
                else if (userData != null && userData!['image'] != null)
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(userData!['image']),
                    ),
                  )
                else
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      child: Icon(Icons.person),
                    ),
                  ),
                const SizedBox(height: 8),
                Center(
                  child: ElevatedButton(
                    onPressed: _showImageOptions,
                    child: const Text('Change/Delete Profile Picture'),
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
                    Text(
                      selectedCountryCode,
                      style: const TextStyle(fontSize: 16),
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
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Age cannot be empty';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  value: selectedGender,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedGender = newValue!;
                    });
                  },
                  items: <String>['Male', 'Female']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  decoration: const InputDecoration(labelText: 'Gender'),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: _showChangePasswordDialog,
                  child: const Text(
                    'Change Password',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
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