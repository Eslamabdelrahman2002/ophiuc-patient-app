import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:project_app/Core/utils/assets_images.dart';

import '../../../Core/my_text_field.dart';
import '../../../Core/utils/label.dart';

class EditProfileScreen extends StatefulWidget {
  final Function(File?) updateProfileImage;

  const EditProfileScreen({super.key, required this.updateProfileImage});

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  File? _selectedImage;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController bloodTypeController = TextEditingController();
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.background),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Color(0xFF30A77A).withOpacity(.3),
                      backgroundImage: _selectedImage != null
                          ? FileImage(_selectedImage!)
                          : null,
                      child: _selectedImage == null
                          ? const FaIcon(
                        FontAwesomeIcons.images,
                        color: Colors.white,
                        size: 60,
                      )
                          : null,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.edit, color: Colors.grey.withOpacity(.9)),
                        onPressed: _pickImage,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Hala Ebrahem",
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                  "65 years old",
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF494949).withOpacity(.9),

                  ),textAlign: TextAlign.center),
              const SizedBox(height: 26),
              Label(text: 'First Name'),
              SizedBox(height: 8),
              MyTextField(
                text: 'Enter your first name',
                controller: firstNameController,
                prefixIcon: Icons.person,
                keyboardType: TextInputType.name,
              ),
              SizedBox(height: 26),
              Label(text: 'Last Name'),
              SizedBox(height: 8),
              MyTextField(
                text: 'Enter your last name',
                controller: lastNameController,
                prefixIcon: Icons.person,
                keyboardType: TextInputType.name,
              ),
              SizedBox(height: 26),
              Label(text: 'Email'),
              SizedBox(height: 8),
              MyTextField(
                text: 'Enter your email',
                controller: emailController,
                prefixIcon: Icons.email,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 26),
              Label(text: 'Age'),
              SizedBox(height: 8),
              MyTextField(
                text: 'Enter your age',
                controller: ageController,
                prefixIcon: Icons.calendar_today,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 26),
              Label(text: 'Gender'),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio<String>(
                    value: 'Male',
                    groupValue: _selectedGender,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedGender = value;
                      });
                    },
                    activeColor: Color(0xFF30A77A).withOpacity(.3),
                  ),
                  Label(text: "Male"),
                  Radio<String>(
                    value: 'Female',
                    groupValue: _selectedGender,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedGender = value;
                      });
                    },
                    activeColor: Color(0xFF30A77A).withOpacity(.3),
                  ),
                  Label(text: "Female"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


  Future<void> _pickImage() async {
    try {
      final status = await Permission.photos.request();
      if (status.isGranted) {
        final picker = ImagePicker();
        final pickedFile = await picker.pickImage(source: ImageSource.gallery);

        if (pickedFile != null) {
          setState(() {
            _selectedImage = File(pickedFile.path);
          });
          widget.updateProfileImage(_selectedImage);
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Permission denied to access gallery')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to pick image: $e')),
      );
    }
  }
}
