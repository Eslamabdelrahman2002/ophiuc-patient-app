import 'package:flutter/material.dart';
import 'package:project_app/Feuatures/stats/view/widget/container_bed_time.dart';
import 'package:project_app/Feuatures/stats/view/widget/container_heart_bpm.dart';
import 'package:project_app/Feuatures/stats/view/widget/container_pressure.dart';
import 'package:project_app/Feuatures/stats/view/widget/container_spo2.dart';
import 'package:project_app/Feuatures/stats/view/widget/container_temperature.dart';

class ListInformationSensors extends StatefulWidget {
   const ListInformationSensors({super.key});

  @override
  State<ListInformationSensors> createState() => _ListInformationSensorsState();
}

class _ListInformationSensorsState extends State<ListInformationSensors> {
List<Widget>getContainers=[
  ContainerBedTime(),
 ContainerPressure(),
  ContainerSpo2(),
  ContainerTemperature(),
  ContainerHeartBpm()
];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context,index){
            return getContainers[index];
          },
          separatorBuilder: (context,index)=>const SizedBox(height: 20,),
          itemCount: getContainers.length),
    );

  }
}
