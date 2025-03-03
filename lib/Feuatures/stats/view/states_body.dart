import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Core/utils/assets_images.dart';
import 'package:project_app/Feuatures/stats/view/widget/container_last_sleep_information.dart';
import 'package:project_app/Feuatures/stats/view/widget/list_information_sensors.dart';
import 'package:project_app/Feuatures/stats/view/widget/row_sleep_information.dart';

class StatesBody extends StatelessWidget {
  const StatesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(Assets.background),fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Statistics",style: GoogleFonts.ubuntu(
                fontWeight: FontWeight.w500,
                fontSize: 36
              ),),
              Text("Everything is looking normal",style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                color: const Color(0xFF999999)
              ),),
                const SizedBox(height: 28,),
                RowSleepInformation(),
              const ContainerLastSleepInformation(),
              SizedBox(height: 36,),
              ListInformationSensors()

            ],
          ),
        ),
      ),
    );
  }
}
