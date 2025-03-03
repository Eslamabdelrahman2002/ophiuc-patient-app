import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Feuatures/profile/view/widget/first_container.dart';
import 'package:project_app/Feuatures/profile/view/widget/fourth_container.dart';
import 'package:project_app/Core/utils/assets_images.dart';
import 'package:project_app/Feuatures/profile/view/widget/second_container.dart';
import 'package:project_app/Feuatures/profile/view/widget/third_container.dart';
import 'edit_profile.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  File? _selectedImage;

  void _updateProfileImage(File? newImage) {
    setState(() {
      _selectedImage = newImage;
    });
  }

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
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Text(
                "Account Settings",
                style: GoogleFonts.rubik(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
              Text("Hala Ebrahem", style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              )),
              Text("65 years old", style: GoogleFonts.inter(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF494949).withOpacity(.9),
              )),
              const SizedBox(height: 35),
              FirstContainer(
                updateProfileImage: _updateProfileImage,
              ),
              SizedBox(height: 35),
              const SecondContainer(),
              SizedBox(height: 35),
              const ThirdContainer(),
              SizedBox(height: 35),
              const FourthContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
