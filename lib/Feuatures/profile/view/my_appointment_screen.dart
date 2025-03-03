import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Core/utils/assets_images.dart';
import 'package:project_app/Feuatures/profile/view/widget/app_bar_appointment.dart';
import 'package:project_app/Feuatures/profile/view/widget/container_appointment.dart';

class MyAppointmentScreen extends StatelessWidget {
  const MyAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.background),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarAppointment(),
              const SizedBox(height: 45),
              const ContainerAppointment(),
              const SizedBox(height: 35),
              Text(
                "Past Appointment",
                style: GoogleFonts.rubik(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 25),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => const ContainerAppointment(),
                  separatorBuilder: (context, index) => const SizedBox(height: 35),
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}