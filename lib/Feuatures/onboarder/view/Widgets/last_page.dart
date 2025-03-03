import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LastPage extends StatelessWidget {
  const LastPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.onIconTap, // callback for navigation
  });

  final String image;
  final String title;
  final String description;
  final VoidCallback onIconTap; // callback for the icon button tap

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          const SizedBox(height: 141,),
          SizedBox(
            height: 375.0,
            width: double.infinity,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          // Space between the image and text
          const SizedBox(height: 30),
          // Title and description below the image
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
