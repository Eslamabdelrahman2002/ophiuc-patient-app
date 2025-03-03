import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:project_app/Core/utils/assets_images.dart';
import '../../../Core/my_text_field.dart';
import '../../../Core/utils/label.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController bloodTypeController = TextEditingController();

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
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Color(0xFF30A77A).withOpacity(.3),
                  child: const FaIcon(
                    FontAwesomeIcons.images,
                    color: Colors.white,
                    size: 60,
                  ),
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
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 26),
              SizedBox(height: 26),
              Label(text: 'Height (cm)'),
              SizedBox(height: 8),
              MyTextField(
                text: 'Enter your height',
                controller: heightController,
                prefixIcon: Icons.height,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 26),
              Label(text: 'Weight (kg)'),
              SizedBox(height: 8),
              MyTextField(
                text: 'Enter your weight',
                controller: weightController,
                prefixIcon: Icons.line_weight,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 26),
              Label(text: 'Blood Type'),
              SizedBox(height: 8),
              MyTextField(
                text: 'Enter your blood type',
                controller: bloodTypeController,
                prefixIcon: Icons.bloodtype,
                keyboardType: TextInputType.name,
              ),
            ],
          ),
        ),
      ),
    );
  }
}