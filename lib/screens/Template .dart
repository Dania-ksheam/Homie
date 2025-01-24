import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:location/location.dart';
import 'dart:io';

class Template extends StatefulWidget {
  final String categoryName;

  const Template({super.key, required this.categoryName});

  @override
  _TemplateState createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  final Location _location = Location();
  String? _currentLocation;
  bool _isFetchingLocation = false;

  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  String? _selectedEducationLevel;
  int? _selectedGrade;
  File? _selectedImage;

  // Education levels and grade ranges
  final List<String> educationLevels = ['Elementary', 'Middle School', 'High School'];
  final Map<String, List<int>> gradeRanges = {
    'Elementary': List.generate(6, (index) => index + 1), // 1–6
    'Middle School': List.generate(3, (index) => index + 7), // 7–9
    'High School': List.generate(3, (index) => index + 10), // 10–12
  };

  // Fetch current location
  Future<void> _getCurrentLocation() async {
    setState(() {
      _isFetchingLocation = true;
    });

    try {
      final bool serviceEnabled = await _location.serviceEnabled();
      if (!serviceEnabled) {
        final bool requestedService = await _location.requestService();
        if (!requestedService) {
          setState(() {
            _isFetchingLocation = false;
          });
          return;
        }
      }

      final PermissionStatus permissionGranted = await _location.hasPermission();
      if (permissionGranted == PermissionStatus.denied) {
        final PermissionStatus requestedPermission = await _location.requestPermission();
        if (requestedPermission != PermissionStatus.granted) {
          setState(() {
            _isFetchingLocation = false;
          });
          return;
        }
      }

      final locationData = await _location.getLocation();
      setState(() {
        _currentLocation =
            '${locationData.latitude}, ${locationData.longitude}'; // Format: "latitude, longitude"
        _isFetchingLocation = false;
      });
    } catch (e) {
      print('Error getting location: $e');
      setState(() {
        _isFetchingLocation = false;
      });
    }
  }

  // Pick an image
  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _selectedImage = File(image.path);
      });
    }
  }

  // Date picker
  Future<void> _pickDate() async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (date != null) {
      setState(() {
        _selectedDate = date;
      });
    }
  }

  // Time picker
  Future<void> _pickTime() async {
    final TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (time != null) {
      setState(() {
        _selectedTime = time;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isTeaching = widget.categoryName == 'Teaching';

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoryName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              '${widget.categoryName} Details',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Date Picker
            Row(
              children: [
                const Text("Date:", style: TextStyle(fontSize: 16)),
                const SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    onPressed: _pickDate,
                    child: Text(_selectedDate != null
                        ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                        : 'Select Date'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Time Picker
            Row(
              children: [
                const Text("Time:", style: TextStyle(fontSize: 16)),
                const SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    onPressed: _pickTime,
                    child: Text(_selectedTime != null
                        ? _selectedTime!.format(context)
                        : 'Select Time'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Location Picker
            Row(
              children: [
                const Text("Location:", style: TextStyle(fontSize: 16)),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: TextEditingController(text: _currentLocation),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    readOnly: true,
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: _getCurrentLocation,
                  icon: const Icon(Icons.location_on),
                ),
              ],
            ),
            if (_isFetchingLocation)
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(child: CircularProgressIndicator()),
              ),
            const SizedBox(height: 20),

            // Teaching Fields
            if (isTeaching) ...[
              Row(
                children: [
                  const Text("Education Level:", style: TextStyle(fontSize: 16)),
                  const SizedBox(width: 10),
                  Expanded(
                    child: DropdownButton<String>(
                      value: _selectedEducationLevel,
                      hint: const Text("Select"),
                      isExpanded: true,
                      onChanged: (value) {
                        setState(() {
                          _selectedEducationLevel = value;
                          _selectedGrade = null; // Reset grade when education level changes
                        });
                      },
                      items: educationLevels
                          .map((level) => DropdownMenuItem(
                                value: level,
                                child: Text(level),
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              if (_selectedEducationLevel != null)
                Row(
                  children: [
                    const Text("Grade:", style: TextStyle(fontSize: 16)),
                    const SizedBox(width: 10),
                    Expanded(
                      child: DropdownButton<int>(
                        value: _selectedGrade,
                        hint: const Text("Select"),
                        isExpanded: true,
                        onChanged: (value) {
                          setState(() {
                            _selectedGrade = value;
                          });
                        },
                        items: gradeRanges[_selectedEducationLevel]!
                            .map((grade) => DropdownMenuItem(
                                  value: grade,
                                  child: Text(grade.toString()),
                                ))
                            .toList(),
                      ),
                    ),
                  ],
                ),
              const SizedBox(height: 20),
            ],

            // Details Field
            const Text("Details:", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            TextField(
              maxLines: 5,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter details...",
              ),
            ),
            const SizedBox(height: 20),

            // Image Picker
            if (widget.categoryName == 'Plumbing' || widget.categoryName == 'Electrician') ...[
              const Text("Upload Image:", style: TextStyle(fontSize: 16)),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: _pickImage,
                child: _selectedImage != null
                    ? Image.file(
                        _selectedImage!,
                        height: 150,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      )
                    : Container(
                        height: 150,
                        width: double.infinity,
                        color: Colors.grey[300],
                        child: const Icon(Icons.camera_alt, size: 50, color: Colors.grey),
                      ),
              ),
              const SizedBox(height: 20),
            ],

            // Submit Button
            ElevatedButton(
              onPressed: () {
                print('Form submitted!');
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}