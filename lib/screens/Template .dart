// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:image_picker/image_picker.dart';
// // // // // import 'package:location/location.dart';
// // // // // import 'dart:io';

// // // // // class Template extends StatefulWidget {
// // // // //   final String categoryName;

// // // // //   const Template({super.key, required this.categoryName});

// // // // //   @override
// // // // //   _TemplateState createState() => _TemplateState();
// // // // // }

// // // // // class _TemplateState extends State<Template> {
// // // // //   final Location _location = Location();
// // // // //   String? _currentLocation;
// // // // //   bool _isFetchingLocation = false;

// // // // //   DateTime? _selectedDate;
// // // // //   TimeOfDay? _selectedTime;
// // // // //   String? _selectedEducationLevel;
// // // // //   int? _selectedGrade;
// // // // //   File? _selectedImage;

// // // // //   // Education levels and grade ranges
// // // // //   final List<String> educationLevels = ['Elementary', 'Middle School', 'High School'];
// // // // //   final Map<String, List<int>> gradeRanges = {
// // // // //     'Elementary': List.generate(6, (index) => index + 1), // 1–6
// // // // //     'Middle School': List.generate(3, (index) => index + 7), // 7–9
// // // // //     'High School': List.generate(3, (index) => index + 10), // 10–12
// // // // //   };

// // // // //   // Fetch current location
// // // // //   Future<void> _getCurrentLocation() async {
// // // // //     setState(() {
// // // // //       _isFetchingLocation = true;
// // // // //     });

// // // // //     try {
// // // // //       final bool serviceEnabled = await _location.serviceEnabled();
// // // // //       if (!serviceEnabled) {
// // // // //         final bool requestedService = await _location.requestService();
// // // // //         if (!requestedService) {
// // // // //           setState(() {
// // // // //             _isFetchingLocation = false;
// // // // //           });
// // // // //           return;
// // // // //         }
// // // // //       }

// // // // //       final PermissionStatus permissionGranted = await _location.hasPermission();
// // // // //       if (permissionGranted == PermissionStatus.denied) {
// // // // //         final PermissionStatus requestedPermission = await _location.requestPermission();
// // // // //         if (requestedPermission != PermissionStatus.granted) {
// // // // //           setState(() {
// // // // //             _isFetchingLocation = false;
// // // // //           });
// // // // //           return;
// // // // //         }
// // // // //       }

// // // // //       final locationData = await _location.getLocation();
// // // // //       setState(() {
// // // // //         _currentLocation =
// // // // //             '${locationData.latitude}, ${locationData.longitude}'; // Format: "latitude, longitude"
// // // // //         _isFetchingLocation = false;
// // // // //       });
// // // // //     } catch (e) {
// // // // //       print('Error getting location: $e');
// // // // //       setState(() {
// // // // //         _isFetchingLocation = false;
// // // // //       });
// // // // //     }
// // // // //   }

// // // // //   // Pick an image
// // // // //   Future<void> _pickImage() async {
// // // // //     final ImagePicker picker = ImagePicker();
// // // // //     final XFile? image = await picker.pickImage(source: ImageSource.gallery);

// // // // //     if (image != null) {
// // // // //       setState(() {
// // // // //         _selectedImage = File(image.path);
// // // // //       });
// // // // //     }
// // // // //   }

// // // // //   // Date picker
// // // // //   Future<void> _pickDate() async {
// // // // //     final DateTime? date = await showDatePicker(
// // // // //       context: context,
// // // // //       initialDate: DateTime.now(),
// // // // //       firstDate: DateTime(2000),
// // // // //       lastDate: DateTime(2100),
// // // // //     );

// // // // //     if (date != null) {
// // // // //       setState(() {
// // // // //         _selectedDate = date;
// // // // //       });
// // // // //     }
// // // // //   }

// // // // //   // Time picker
// // // // //   Future<void> _pickTime() async {
// // // // //     final TimeOfDay? time = await showTimePicker(
// // // // //       context: context,
// // // // //       initialTime: TimeOfDay.now(),
// // // // //     );

// // // // //     if (time != null) {
// // // // //       setState(() {
// // // // //         _selectedTime = time;
// // // // //       });
// // // // //     }
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     final isTeaching = widget.categoryName == 'Teaching';

// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: Text(widget.categoryName),
// // // // //       ),
// // // // //       body: Padding(
// // // // //         padding: const EdgeInsets.all(16.0),
// // // // //         child: ListView(
// // // // //           children: [
// // // // //             Text(
// // // // //               '${widget.categoryName} Details',
// // // // //               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// // // // //             ),
// // // // //             const SizedBox(height: 20),

// // // // //             // Date Picker
// // // // //             Row(
// // // // //               children: [
// // // // //                 const Text("Date:", style: TextStyle(fontSize: 16)),
// // // // //                 const SizedBox(width: 10),
// // // // //                 Expanded(
// // // // //                   child: OutlinedButton(
// // // // //                     onPressed: _pickDate,
// // // // //                     child: Text(_selectedDate != null
// // // // //                         ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
// // // // //                         : 'Select Date'),
// // // // //                   ),
// // // // //                 ),
// // // // //               ],
// // // // //             ),
// // // // //             const SizedBox(height: 20),

// // // // //             // Time Picker
// // // // //             Row(
// // // // //               children: [
// // // // //                 const Text("Time:", style: TextStyle(fontSize: 16)),
// // // // //                 const SizedBox(width: 10),
// // // // //                 Expanded(
// // // // //                   child: OutlinedButton(
// // // // //                     onPressed: _pickTime,
// // // // //                     child: Text(_selectedTime != null
// // // // //                         ? _selectedTime!.format(context)
// // // // //                         : 'Select Time'),
// // // // //                   ),
// // // // //                 ),
// // // // //               ],
// // // // //             ),
// // // // //             const SizedBox(height: 20),

// // // // //             // Location Picker
// // // // //             Row(
// // // // //               children: [
// // // // //                 const Text("Location:", style: TextStyle(fontSize: 16)),
// // // // //                 const SizedBox(width: 10),
// // // // //                 Expanded(
// // // // //                   child: TextField(
// // // // //                     controller: TextEditingController(text: _currentLocation),
// // // // //                     decoration: const InputDecoration(
// // // // //                       border: OutlineInputBorder(),
// // // // //                     ),
// // // // //                     readOnly: true,
// // // // //                   ),
// // // // //                 ),
// // // // //                 const SizedBox(width: 10),
// // // // //                 IconButton(
// // // // //                   onPressed: _getCurrentLocation,
// // // // //                   icon: const Icon(Icons.location_on),
// // // // //                 ),
// // // // //               ],
// // // // //             ),
// // // // //             if (_isFetchingLocation)
// // // // //               const Padding(
// // // // //                 padding: EdgeInsets.only(top: 10),
// // // // //                 child: Center(child: CircularProgressIndicator()),
// // // // //               ),
// // // // //             const SizedBox(height: 20),

// // // // //             // Teaching Fields
// // // // //             if (isTeaching) ...[
// // // // //               Row(
// // // // //                 children: [
// // // // //                   const Text("Education Level:", style: TextStyle(fontSize: 16)),
// // // // //                   const SizedBox(width: 10),
// // // // //                   Expanded(
// // // // //                     child: DropdownButton<String>(
// // // // //                       value: _selectedEducationLevel,
// // // // //                       hint: const Text("Select"),
// // // // //                       isExpanded: true,
// // // // //                       onChanged: (value) {
// // // // //                         setState(() {
// // // // //                           _selectedEducationLevel = value;
// // // // //                           _selectedGrade = null; // Reset grade when education level changes
// // // // //                         });
// // // // //                       },
// // // // //                       items: educationLevels
// // // // //                           .map((level) => DropdownMenuItem(
// // // // //                                 value: level,
// // // // //                                 child: Text(level),
// // // // //                               ))
// // // // //                           .toList(),
// // // // //                     ),
// // // // //                   ),
// // // // //                 ],
// // // // //               ),
// // // // //               const SizedBox(height: 20),
// // // // //               if (_selectedEducationLevel != null)
// // // // //                 Row(
// // // // //                   children: [
// // // // //                     const Text("Grade:", style: TextStyle(fontSize: 16)),
// // // // //                     const SizedBox(width: 10),
// // // // //                     Expanded(
// // // // //                       child: DropdownButton<int>(
// // // // //                         value: _selectedGrade,
// // // // //                         hint: const Text("Select"),
// // // // //                         isExpanded: true,
// // // // //                         onChanged: (value) {
// // // // //                           setState(() {
// // // // //                             _selectedGrade = value;
// // // // //                           });
// // // // //                         },
// // // // //                         items: gradeRanges[_selectedEducationLevel]!
// // // // //                             .map((grade) => DropdownMenuItem(
// // // // //                                   value: grade,
// // // // //                                   child: Text(grade.toString()),
// // // // //                                 ))
// // // // //                             .toList(),
// // // // //                       ),
// // // // //                     ),
// // // // //                   ],
// // // // //                 ),
// // // // //               const SizedBox(height: 20),
// // // // //             ],

// // // // //             // Details Field
// // // // //             const Text("Details:", style: TextStyle(fontSize: 16)),
// // // // //             const SizedBox(height: 10),
// // // // //             TextField(
// // // // //               maxLines: 5,
// // // // //               decoration: const InputDecoration(
// // // // //                 border: OutlineInputBorder(),
// // // // //                 hintText: "Enter details...",
// // // // //               ),
// // // // //             ),
// // // // //             const SizedBox(height: 20),

// // // // //             // Image Picker
// // // // //             if (widget.categoryName == 'Plumbing' || widget.categoryName == 'Electrician') ...[
// // // // //               const Text("Upload Image:", style: TextStyle(fontSize: 16)),
// // // // //               const SizedBox(height: 10),
// // // // //               GestureDetector(
// // // // //                 onTap: _pickImage,
// // // // //                 child: _selectedImage != null
// // // // //                     ? Image.file(
// // // // //                         _selectedImage!,
// // // // //                         height: 150,
// // // // //                         width: double.infinity,
// // // // //                         fit: BoxFit.cover,
// // // // //                       )
// // // // //                     : Container(
// // // // //                         height: 150,
// // // // //                         width: double.infinity,
// // // // //                         color: Colors.grey[300],
// // // // //                         child: const Icon(Icons.camera_alt, size: 50, color: Colors.grey),
// // // // //                       ),
// // // // //               ),
// // // // //               const SizedBox(height: 20),
// // // // //             ],

// // // // //             // Submit Button
// // // // //             ElevatedButton(
// // // // //               onPressed: () {
// // // // //                 print('Form submitted!');
// // // // //               },
// // // // //               child: const Text('Submit'),
// // // // //             ),
// // // // //           ],
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }
// // // // import 'package:flutter/material.dart';
// // // // import 'package:image_picker/image_picker.dart';
// // // // import 'package:location/location.dart';
// // // // import 'dart:io';

// // // // class MissionTemplateScreen extends StatefulWidget {
// // // //   final String categoryId;
// // // //   final String categoryName;

// // // //   const MissionTemplateScreen({required this.categoryId, required this.categoryName, Key? key}) : super(key: key);

// // // //   @override
// // // //   _MissionTemplateScreenState createState() => _MissionTemplateScreenState();
// // // // }

// // // // class _MissionTemplateScreenState extends State<MissionTemplateScreen> {
// // // //   final Location _location = Location();
// // // //   String? _currentLocation;
// // // //   bool _isFetchingLocation = false;

// // // //   DateTime? _selectedDate;
// // // //   TimeOfDay? _selectedTime;
// // // //   String? _selectedEducationLevel;
// // // //   int? _selectedGrade;
// // // //   File? _selectedImage;

// // // //   // Education levels and grade ranges
// // // //   final List<String> educationLevels = ['Elementary', 'Middle School', 'High School'];
// // // //   final Map<String, List<int>> gradeRanges = {
// // // //     'Elementary': List.generate(6, (index) => index + 1), // 1–6
// // // //     'Middle School': List.generate(3, (index) => index + 7), // 7–9
// // // //     'High School': List.generate(3, (index) => index + 10), // 10–12
// // // //   };

// // // //   // Fetch current location
// // // //   Future<void> _getCurrentLocation() async {
// // // //     setState(() {
// // // //       _isFetchingLocation = true;
// // // //     });

// // // //     try {
// // // //       final bool serviceEnabled = await _location.serviceEnabled();
// // // //       if (!serviceEnabled) {
// // // //         final bool requestedService = await _location.requestService();
// // // //         if (!requestedService) {
// // // //           setState(() {
// // // //             _isFetchingLocation = false;
// // // //           });
// // // //           return;
// // // //         }
// // // //       }

// // // //       final PermissionStatus permissionGranted = await _location.hasPermission();
// // // //       if (permissionGranted == PermissionStatus.denied) {
// // // //         final PermissionStatus requestedPermission = await _location.requestPermission();
// // // //         if (requestedPermission != PermissionStatus.granted) {
// // // //           setState(() {
// // // //             _isFetchingLocation = false;
// // // //           });
// // // //           return;
// // // //         }
// // // //       }

// // // //       final locationData = await _location.getLocation();
// // // //       setState(() {
// // // //         _currentLocation = '${locationData.latitude}, ${locationData.longitude}';
// // // //         _isFetchingLocation = false;
// // // //       });
// // // //     } catch (e) {
// // // //       print('Error getting location: $e');
// // // //       setState(() {
// // // //         _isFetchingLocation = false;
// // // //       });
// // // //     }
// // // //   }

// // // //   // Pick an image
// // // //   Future<void> _pickImage() async {
// // // //     final ImagePicker picker = ImagePicker();
// // // //     final XFile? image = await picker.pickImage(source: ImageSource.gallery);

// // // //     if (image != null) {
// // // //       setState(() {
// // // //         _selectedImage = File(image.path);
// // // //       });
// // // //     }
// // // //   }

// // // //   // Date picker
// // // //   Future<void> _pickDate() async {
// // // //     final DateTime? date = await showDatePicker(
// // // //       context: context,
// // // //       initialDate: DateTime.now(),
// // // //       firstDate: DateTime(2000),
// // // //       lastDate: DateTime(2100),
// // // //     );

// // // //     if (date != null) {
// // // //       setState(() {
// // // //         _selectedDate = date;
// // // //       });
// // // //     }
// // // //   }

// // // //   // Time picker
// // // //   Future<void> _pickTime() async {
// // // //     final TimeOfDay? time = await showTimePicker(
// // // //       context: context,
// // // //       initialTime: TimeOfDay.now(),
// // // //     );

// // // //     if (time != null) {
// // // //       setState(() {
// // // //         _selectedTime = time;
// // // //       });
// // // //     }
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final isTeaching = widget.categoryName == 'Teaching';

// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: Text(widget.categoryName),
// // // //       ),
// // // //       body: Padding(
// // // //         padding: const EdgeInsets.all(16.0),
// // // //         child: ListView(
// // // //           children: [
// // // //             Text(
// // // //               '${widget.categoryName} Details',
// // // //               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// // // //             ),
// // // //             const SizedBox(height: 20),

// // // //             // Date Picker
// // // //             Row(
// // // //               children: [
// // // //                 const Text("Date:", style: TextStyle(fontSize: 16)),
// // // //                 const SizedBox(width: 10),
// // // //                 Expanded(
// // // //                   child: OutlinedButton(
// // // //                     onPressed: _pickDate,
// // // //                     child: Text(_selectedDate != null
// // // //                         ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
// // // //                         : 'Select Date'),
// // // //                   ),
// // // //                 ),
// // // //               ],
// // // //             ),
// // // //             const SizedBox(height: 20),

// // // //             // Time Picker
// // // //             Row(
// // // //               children: [
// // // //                 const Text("Time:", style: TextStyle(fontSize: 16)),
// // // //                 const SizedBox(width: 10),
// // // //                 Expanded(
// // // //                   child: OutlinedButton(
// // // //                     onPressed: _pickTime,
// // // //                     child: Text(_selectedTime != null
// // // //                         ? _selectedTime!.format(context)
// // // //                         : 'Select Time'),
// // // //                   ),
// // // //                 ),
// // // //               ],
// // // //             ),
// // // //             const SizedBox(height: 20),

// // // //             // Location Picker
// // // //             Row(
// // // //               children: [
// // // //                 const Text("Location:", style: TextStyle(fontSize: 16)),
// // // //                 const SizedBox(width: 10),
// // // //                 Expanded(
// // // //                   child: TextField(
// // // //                     controller: TextEditingController(text: _currentLocation),
// // // //                     decoration: const InputDecoration(
// // // //                       border: OutlineInputBorder(),
// // // //                     ),
// // // //                     readOnly: true,
// // // //                   ),
// // // //                 ),
// // // //                 const SizedBox(width: 10),
// // // //                 IconButton(
// // // //                   onPressed: _getCurrentLocation,
// // // //                   icon: const Icon(Icons.location_on),
// // // //                 ),
// // // //               ],
// // // //             ),
// // // //             if (_isFetchingLocation)
// // // //               const Padding(
// // // //                 padding: EdgeInsets.only(top: 10),
// // // //                 child: Center(child: CircularProgressIndicator()),
// // // //               ),
// // // //             const SizedBox(height: 20),

// // // //             // Teaching Fields
// // // //             if (isTeaching) ...[
// // // //               Row(
// // // //                 children: [
// // // //                   const Text("Education Level:", style: TextStyle(fontSize: 16)),
// // // //                   const SizedBox(width: 10),
// // // //                   Expanded(
// // // //                     child: DropdownButton<String>(
// // // //                       value: _selectedEducationLevel,
// // // //                       hint: const Text("Select"),
// // // //                       isExpanded: true,
// // // //                       onChanged: (value) {
// // // //                         setState(() {
// // // //                           _selectedEducationLevel = value;
// // // //                           _selectedGrade = null; // Reset grade when education level changes
// // // //                         });
// // // //                       },
// // // //                       items: educationLevels
// // // //                           .map((level) => DropdownMenuItem(
// // // //                                 value: level,
// // // //                                 child: Text(level),
// // // //                               ))
// // // //                           .toList(),
// // // //                     ),
// // // //                   ),
// // // //                 ],
// // // //               ),
// // // //               const SizedBox(height: 20),
// // // //               if (_selectedEducationLevel != null)
// // // //                 Row(
// // // //                   children: [
// // // //                     const Text("Grade:", style: TextStyle(fontSize: 16)),
// // // //                     const SizedBox(width: 10),
// // // //                     Expanded(
// // // //                       child: DropdownButton<int>(
// // // //                         value: _selectedGrade,
// // // //                         hint: const Text("Select"),
// // // //                         isExpanded: true,
// // // //                         onChanged: (value) {
// // // //                           setState(() {
// // // //                             _selectedGrade = value;
// // // //                           });
// // // //                         },
// // // //                         items: gradeRanges[_selectedEducationLevel]!
// // // //                             .map((grade) => DropdownMenuItem(
// // // //                                   value: grade,
// // // //                                   child: Text(grade.toString()),
// // // //                                 ))
// // // //                             .toList(),
// // // //                       ),
// // // //                     ),
// // // //                   ],
// // // //                 ),
// // // //               const SizedBox(height: 20),
// // // //             ],

// // // //             // Details Field
// // // //             const Text("Details:", style: TextStyle(fontSize: 16)),
// // // //             const SizedBox(height: 10),
// // // //             TextField(
// // // //               maxLines: 5,
// // // //               decoration: const InputDecoration(
// // // //                 border: OutlineInputBorder(),
// // // //                 hintText: "Enter details...",
// // // //               ),
// // // //             ),
// // // //             const SizedBox(height: 20),

// // // //             // Image Picker
// // // //             if (widget.categoryName == 'Plumbing' || widget.categoryName == 'Electrician') ...[
// // // //               const Text("Upload Image:", style: TextStyle(fontSize: 16)),
// // // //               const SizedBox(height: 10),
// // // //               GestureDetector(
// // // //                 onTap: _pickImage,
// // // //                 child: _selectedImage != null
// // // //                     ? Image.file(
// // // //                         _selectedImage!,
// // // //                         height: 150,
// // // //                         width: double.infinity,
// // // //                         fit: BoxFit.cover,
// // // //                       )
// // // //                     : Container(
// // // //                         height: 150,
// // // //                         width: double.infinity,
// // // //                         color: Colors.grey[300],
// // // //                         child: const Icon(Icons.camera_alt, size: 50, color: Colors.grey),
// // // //                       ),
// // // //               ),
// // // //               const SizedBox(height: 20),
// // // //             ],

// // // //             // Submit Button
// // // //             ElevatedButton(
// // // //               onPressed: () {
// // // //                 print('Form submitted!');
// // // //               },
// // // //               child: const Text('Submit'),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // // import 'package:flutter/material.dart';
// // // import 'package:image_picker/image_picker.dart';
// // // import 'package:location/location.dart';
// // // import 'dart:io';
// // // import 'dart:convert';
// // // import 'package:http/http.dart' as http;

// // // class MissionTemplateScreen extends StatefulWidget {
// // //   final String categoryId;
// // //   final String categoryName;

// // //   const MissionTemplateScreen({required this.categoryId, required this.categoryName, Key? key}) : super(key: key);

// // //   @override
// // //   _MissionTemplateScreenState createState() => _MissionTemplateScreenState();
// // // }

// // // class _MissionTemplateScreenState extends State<MissionTemplateScreen> {
// // //   final Location _location = Location();
// // //   String? _currentLocation;
// // //   bool _isFetchingLocation = false;

// // //   DateTime? _selectedDate;
// // //   TimeOfDay? _selectedTime;
// // //   String? _selectedEducationLevel;
// // //   int? _selectedGrade;
// // //   File? _selectedImage;
// // //   String? _name;
// // //   String? _note;

// // //   // Education levels and grade ranges
// // //   final List<String> educationLevels = ['Elementary', 'Middle School', 'High School'];
// // //   final Map<String, List<int>> gradeRanges = {
// // //     'Elementary': List.generate(6, (index) => index + 1), // 1–6
// // //     'Middle School': List.generate(3, (index) => index + 7), // 7–9
// // //     'High School': List.generate(3, (index) => index + 10), // 10–12
// // //   };

// // //   // Fetch current location
// // //   Future<void> _getCurrentLocation() async {
// // //     setState(() {
// // //       _isFetchingLocation = true;
// // //     });

// // //     try {
// // //       final bool serviceEnabled = await _location.serviceEnabled();
// // //       if (!serviceEnabled) {
// // //         final bool requestedService = await _location.requestService();
// // //         if (!requestedService) {
// // //           setState(() {
// // //             _isFetchingLocation = false;
// // //           });
// // //           return;
// // //         }
// // //       }

// // //       final PermissionStatus permissionGranted = await _location.hasPermission();
// // //       if (permissionGranted == PermissionStatus.denied) {
// // //         final PermissionStatus requestedPermission = await _location.requestPermission();
// // //         if (requestedPermission != PermissionStatus.granted) {
// // //           setState(() {
// // //             _isFetchingLocation = false;
// // //           });
// // //           return;
// // //         }
// // //       }

// // //       final locationData = await _location.getLocation();
// // //       setState(() {
// // //         _currentLocation = '${locationData.latitude}, ${locationData.longitude}';
// // //         _isFetchingLocation = false;
// // //       });
// // //     } catch (e) {
// // //       print('Error getting location: $e');
// // //       setState(() {
// // //         _isFetchingLocation = false;
// // //       });
// // //     }
// // //   }

// // //   // Pick an image
// // //   Future<void> _pickImage() async {
// // //     final ImagePicker picker = ImagePicker();
// // //     final XFile? image = await picker.pickImage(source: ImageSource.gallery);

// // //     if (image != null) {
// // //       setState(() {
// // //         _selectedImage = File(image.path);
// // //       });
// // //     }
// // //   }

// // //   // Date picker
// // //   Future<void> _pickDate() async {
// // //     final DateTime? date = await showDatePicker(
// // //       context: context,
// // //       initialDate: DateTime.now(),
// // //       firstDate: DateTime(2000),
// // //       lastDate: DateTime(2100),
// // //     );

// // //     if (date != null) {
// // //       setState(() {
// // //         _selectedDate = date;
// // //       });
// // //     }
// // //   }

// // //   // Time picker
// // //   Future<void> _pickTime() async {
// // //     final TimeOfDay? time = await showTimePicker(
// // //       context: context,
// // //       initialTime: TimeOfDay.now(),
// // //     );

// // //     if (time != null) {
// // //       setState(() {
// // //         _selectedTime = time;
// // //       });
// // //     }
// // //   }

// // //   // Submit form
// // //   Future<void> _submitForm() async {
// // //     final mission = {
// // //       'name': _name,
// // //       'state': 'Pending', // All missions will be in the 'Pending' state when created
// // //       'categoryId': widget.categoryId,
// // //       'userId': 'user-id', // Replace with actual user ID
// // //       'day': _selectedDate?.toIso8601String(),
// // //       'location': _currentLocation,
// // //       'note': _note,
// // //       'image': _selectedImage?.path, // Handle image upload properly
// // //       'details': 'details', // Add more details as needed
// // //       'room': _selectedGrade,
// // //       'grade': _selectedEducationLevel,
// // //       'hours': _selectedTime?.format(context),
// // //     };

// // //     final response = await http.post(
// // //       Uri.parse('https://192.168.0.109:7127/api/Mission'),
// // //       headers: <String, String>{
// // //         'Content-Type': 'application/json; charset=UTF-8',
// // //       },
// // //       body: jsonEncode(mission),
// // //     );

// // //     if (response.statusCode == 201) {
// // //       // Successfully created the mission
// // //       print('Mission created successfully');
// // //     } else {
// // //       // Failed to create the mission
// // //       print('Failed to create mission: ${response.body}');
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final isTeaching = widget.categoryName == 'Teaching';
// // //     final isPlumbingOrElectrician = widget.categoryName == 'Plumbing' || widget.categoryName == 'Electrician';

// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text(widget.categoryName),
// // //       ),
// // //       body: Padding(
// // //         padding: const EdgeInsets.all(16.0),
// // //         child: ListView(
// // //           children: [
// // //             Text(
// // //               '${widget.categoryName} Details',
// // //               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// // //             ),
// // //             const SizedBox(height: 20),

// // //             // Name Field
// // //             const Text("Name:", style: TextStyle(fontSize: 16)),
// // //             const SizedBox(height: 10),
// // //             TextField(
// // //               onChanged: (value) {
// // //                 _name = value;
// // //               },
// // //               decoration: const InputDecoration(
// // //                 border: OutlineInputBorder(),
// // //                 hintText: "Enter name...",
// // //               ),
// // //             ),
// // //             const SizedBox(height: 20),

// // //             // Date Picker
// // //             Row(
// // //               children: [
// // //                 const Text("Date:", style: TextStyle(fontSize: 16)),
// // //                 const SizedBox(width: 10),
// // //                 Expanded(
// // //                   child: OutlinedButton(
// // //                     onPressed: _pickDate,
// // //                     child: Text(_selectedDate != null
// // //                         ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
// // //                         : 'Select Date'),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //             const SizedBox(height: 20),

// // //             // Time Picker
// // //             Row(
// // //               children: [
// // //                 const Text("Time:", style: TextStyle(fontSize: 16)),
// // //                 const SizedBox(width: 10),
// // //                 Expanded(
// // //                   child: OutlinedButton(
// // //                     onPressed: _pickTime,
// // //                     child: Text(_selectedTime != null
// // //                         ? _selectedTime!.format(context)
// // //                         : 'Select Time'),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //             const SizedBox(height: 20),

// // //             // Location Picker
// // //             Row(
// // //               children: [
// // //                 const Text("Location:", style: TextStyle(fontSize: 16)),
// // //                 const SizedBox(width: 10),
// // //                 Expanded(
// // //                   child: TextField(
// // //                     controller: TextEditingController(text: _currentLocation),
// // //                     decoration: const InputDecoration(
// // //                       border: OutlineInputBorder(),
// // //                     ),
// // //                     readOnly: true,
// // //                   ),
// // //                 ),
// // //                 const SizedBox(width: 10),
// // //                 IconButton(
// // //                   onPressed: _getCurrentLocation,
// // //                   icon: const Icon(Icons.location_on),
// // //                 ),
// // //               ],
// // //             ),
// // //             if (_isFetchingLocation)
// // //               const Padding(
// // //                 padding: EdgeInsets.only(top: 10),
// // //                 child: Center(child: CircularProgressIndicator()),
// // //               ),
// // //             const SizedBox(height: 20),

// // //             // Teaching Fields
// // //             if (isTeaching) ...[
// // //               Row(
// // //                 children: [
// // //                   const Text("Education Level:", style: TextStyle(fontSize: 16)),
// // //                   const SizedBox(width: 10),
// // //                   Expanded(
// // //                     child: DropdownButton<String>(
// // //                       value: _selectedEducationLevel,
// // //                       hint: const Text("Select"),
// // //                       isExpanded: true,
// // //                       onChanged: (value) {
// // //                         setState(() {
// // //                           _selectedEducationLevel = value;
// // //                           _selectedGrade = null; // Reset grade when education level changes
// // //                         });
// // //                       },
// // //                       items: educationLevels
// // //                           .map((level) => DropdownMenuItem(
// // //                                 value: level,
// // //                                 child: Text(level),
// // //                               ))
// // //                           .toList(),
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //               const SizedBox(height: 20),
// // //               if (_selectedEducationLevel != null)
// // //                 Row(
// // //                   children: [
// // //                     const Text("Grade:", style: TextStyle(fontSize: 16)),
// // //                     const SizedBox(width: 10),
// // //                     Expanded(
// // //                       child: DropdownButton<int>(
// // //                         value: _selectedGrade,
// // //                         hint: const Text("Select"),
// // //                         isExpanded: true,
// // //                         onChanged: (value) {
// // //                           setState(() {
// // //                             _selectedGrade = value;
// // //                           });
// // //                         },
// // //                         items: gradeRanges[_selectedEducationLevel]!
// // //                             .map((grade) => DropdownMenuItem(
// // //                                   value: grade,
// // //                                   child: Text(grade.toString()),
// // //                                 ))
// // //                             .toList(),
// // //                       ),
// // //                     ),
// // //                   ],
// // //                 ),
// // //               const SizedBox(height: 20),
// // //             ],

// // //             // Note Field
// // //             const Text("Note:", style: TextStyle(fontSize: 16)),
// // //             const SizedBox(height: 10),
// // //             TextField(
// // //               onChanged: (value) {
// // //                 _note = value;
// // //               },
// // //               maxLines: 5,
// // //               decoration: const InputDecoration(
// // //                 border: OutlineInputBorder(),
// // //                 hintText: "Enter note...",
// // //               ),
// // //             ),
// // //             const SizedBox(height: 20),

// // //             // Image Picker
// // //             if (isPlumbingOrElectrician) ...[
// // //               const Text("Upload Image:", style: TextStyle(fontSize: 16)),
// // //               const SizedBox(height: 10),
// // //               GestureDetector(
// // //                 onTap: _pickImage,
// // //                 child: _selectedImage != null
// // //                     ? Image.file(
// // //                         _selectedImage!,
// // //                         height: 150,
// // //                         width: double.infinity,
// // //                         fit: BoxFit.cover,
// // //                       )
// // //                     : Container(
// // //                         height: 150,
// // //                         width: double.infinity,
// // //                         color: Colors.grey[300],
// // //                         child: const Icon(Icons.camera_alt, size: 50, color: Colors.grey),
// // //                       ),
// // //               ),
// // //               const SizedBox(height: 20),
// // //             ],

// // //             // Submit Button
// // //             ElevatedButton(
// // //               onPressed: _submitForm,
// // //               child: const Text('Submit'),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:image_picker/image_picker.dart';
// // import 'package:location/location.dart';
// // import 'dart:io';

// // class MissionTemplateScreen extends StatefulWidget {
// //   final String categoryId;
// //   final String categoryName;
// //     final String userId;
// //   const MissionTemplateScreen({
// //     required this.userId,required this.categoryId, required this.categoryName, Key? key}) : super(key: key);

// //   @override
// //   _MissionTemplateScreenState createState() => _MissionTemplateScreenState();
// // }

// // class _MissionTemplateScreenState extends State<MissionTemplateScreen> {
// //   final Location _location = Location();
// //   String? _currentLocation;
// //   bool _isFetchingLocation = false;

// //   DateTime? _selectedDate;
// //   TimeOfDay? _selectedTime;
// //   String? _selectedEducationLevel;
// //   int? _selectedGrade;
// //   File? _selectedImage;

// //   // Education levels and grade ranges
// //   final List<String> educationLevels = ['Elementary', 'Middle School', 'High School'];
// //   final Map<String, List<int>> gradeRanges = {
// //     'Elementary': List.generate(6, (index) => index + 1), // 1–6
// //     'Middle School': List.generate(3, (index) => index + 7), // 7–9
// //     'High School': List.generate(3, (index) => index + 10), // 10–12
// //   };

// //   // Fetch current location
// //   Future<void> _getCurrentLocation() async {
// //     setState(() {
// //       _isFetchingLocation = true;
// //     });

// //     try {
// //       final bool serviceEnabled = await _location.serviceEnabled();
// //       if (!serviceEnabled) {
// //         final bool requestedService = await _location.requestService();
// //         if (!requestedService) {
// //           setState(() {
// //             _isFetchingLocation = false;
// //           });
// //           return;
// //         }
// //       }

// //       final PermissionStatus permissionGranted = await _location.hasPermission();
// //       if (permissionGranted == PermissionStatus.denied) {
// //         final PermissionStatus requestedPermission = await _location.requestPermission();
// //         if (requestedPermission != PermissionStatus.granted) {
// //           setState(() {
// //             _isFetchingLocation = false;
// //           });
// //           return;
// //         }
// //       }

// //       final locationData = await _location.getLocation();
// //       setState(() {
// //         _currentLocation = '${locationData.latitude}, ${locationData.longitude}';
// //         _isFetchingLocation = false;
// //       });
// //     } catch (e) {
// //       print('Error getting location: $e');
// //       setState(() {
// //         _isFetchingLocation = false;
// //       });
// //     }
// //   }

// //   // Pick an image
// //   Future<void> _pickImage() async {
// //     final ImagePicker picker = ImagePicker();
// //     final XFile? image = await picker.pickImage(source: ImageSource.gallery);

// //     if (image != null) {
// //       setState(() {
// //         _selectedImage = File(image.path);
// //       });
// //     }
// //   }

// //   // Date picker
// //   Future<void> _pickDate() async {
// //     final DateTime? date = await showDatePicker(
// //       context: context,
// //       initialDate: DateTime.now(),
// //       firstDate: DateTime(2000),
// //       lastDate: DateTime(2100),
// //     );

// //     if (date != null) {
// //       setState(() {
// //         _selectedDate = date;
// //       });
// //     }
// //   }

// //   // Time picker
// //   Future<void> _pickTime() async {
// //     final TimeOfDay? time = await showTimePicker(
// //       context: context,
// //       initialTime: TimeOfDay.now(),
// //     );

// //     if (time != null) {
// //       setState(() {
// //         _selectedTime = time;
// //       });
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     final categoryFields = categoryFieldConfig[widget.categoryName] ?? [];

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(widget.categoryName),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: ListView(
// //           children: [
// //             Text(
// //               '${widget.categoryName} Details',
// //               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// //             ),
// //             const SizedBox(height: 20),

// //             // Dynamically generate fields based on category configuration
// //             if (categoryFields.contains('Date'))
// //               Row(
// //                 children: [
// //                   const Text("Date:", style: TextStyle(fontSize: 16)),
// //                   const SizedBox(width: 10),
// //                   Expanded(
// //                     child: OutlinedButton(
// //                       onPressed: _pickDate,
// //                       child: Text(_selectedDate != null
// //                           ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
// //                           : 'Select Date'),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             if (categoryFields.contains('Date')) const SizedBox(height: 20),

// //             if (categoryFields.contains('Time'))
// //               Row(
// //                 children: [
// //                   const Text("Time:", style: TextStyle(fontSize: 16)),
// //                   const SizedBox(width: 10),
// //                   Expanded(
// //                     child: OutlinedButton(
// //                       onPressed: _pickTime,
// //                       child: Text(_selectedTime != null
// //                           ? _selectedTime!.format(context)
// //                           : 'Select Time'),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             if (categoryFields.contains('Time')) const SizedBox(height: 20),

// //             if (categoryFields.contains('Location'))
// //               Row(
// //                 children: [
// //                   const Text("Location:", style: TextStyle(fontSize: 16)),
// //                   const SizedBox(width: 10),
// //                   Expanded(
// //                     child: TextField(
// //                       controller: TextEditingController(text: _currentLocation),
// //                       decoration: const InputDecoration(
// //                         border: OutlineInputBorder(),
// //                       ),
// //                       readOnly: true,
// //                     ),
// //                   ),
// //                   const SizedBox(width: 10),
// //                   IconButton(
// //                     onPressed: _getCurrentLocation,
// //                     icon: const Icon(Icons.location_on),
// //                   ),
// //                 ],
// //               ),
// //             if (_isFetchingLocation)
// //               const Padding(
// //                 padding: EdgeInsets.only(top: 10),
// //                 child: Center(child: CircularProgressIndicator()),
// //               ),
// //             if (categoryFields.contains('Location')) const SizedBox(height: 20),

// //             if (categoryFields.contains('EducationLevel'))
// //               Row(
// //                 children: [
// //                   const Text("Education Level:", style: TextStyle(fontSize: 16)),
// //                   const SizedBox(width: 10),
// //                   Expanded(
// //                     child: DropdownButton<String>(
// //                       value: _selectedEducationLevel,
// //                       hint: const Text("Select"),
// //                       isExpanded: true,
// //                       onChanged: (value) {
// //                         setState(() {
// //                           _selectedEducationLevel = value;
// //                           _selectedGrade = null; // Reset grade when education level changes
// //                         });
// //                       },
// //                       items: educationLevels
// //                           .map((level) => DropdownMenuItem(
// //                                 value: level,
// //                                 child: Text(level),
// //                               ))
// //                           .toList(),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             if (categoryFields.contains('EducationLevel')) const SizedBox(height: 20),

// //             if (categoryFields.contains('Grade') && _selectedEducationLevel != null)
// //               Row(
// //                 children: [
// //                   const Text("Grade:", style: TextStyle(fontSize: 16)),
// //                   const SizedBox(width: 10),
// //                   Expanded(
// //                     child: DropdownButton<int>(
// //                       value: _selectedGrade,
// //                       hint: const Text("Select"),
// //                       isExpanded: true,
// //                       onChanged: (value) {
// //                         setState(() {
// //                           _selectedGrade = value;
// //                         });
// //                       },
// //                       items: gradeRanges[_selectedEducationLevel]!
// //                           .map((grade) => DropdownMenuItem(
// //                                 value: grade,
// //                                 child: Text(grade.toString()),
// //                               ))
// //                           .toList(),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             if (categoryFields.contains('Grade')) const SizedBox(height: 20),

// //             if (categoryFields.contains('Details'))
// //               Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   const Text("Details:", style: TextStyle(fontSize: 16)),
// //                   const SizedBox(height: 10),
// //                   TextField(
// //                     maxLines: 5,
// //                     decoration: const InputDecoration(
// //                       border: OutlineInputBorder(),
// //                       hintText: "Enter details...",
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             if (categoryFields.contains('Details')) const SizedBox(height: 20),

// //             if (categoryFields.contains('Image'))
// //               Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   const Text("Upload Image:", style: TextStyle(fontSize: 16)),
// //                   const SizedBox(height: 10),
// //                   GestureDetector(
// //                     onTap: _pickImage,
// //                     child: _selectedImage != null
// //                         ? Image.file(
// //                             _selectedImage!,
// //                             height: 150,
// //                             width: double.infinity,
// //                             fit: BoxFit.cover,
// //                           )
// //                         : Container(
// //                             height: 150,
// //                             width: double.infinity,
// //                             color: Colors.grey[300],
// //                             child: const Icon(Icons.camera_alt, size: 50, color: Colors.grey),
// //                           ),
// //                   ),
// //                 ],
// //               ),
// //             if (categoryFields.contains('Image')) const SizedBox(height: 20),

// //             // Submit Button
// //             ElevatedButton(
// //               onPressed: () {
// //                 print('Form submitted!');
// //               },
// //               child: const Text('Submit'),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }


// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:location/location.dart';
// import 'dart:io';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// // Define a map to hold the configuration for each category
// final Map<String, List<String>> categoryFieldConfig = {
//   'Plumping/سباكه': [
//     'Date',
//     'Time',
//     'Location',
//     'EducationLevel',
//     'Grade',
//     'Details'
//   ],
//   'Cleaning | التنظيف': ['Date', 'Time', 'Location', 'Details', 'Image'],
//   'Electrical Services | الخدمات الكهربائية': ['Date', 'Time', 'Location', 'Details', 'Image'],
//   // Add more categories as needed
// };

// class MissionTemplateScreen extends StatefulWidget {
//   final String categoryId;
//   final String categoryName;
//   final String userId; // Add userId parameter

//   const MissionTemplateScreen({
//     required this.categoryId,
//     required this.categoryName,
//     required this.userId,
//     Key? key,
//   }) : super(key: key); // Using super parameter for key

//   @override
//   _MissionTemplateScreenState createState() => _MissionTemplateScreenState();
// }

// class _MissionTemplateScreenState extends State<MissionTemplateScreen> {
//   final Location _location = Location();
//   String? _currentLocation;
//   bool _isFetchingLocation = false;

//   DateTime? _selectedDate;
//   int? _selectedHours;
//   String? _selectedEducationLevel;
//   int? _selectedGrade;
//   File? _selectedImage;
//   String? _details;

//   // Education levels and grade ranges
//   final List<String> educationLevels = ['Elementary', 'Middle School', 'High School'];
//   final Map<String, List<int>> gradeRanges = {
//     'Elementary': List.generate(6, (index) => index + 1), // 1–6
//     'Middle School': List.generate(3, (index) => index + 7), // 7–9
//     'High School': List.generate(3, (index) => index + 10), // 10–12
//   };

//   // Fetch current location
//   Future<void> _getCurrentLocation() async {
//     setState(() {
//       _isFetchingLocation = true;
//     });

//     try {
//       final bool serviceEnabled = await _location.serviceEnabled();
//       if (!serviceEnabled) {
//         final bool requestedService = await _location.requestService();
//         if (!requestedService) {
//           setState(() {
//             _isFetchingLocation = false;
//           });
//           return;
//         }
//       }

//       final PermissionStatus permissionGranted = await _location.hasPermission();
//       if (permissionGranted == PermissionStatus.denied) {
//         final PermissionStatus requestedPermission = await _location.requestPermission();
//         if (requestedPermission != PermissionStatus.granted) {
//           setState(() {
//             _isFetchingLocation = false;
//           });
//           return;
//         }
//       }

//       final locationData = await _location.getLocation();
//       setState(() {
//         _currentLocation = '${locationData.latitude}, ${locationData.longitude}';
//         _isFetchingLocation = false;
//       });
//     } catch (e) {
//       print('Error getting location: $e');
//       setState(() {
//         _isFetchingLocation = false;
//       });
//     }
//   }

//   // Pick an image
//   Future<void> _pickImage() async {
//     final ImagePicker picker = ImagePicker();
//     final XFile? image = await picker.pickImage(source: ImageSource.gallery);

//     if (image != null) {
//       setState(() {
//         _selectedImage = File(image.path);
//       });
//     }
//   }

//   // Date picker
//   Future<void> _pickDate() async {
//     final DateTime? date = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2100),
//     );

//     if (date != null) {
//       setState(() {
//         _selectedDate = date;
//       });
//     }
//   }

//   // Handle form submission
//   Future<void> _submitForm() async {
//     final categoryFields = categoryFieldConfig[widget.categoryName] ?? [];

//     // Collect data based on the fields required for the category
//     final Map<String, dynamic> formData = {
//       'CategoryId': widget.categoryId,
//       'UserId': widget.userId,
//       'Name': widget.categoryName,
//       'State': 0,
//       'Day': _selectedDate?.toIso8601String(), // Ensure it's in ISO format
//       'Location': _currentLocation,
//       'EducationLevel': _selectedEducationLevel,
//       'Grade': _selectedGrade,
//       'Details': _details,
//       'Hours': _selectedHours?.toString(),
//     };

//     if (_selectedImage != null) {
//       final bytes = await _selectedImage!.readAsBytes();
//       formData['Image'] = base64Encode(bytes);
//     }

//     // Print the payload for debugging purposes
//     print("Submitting form with payload: $formData");

//     // Send the data to the backend
//     final response = await http.post(
//       Uri.parse('https://192.168.0.109:7127/api/Mission'),
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode(formData),
//     );

//     if (response.statusCode == 201) {
//       print('Form submitted successfully!');
//       // Handle successful submission (e.g., show a success message, navigate back, etc.)
//     } else {
//       print('Error submitting form: ${response.statusCode}');
//       print('Response body: ${response.body}'); // Print response body for more details
//       // Handle error (e.g., show an error message)
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final categoryFields = categoryFieldConfig[widget.categoryName] ?? [];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.categoryName),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             Text(
//               '${widget.categoryName} Details',
//               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 20),

//             // Dynamically generate fields based on category configuration
//             if (categoryFields.contains('Date'))
//               Row(
//                 children: [
//                   const Text("Date:", style: TextStyle(fontSize: 16)),
//                   const SizedBox(width: 10),
//                   Expanded(
//                     child: OutlinedButton(
//                       onPressed: _pickDate,
//                       child: Text(_selectedDate != null
//                           ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
//                           : 'Select Date'),
//                     ),
//                   ),
//                 ],
//               ),
//             if (categoryFields.contains('Date')) const SizedBox(height: 20),

//             if (categoryFields.contains('Hours'))
//               Row(
//                 children: [
//                   const Text("Hours:", style: TextStyle(fontSize: 16)),
//                   const SizedBox(width: 10),
//                   Expanded(
//                     child: DropdownButton<int>(
//                       value: _selectedHours,
//                       hint: const Text("Select Hours"),
//                       isExpanded: true,
//                       onChanged: (value) {
//                         setState(() {
//                           _selectedHours = value;
//                         });
//                       },
//                       items: List.generate(24, (index) => index + 1) // Generates a list of integers from 1 to 24
//                           .map((hour) => DropdownMenuItem(
//                                 value: hour,
//                                 child: Text(hour.toString()),
//                               ))
//                           .toList(),
//                     ),
//                   ),
//                 ],
//               ),
//             if (categoryFields.contains('Hours')) const SizedBox(height: 20),

//             if (categoryFields.contains('Location'))
//               Row(
//                 children: [
//                   const Text("Location:", style: TextStyle(fontSize: 16)),
//                   const SizedBox(width: 10),
//                   Expanded(
//                     child: TextField(
//                       controller: TextEditingController(text: _currentLocation),
//                       decoration: const InputDecoration(
//                         border: OutlineInputBorder(),
//                       ),
//                       readOnly: true,
//                       onChanged: (value) {
//                         setState(() {
//                           _currentLocation = value;
//                         });
//                       },
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   IconButton(
//                     onPressed: _getCurrentLocation,
//                     icon: const Icon(Icons.location_on),
//                   ),
//                 ],
//               ),
//             if (_isFetchingLocation)
//               const Padding(
//                 padding: EdgeInsets.only(top: 10),
//                 child: Center(child: CircularProgressIndicator()),
//               ),
//             if (categoryFields.contains('Location')) const SizedBox(height: 20),

//             if (categoryFields.contains('EducationLevel'))
//               Row(
//                 children: [
//                   const Text("Education Level:", style: TextStyle(fontSize: 16)),
//                   const SizedBox(width: 10),
//                   Expanded(
//                     child: DropdownButton<String>(
//                       value: _selectedEducationLevel,
//                       hint: const Text("Select"),
//                       isExpanded: true,
//                       onChanged: (value) {
//                         setState(() {
//                           _selectedEducationLevel = value;
//                           _selectedGrade = null; // Reset grade when education level changes
//                         });
//                       },
//                       items: educationLevels
//                           .map((level) => DropdownMenuItem(
//                                 value: level,
//                                 child: Text(level),
//                               ))
//                           .toList(),
//                     ),
//                   ),
//                 ],
//               ),
//             if (categoryFields.contains('EducationLevel')) const SizedBox(height: 20),

//             if (categoryFields.contains('Grade') && _selectedEducationLevel != null)
//               Row(
//                 children: [
//                   const Text("Grade:", style: TextStyle(fontSize: 16)),
//                   const SizedBox(width: 10),
//                   Expanded(
//                     child: DropdownButton<int>(
//                       value: _selectedGrade,
//                       hint: const Text("Select"),
//                       isExpanded: true,
//                       onChanged: (value) {
//                         setState(() {
//                           _selectedGrade = value;
//                         });
//                       },
//                       items: gradeRanges[_selectedEducationLevel]!
//                           .map((grade) => DropdownMenuItem(
//                                 value: grade,
//                                 child: Text(grade.toString()),
//                               ))
//                           .toList(),
//                     ),
//                   ),
//                 ],
//               ),
//             if (categoryFields.contains('Grade')) const SizedBox(height: 20),

//             if (categoryFields.contains('Details'))
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text("Details:", style: TextStyle(fontSize: 16)),
//                   const SizedBox(height: 10),
//                   TextField(
//                     maxLines: 5,
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                       hintText: "Enter details...",
//                     ),
//                     onChanged: (value) {
//                       setState(() {
//                         _details = value;
//                       });
//                     },
//                   ),
//                 ],
//               ),
//             if (categoryFields.contains('Details')) const SizedBox(height: 20),

//             if (categoryFields.contains('Image'))
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text("Upload Image:", style: TextStyle(fontSize: 16)),
//                   const SizedBox(height: 10),
//                   GestureDetector(
//                     onTap: _pickImage,
//                     child: _selectedImage != null
//                         ? Image.file(
//                             _selectedImage!,
//                             height: 150,
//                             width: double.infinity,
//                             fit: BoxFit.cover,
//                           )
//                         : Container(
//                             height: 150,
//                             width: double.infinity,
//                             color: Colors.grey[300],
//                             child: const Icon(Icons.camera_alt, size: 50, color: Colors.grey),
//                           ),
//                   ),
//                 ],
//               ),
//             if (categoryFields.contains('Image')) const SizedBox(height: 20),

//             // Submit Button
//             ElevatedButton(
//               onPressed: _submitForm,
//               child: const Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:location/location.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

// Define a map to hold the configuration for each category
final Map<String, List<String>> categoryFieldConfig = {
  'Plumping/سباكه': [
    'Date',
    'Time',
    'Location',
    'Details',
    'Note',
    'Image'
  ],
  'Cleaning | التنظيف': ['Date', 'Time', 'Location', 'Details','Hour', 'Note'],
  'Electrical Services | الخدمات الكهربائية': ['Date', 'Time', 'Location', 'Details', 'Image', 'Note'],
  'Carpentry | النجارة':['Date', 'Time', 'Location', 'Details', 'Image', 'Note'],
  'teaching/تدريس':['Date', 'Time', 'Location', 'Details', 'Image', 'Note'],
  // Add more categories as needed
};

class MissionTemplateScreen extends StatefulWidget {
  final String categoryId;
  final String categoryName;
  final String userId; // Add userId parameter

  const MissionTemplateScreen({
    required this.categoryId,
    required this.categoryName,
    required this.userId,
    Key? key,
  }) : super(key: key); // Using super parameter for key

  @override
  _MissionTemplateScreenState createState() => _MissionTemplateScreenState();
}

class _MissionTemplateScreenState extends State<MissionTemplateScreen> {
  final Location _location = Location();
  String? _currentLocation;
  bool _isFetchingLocation = false;

  DateTime? _selectedDate;
  int? _selectedHours;
  String? _selectedEducationLevel;
  int? _selectedGrade;
  File? _selectedImage;
  String? _details;
  String? _note; // Add note field

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
        _currentLocation = '${locationData.latitude}, ${locationData.longitude}';
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

  // Handle form submission
  Future<void> _submitForm() async {
    final categoryFields = categoryFieldConfig[widget.categoryName] ?? [];

    // Collect data based on the fields required for the category
    final Map<String, dynamic> formData = {
      'CategoryId': widget.categoryId,
      'UserId': widget.userId,
      'Name': widget.categoryName,
      'State': 0,
      'Day': _selectedDate?.toIso8601String(), // Ensure it's in ISO format
      'Location': _currentLocation,
      'EducationLevel': _selectedEducationLevel,
      'Grade': _selectedGrade?.toString(), // Convert Grade to string
      'Details': _details,
      'Note': _note, // Add note field
      'Hours': _selectedHours?.toString(), // Convert Hours to string
      'Mission': 'mission details', // Ensure the mission field is included (Replace with actual mission details)
    };

    // Ensure all fields are included and set to null if not chosen
    if (!categoryFields.contains('Date')) formData['Day'] = null;
    if (!categoryFields.contains('Hours')) formData['Hours'] = null;
    if (!categoryFields.contains('Location')) formData['Location'] = null;
    if (!categoryFields.contains('EducationLevel')) formData['EducationLevel'] = null;
    if (!categoryFields.contains('Grade')) formData['Grade'] = null;
    if (!categoryFields.contains('Details')) formData['Details'] = null;
    //if (!categoryFields.contains('Note')) formData['Note'] = null;
    if (!categoryFields.contains('Image')) formData.remove('Image'); // Remove Image if not chosen

    if (_selectedImage != null) {
      final bytes = await _selectedImage!.readAsBytes();
      formData['Image'] = base64Encode(bytes);
    }

    // Print the payload for debugging purposes
    print("Submitting form with payload: $formData");

    // Send the data to the backend
    final response = await http.post(
      Uri.parse('https://192.168.0.109:7127/api/Mission'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(formData),
    );

    if (response.statusCode == 201|| response.statusCode == 200) {
    print('Form submitted successfully!');
      // Show popup message
      print('Form submitted successfully!');
      // Show popup message
      showDialog(
        context: context,
        barrierDismissible: false, // Prevent closing the dialog by tapping outside
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Order Sent'),
            content: const Text('Your order has been sent. Please wait a few minutes for the offers to appear.'),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                  Navigator.of(context).pop(); // Navigate back to the home screen
                },
              ),
            ],
          );
        },
      );
    } else {
      print('Error submitting form: ${response.statusCode}');
      print('Response body: ${response.body}'); // Print response body for more details
      // Handle error (e.g., show an error message)
    }
  }

  @override
  Widget build(BuildContext context) {
    final categoryFields = categoryFieldConfig[widget.categoryName] ?? [];

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

            // Dynamically generate fields based on category configuration
            if (categoryFields.contains('Date'))
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
            if (categoryFields.contains('Date')) const SizedBox(height: 20),

            if (categoryFields.contains('Hours'))
              Row(
                children: [
                  const Text("Hours:", style: TextStyle(fontSize: 16)),
                  const SizedBox(width: 10),
                  Expanded(
                    child: DropdownButton<int>(
                      value: _selectedHours,
                      hint: const Text("Select Hours"),
                      isExpanded: true,
                      onChanged: (value) {
                        setState(() {
                          _selectedHours = value;
                        });
                      },
                      items: List.generate(24, (index) => index + 1) // Generates a list of integers from 1 to 24
                          .map((hour) => DropdownMenuItem(
                                value: hour,
                                child: Text(hour.toString()),
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            if (categoryFields.contains('Hours')) const SizedBox(height: 20),

            if (categoryFields.contains('Location'))
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
                      onChanged: (value) {
                        setState(() {
                          _currentLocation = value;
                        });
                      },
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
            if (categoryFields.contains('Location')) const SizedBox(height: 20),

            if (categoryFields.contains('EducationLevel'))
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
            if (categoryFields.contains('EducationLevel')) const SizedBox(height: 20),

            if (categoryFields.contains('Grade') && _selectedEducationLevel != null)
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
            if (categoryFields.contains('Grade')) const SizedBox(height: 20),

            if (categoryFields.contains('Details'))
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Details:", style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 10),
                  TextField(
                    maxLines: 5,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter details...",
                    ),
                    onChanged: (value) {
                      setState(() {
                        _details = value;
                      });
                    },
                  ),
                ],
              ),
            if (categoryFields.contains('Details')) const SizedBox(height: 20),

            if (categoryFields.contains('Note'))
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Note:", style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 10),
                  TextField(
                    maxLines: 5,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter note...",
                    ),
                    onChanged: (value) {
                      setState(() {
                        _note = value;
                      });
                    },
                  ),
                ],
              ),
            if (categoryFields.contains('Note')) const SizedBox(height: 20),

            if (categoryFields.contains('Image'))
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                ],
              ),
            if (categoryFields.contains('Image')) const SizedBox(height: 20),

            // Submit Button
            ElevatedButton(
              onPressed: _submitForm,
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}