import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Feuatures/profile/view/edit_profile.dart';
import 'package:project_app/Feuatures/profile/view/my_appointment_screen.dart';

class FirstContainer extends StatelessWidget {
  final Function(File?) updateProfileImage;

  const FirstContainer({super.key, required this.updateProfileImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 19, right: 19, top: 25),
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.withOpacity(.1),
      ),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () => navigationEdit(context),
                child: Text(
                  "Edit profile",
                  style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
              Spacer(),
              Icon(
                Icons.navigate_next,
                color: Colors.white,
                size: 35,
              ),
            ],
          ),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () => navigationAppointment(context),
            child: Row(
              children: [
                Text(
                  "My Appointment",
                  style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                  size: 35,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void navigationEdit(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditProfileScreen(
          updateProfileImage: updateProfileImage,
        ),
      ),
    );
  }
  void navigationAppointment(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MyAppointmentScreen(),
      ),
    );
  }
}
