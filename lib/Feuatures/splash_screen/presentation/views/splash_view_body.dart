import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/Core/utils/assets_images.dart';
import 'package:project_app/Feuatures/onboarder/view/onboarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimationImage;

  @override
  void initState() {
    super.initState();
    animation();
    navigation();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.background),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: SlideTransition(
              position: slidingAnimationImage,
              child: Image.asset(
                Assets.logo, // Use the correct path from the Assets class
                height: 450,
              ),
            ),
          ),

        ],
      ),
    );
  }

  void animation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    slidingAnimationImage = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(animationController);


    animationController.forward();
  }

  void navigation() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(
            () => const OnboardingView(),
        transition: Transition.fade,
        duration: const Duration(milliseconds: 300),
      );
    });
  }
}