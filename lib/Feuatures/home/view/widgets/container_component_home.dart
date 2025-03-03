import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerComponentHome extends StatelessWidget {
  const ContainerComponentHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 163,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                height: 140,
                width: MediaQuery.of(context).size.width - 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/background_container.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 35),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Your health is God’s\n gift to you, take care\n about it",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              TextSpan(
                                text: "!",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color:const Color(0xFF00FF55).withOpacity(.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            margin: const EdgeInsets.only(right: 95),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(.3),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/Switch.png"),
                              ),
                            ),
                          ),
                          const SizedBox(height: 44),
                          Container(
                            height: 24,
                            width: 24,
                            margin: const EdgeInsets.only(right: 112),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(.3),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/heart.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: 163,
                width: 120,
                child: Image.asset(
                  "assets/images/doctor.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}