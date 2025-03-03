import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarAppointment extends StatelessWidget {
  const AppBarAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined, size: 24),
          onPressed: () => Navigator.pop(context),
        ),
        const Spacer(),
        Text(
          "My Appointment",
          style: GoogleFonts.rubik(
            fontSize: 20,
            fontWeight: FontWeight.w500,

          ),
        ),
        const Spacer(),
        const SizedBox(width: 48), // To balance the back button space
      ],
    );
  }
}