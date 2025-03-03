import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerAppointment extends StatelessWidget {
  const ContainerAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.1),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        children: [
          Image.asset("assets/images/doctor_image.png",
            height: 120,
            width: 95,
            fit: BoxFit.cover,),
          const SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text("DR. Mohamed Ali",style: GoogleFonts.inter(
                 fontWeight: FontWeight.w400,
                 fontSize: 16
               ),),
            Text("General partitioner",style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 13
            ),),
              SizedBox(height: 25,),
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.clock,size: 17,),
                  SizedBox(width: 4,),
                  Text("10:00 AM ",style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 13
                  ),),
                  SizedBox(width: 40,),
                  FaIcon(FontAwesomeIcons.calendarDays,size: 17,),
                  SizedBox(width: 4,),
                  Text("10:00 AM ",style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 13
                  ),)
                ],
              )
          ],)
        ],
      ),
    );
  }
}
