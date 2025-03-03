import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HealthRow extends StatelessWidget {
  const HealthRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 27,left: 35,top: 21,bottom: 21),
      child: Row(
        children: [
          Text("Health Parameters",style:
          GoogleFonts.inter(
            fontWeight: FontWeight.w600,
            fontSize: 20
          ),),
          const Spacer(),
          const CircleAvatar(backgroundColor: Color(0xFF30A77A),
          radius: 5,
          ),
          const SizedBox(width: 9,),
          Text("Normal", style:
          GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 13,
            color: const Color(0xFF30A77A)
          ),)
        ],
      ),
    );
  }
}
