import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Feuatures/profile/view/widget/app_bar_privacy.dart';
import '../../../Core/utils/assets_images.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.background),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarPrivacy(),
              const SizedBox(height: 30),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ophiuc Apps Privacy Policy",
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFFAEAFAE),
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words believable. It is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more",
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFAEAFAE).withOpacity(.5),
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(height: 10),
                      _buildBulletPoint("Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\"."),
                      _buildBulletPoint("Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted."),
                      _buildBulletPoint("The point of using Lorem Ipsum is that it has a more."),
                      _buildBulletPoint("Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\"."),
                      _buildBulletPoint("Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted."),
                      _buildBulletPoint("The point of using Lorem Ipsum is that it has a more."),
                      _buildBulletPoint("Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\"."),
                      _buildBulletPoint("Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted."),
                      _buildBulletPoint("The point of using Lorem Ipsum is that it has a more."),
                      _buildBulletPoint("Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\"."),
                      _buildBulletPoint("Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted."),
                      _buildBulletPoint("The point of using Lorem Ipsum is that it has a more."),
                      _buildBulletPoint("Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\"."),
                      _buildBulletPoint("Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted."),
                      _buildBulletPoint("The point of using Lorem Ipsum is that it has a more."),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(color: const Color(0xFF92AB8F).withOpacity(.7), fontSize: 25,fontWeight: FontWeight.bold)),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.rubik(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFFAEAFAE).withOpacity(.5)
              ),
            ),
          ),
        ],
      ),
    );
  }
}