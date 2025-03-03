import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SleepContainer extends StatelessWidget {
  const SleepContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.withOpacity(.1),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 9, left: 17.6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "sleep",
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "3h ago",
                    style: GoogleFonts.inter(
                      fontSize: 9,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF595959),
                    ),
                  ),
                  const SizedBox(height: 22),
                  Row(
                    children: [
                      Text(
                        "5 h 42 ",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "minute",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Image.asset("assets/images/Vector.png"),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 22,
              child: Image.asset(
                "assets/images/SleepGraph.png",
                width: 105,
                height: 58,
              ),
            ),
          ],
        ),
      ),
    );
  }
}