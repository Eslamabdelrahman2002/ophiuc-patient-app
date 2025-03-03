import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Feuatures/profile/view/privacy_policy.dart';
import '../../../uathentication/login/login_screen.dart';

class FourthContainer extends StatefulWidget {
  const FourthContainer({super.key});

  @override
  State<FourthContainer> createState() => _FourthContainerState();
}

class _FourthContainerState extends State<FourthContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 19, right: 19, top: 25),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.withOpacity(.1),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () => navigationAppointment(context),
            child: Row(
              children: [
                Text(
                  "Privacy policy",
                  style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                  size: 35,
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          InkWell(
            onTap: () => showLogoutDialog(context),
            child: Row(
              children: [
                Text(
                  "Logout",
                  style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                  size: 35,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void navigationAppointment(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PrivacyPolicy(),
      ),
    );
  }

  void showLogoutDialog(BuildContext context) {
    showDialog(
      barrierColor: Colors.black.withOpacity(0.5),
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xFF171717),
          title:  Text(
            "Logout",
            style: GoogleFonts.rubik(
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
          ),
          content:  Text(
            "Are you sure you want to logout?",
            style: GoogleFonts.rubik(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF939987)
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Cancel",
                style: TextStyle(color: Color(0xFF30A77A)),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                navigationLogin(context);
              },
              child: const Text(
                "OK",
                style: TextStyle(color: Color(0xFF30A77A)),
              ),
            ),
          ],
        );
      },
    );
  }

  void navigationLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }
}