import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ComponentOnboardingScreen extends StatelessWidget {
  const ComponentOnboardingScreen({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return  Stack(
        fit: StackFit.expand,
        children: [
          SizedBox(
            height: double.infinity,

            child: Image.asset(
              image,
              fit: BoxFit.cover,

            ),
          ),
  Container(
    color: Colors.black.withOpacity(.5),
    height: double.infinity,
  ),
          // Gradient overlay for better text visibility
          Positioned(
            bottom: 200, // Adjust as needed
            left: 20,
            right: 20,
            child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.alice(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      description,
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

          ],

    );
  }
}
