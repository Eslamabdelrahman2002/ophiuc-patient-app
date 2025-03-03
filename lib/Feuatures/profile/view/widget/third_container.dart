import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Feuatures/profile/view/bmi_screen.dart';

class ThirdContainer extends StatelessWidget {
  const ThirdContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>navigation(context),
      child: Container(
        padding: EdgeInsets.only(left: 19,right: 19,top: 5,),
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.withOpacity(.1),
        ),
        child: Row(
          children: [
            Text("BMI",style: GoogleFonts.rubik(
                fontWeight: FontWeight.w400,
                fontSize: 20
            ),),
            Spacer(),
            Icon(Icons.navigate_next,color: Colors.white,size: 35,)
          ],
        ),
      ),
    );
  }
  void navigation(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>  BmiScreen(),
      ),
    );}
}
