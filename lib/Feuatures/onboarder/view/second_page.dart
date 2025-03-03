import 'package:flutter/material.dart';

import 'Widgets/component_onboarding_screen.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const ComponentOnboardingScreen(
        image: "assets/images/onpourding1.png",

        title: "Real-Time Monitoring",
        description:  "Easily track your respiration rate, oxygen levels, and more—anytime, anywhere.",);
  }
}
