import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SensorsContainer extends StatelessWidget {
  const SensorsContainer({
    super.key,
    required this.title,
    required this.time,
    required this.result,
    required this.imageSensor,
    required this.measuringTool,
  });

  final String title;
  final int time;
  final int result;
  final String imageSensor;
  final String measuringTool;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 146,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.withOpacity(.1),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "${time}h ago",
              style: GoogleFonts.inter(
                fontSize: 9,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF595959),
              ),
            ),
            const Spacer(),
            Stack(
              alignment: Alignment.center, // Center the stack contents
              children: [
                // Ensure the image path is correct
                Image.asset(
                  "assets/images/$imageSensor",
                  width: double.infinity,
                  height: 50,
                  fit: BoxFit.fill,


                ),
                Positioned(
                  top: 13,
                  left: 18,
                  child: Text(
                    "$result\n$measuringTool",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}