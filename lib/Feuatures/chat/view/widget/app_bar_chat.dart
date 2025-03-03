import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Feuatures/home/view/home_screen.dart';

class AppBarChat extends StatelessWidget {
  const AppBarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: ()=>navigation(),
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        ClipOval(
          child: Image.asset(
            "assets/images/character.png",
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Dr. Mohamed",
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF30A77A),
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  "Online",
                  style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF30A77A),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
  void navigation() {
    Get.to(
          () => HomeScreen(),
      transition: Transition.fade,
      duration: const Duration(milliseconds: 300),
    );
  }
}
