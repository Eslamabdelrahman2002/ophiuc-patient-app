import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerLastSleepInformation extends StatelessWidget {
  const ContainerLastSleepInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(top: 19),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.withOpacity(.1)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 7,top: 17),
            child: Text("Last sleep information",style: GoogleFonts.openSans(
              fontWeight: FontWeight.w400,
              fontSize: 20
            ),),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 50),
            child:
            Row(
              children: [
                FaIcon(FontAwesomeIcons.moon,),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Text("6h 52m",style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                    ),),
                    Text("Time in sleep",style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Color(0xFF8D8D8D)
                    ),),

                  ],
                ),
                Spacer(),
                FaIcon(FontAwesomeIcons.cloudSun,),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Text("07:12 AM",style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                    ),),
                    Text("Wake up time",style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Color(0xFF8D8D8D)
                    ),),

                  ],
                ),

              ],
            ),

          ),
          SizedBox(height: 26,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 50),
            child:
            Row(
              children: [
                FaIcon(FontAwesomeIcons.clock,),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Text("7h 23m",style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                    ),),
                    Text("Went to bed",style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      color: Color(0xFF8D8D8D)
                    ),),

                  ],
                ),
                const Spacer(),
                const FaIcon(FontAwesomeIcons.bed,),
                const SizedBox(width: 10,),
                Column(
                  children: [
                    Text("25 min",style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                    ),),
                    Text("Fell a sleep",style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Color(0xFF8D8D8D)
                    ),),

                  ],
                ),

              ],
            ),

          )
        ],
      ),
    );
  }
}
