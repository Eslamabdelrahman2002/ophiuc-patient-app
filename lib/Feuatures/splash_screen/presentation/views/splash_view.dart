import 'package:flutter/material.dart';
import 'package:project_app/Feuatures/splash_screen/presentation/views/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 20, 20, 20),
      body:SplashViewBody(),
    );
  }
}
