import 'package:flutter/material.dart';
import 'package:project_app/Feuatures/onboarder/view/Widgets/component_onboarding_screen.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComponentOnboardingScreen(
        image: 'assets/images/onboarding11.png',

        title: "Welcome to ",
        description: "Your trusted companion for monitoring vital signs and respiratory health. Stay informed, stay safe.");
  }
}
