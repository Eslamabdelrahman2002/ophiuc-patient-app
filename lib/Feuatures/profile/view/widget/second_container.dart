import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondContainer extends StatefulWidget {
   const SecondContainer({super.key});

  @override
  State<SecondContainer> createState() => _SecondContainerState();
}

class _SecondContainerState extends State<SecondContainer> {
bool _notification=false;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 19,right: 19,top: 5,),
        margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.withOpacity(.1),

      ),
      child:  Row(
        children: [
          Text("Notification",style: GoogleFonts.rubik(
              fontWeight: FontWeight.w400,
              fontSize: 20
          ),),
          Spacer(),
          Switch(
            value: _notification,
            onChanged: (bool value) {
              setState(() {
                _notification = value;
              });
            },
            activeColor: Colors.white,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Colors.grey.withOpacity(.1),
            activeTrackColor: Color(0xFF5AA653).withOpacity(0.6),
            

          ),
        ],
      )
    );
  }
}
