import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/Feuatures/uathentication/login/login_screen.dart';
import 'Widgets/last_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LastPage(
      image: "assets/images/onbourding3.png",
      title: "Share with Your Doctor",
      description: "Instantly share your health data with medical professionals to ensure better care and quicker decisions.",
      onIconTap: navigation, // Pass the navigation function
    );
  }

  // Navigation function to login screen
  void navigation() {
    Get.to(
          () => const LoginScreen(),
      transition: Transition.fade,
      duration: const Duration(milliseconds: 300),
    );
  }
}
