import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Core/utils/assets_images.dart';
import 'package:project_app/Feuatures/onboarder/view/first_page.dart';
import 'package:project_app/Feuatures/onboarder/view/second_page.dart';
import 'package:project_app/Feuatures/onboarder/view/third_page.dart';
import 'package:project_app/Feuatures/uathentication/login/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  final PageController controller = PageController();

  final List<Widget> pages = [
    const FirstPage(),
    const SecondPage(),
    const ThirdPage(),
  ];

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void navigateToLogin() {
    Get.to(() => const LoginScreen(), transition: Transition.fade, duration: const Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.background),
            fit: BoxFit.cover, // Ensure the background image covers the screen
          ),
        ),
        child: Stack(
          children: [

            PageView(
              controller: controller,
              children: pages.map((page) {
                return Container(
                  color: Colors.transparent, // Ensure the PageView is transparent
                  child: Stack(
                    children: [
                      page,
                      // Only show the icon on the last page
                      if (pages.indexOf(page) == pages.length - 1)
                        Positioned(
                          bottom: 40,
                          right: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'START',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.arrow_circle_right_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                onPressed: navigateToLogin, // Trigger the navigation
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                );
              }).toList(),
            ),
            // SmoothPageIndicator at the bottom
            Positioned(
              bottom: 20, // Position it near the bottom
              left: 0,
              right: 0,
              child: Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: pages.length,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Colors.white,
                    dotHeight: 8,
                    dotWidth: 8,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}