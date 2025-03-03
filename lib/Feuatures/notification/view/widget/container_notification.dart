import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerNotification extends StatelessWidget {
  const ContainerNotification({super.key});

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
              Text("Take your medicine",style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 20
              ),),

            ],)
        ],
      ),
    );
  }
}
