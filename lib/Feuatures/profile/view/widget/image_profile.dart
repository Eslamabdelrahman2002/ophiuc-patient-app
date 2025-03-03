import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:io';

class ProfileImageWidget extends StatelessWidget {
  final File? selectedImage;
  final VoidCallback onTap;

  const ProfileImageWidget({
    super.key,
    required this.selectedImage,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 60,
        backgroundColor: const Color(0xFF30A77A).withOpacity(.3),
        backgroundImage: selectedImage != null ? FileImage(selectedImage!) : null,
        child: selectedImage == null
            ? const FaIcon(
          FontAwesomeIcons.images,
          color: Colors.white,
          size: 60,
        )
            : null,
      ),
    );
  }
}