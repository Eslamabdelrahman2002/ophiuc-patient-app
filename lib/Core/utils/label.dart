import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Label extends StatelessWidget {
  const Label({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, textAlign:TextAlign.start,
      style:
      GoogleFonts.
      inter(fontWeight: FontWeight.w400,fontSize: 14
      ),);
  }
}
