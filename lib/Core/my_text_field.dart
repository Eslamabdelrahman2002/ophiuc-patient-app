import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Your MyTextField widget
class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.text,
    this.prefixIcon,
    required this.controller,
    this.validator,
    this.suffixIcon,
    this.obscureText = false,
    this.onSuffixIconPressed,
    this.keyboardType,
  });

  final String text;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final VoidCallback? onSuffixIconPressed;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        fillColor: Colors.grey.withOpacity(.1),
        filled: true,
        hintText: text,
        hintStyle: GoogleFonts.inter(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: const Color(0xFFFFFFFF).withOpacity(.19),
        ),
        prefixIcon: Icon(
          prefixIcon,
          color: const Color(0xFFFFFFFF).withOpacity(.19),
        ),
        suffixIcon: suffixIcon != null
            ? IconButton(
          icon: Icon(
            suffixIcon,
            color: const Color(0xFFFFFFFF).withOpacity(.19),
          ),
          onPressed: onSuffixIconPressed,
        )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: const Color(0xFF373737).withOpacity(.5),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            // color: Colors.grey, // Gray color when focused
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red, // Red color when there is an error
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red, // Red color when focused and there is an error
          ),
        ),
      ),
    );
  }
}