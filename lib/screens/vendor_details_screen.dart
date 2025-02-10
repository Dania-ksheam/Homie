
import 'package:flutter/material.dart';

class VendorDetailsScreen extends StatelessWidget {
  final String vendorName;
  final String vendorEmail;
  final String? vendorImage;
  final String bio;
  final int experience;
  final int age;
  final String phoneNumber;
  final String location;
  final String gender;
  final String userAddress;

  const VendorDetailsScreen({
    required this.vendorName,
    required this.vendorEmail,
    this.vendorImage,
    required this.bio,
    required this.experience,
    required this.age,
    required this.phoneNumber,
    required this.location,
    required this.gender,
    required this.userAddress,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vendor Details',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vendorImage != null
                ? Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(vendorImage!),
              ),
            )
                : Center(
              child: CircleAvatar(
                radius: 50,
                child: Icon(Icons.person, size: 50),
              ),
            ),
            SizedBox(height: 16),
            Text(
              vendorName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              vendorEmail,
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Text(
              'Bio: $bio',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Experience: $experience years',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Age: $age',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Phone: $phoneNumber',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Location: $location',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Gender: $gender',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Address: $userAddress',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}