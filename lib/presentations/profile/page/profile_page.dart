import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:technical_test_borwita/core/extensions/sized_box_ext.dart';
import 'package:technical_test_borwita/presentations/profile/widget/build_info_card_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ImagePicker _picker = ImagePicker();

  File? _imageFile;

  String name = "Galuh DAP";
  String position = "Mobile Developer";
  String email = "galuh@email.com";
  String latitude = "-7.2575";
  String longitude = "112.7521";

  @override
  void initState() {
    super.initState();
    _loadImageFromPrefs();
  }

  Future<void> _loadImageFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final fileName = prefs.getString('profile_image');

    if (fileName != null) {
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/$fileName');

      if (await file.exists()) {
        setState(() {
          _imageFile = file;
        });
      }
    }
  }

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);

    if (pickedFile == null) return;

    final File tempFile = File(pickedFile.path);

    final dir = await getApplicationDocumentsDirectory();

    final fileName = 'profile_${DateTime.now().millisecondsSinceEpoch}.jpg';

    final savedImage = await tempFile.copy('${dir.path}/$fileName');

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('profile_image', fileName);

    setState(() {
      _imageFile = savedImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// PROFILE IMAGE
            Stack(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: _imageFile != null
                      ? FileImage(_imageFile!)
                      : const AssetImage('assets/default.png') as ImageProvider,
                ),

                Positioned(
                  bottom: 0,
                  right: 0,
                  child: PopupMenuButton(
                    icon: const Icon(Icons.camera_alt),
                    itemBuilder: (context) => const [
                      PopupMenuItem(value: 'camera', child: Text('Camera')),
                      PopupMenuItem(value: 'gallery', child: Text('Gallery')),
                    ],
                    onSelected: (value) {
                      if (value == 'camera') {
                        _pickImage(ImageSource.camera);
                      } else {
                        _pickImage(ImageSource.gallery);
                      }
                    },
                  ),
                ),
              ],
            ),

            24.height,

            /// INFO CARD
            BuildInfoCardWidget(title: "Nama", value: name),
            BuildInfoCardWidget(title: "Posisi", value: position),
            BuildInfoCardWidget(title: "Email", value: email),
            BuildInfoCardWidget(title: "Latitude", value: latitude),
            BuildInfoCardWidget(title: "Longitude", value: longitude),
          ],
        ),
      ),
    );
  }
}
