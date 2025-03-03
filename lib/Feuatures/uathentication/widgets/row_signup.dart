import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Feuatures/uathentication/signup/sign_up_screen.dart';


class RowSignup extends StatelessWidget {
  const RowSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an acount ?",style: GoogleFonts.inter(fontSize: 12,fontWeight: FontWeight.w400),),
        TextButton(
            onPressed: (){
              navigation();
            }, child: Text("Sign Up", style: GoogleFonts.notoSans(
          fontSize: 15,
          fontWeight: FontWeight.w900,
          color: const Color(0xFF30A77A)
        ),))
      ],
    );
  }
  void navigation() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(
            () =>  const SignUpScreen(),
        transition: Transition.fade,
        duration:const Duration(milliseconds: 300), // Specify a valid duration here
      );
    });
  }
}
