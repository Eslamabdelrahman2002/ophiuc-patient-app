import 'package:flutter/material.dart';
import 'package:project_app/Feuatures/home/view/widgets/component_sensor_page.dart';
import 'package:fl_chart/fl_chart.dart';

class Spo2chartpage extends StatelessWidget {
  const Spo2chartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ComponentSensorPage(
        title: "Blood Pressure",
        titleChart: "Systolic Pressure",
        result: "125/85",
        measuringTool: "mmHg",
        chartData: [
          FlSpot(0.0, 125),
          FlSpot(1.0, 127),
          FlSpot(2.0, 123),
          FlSpot(3.0, 126),
          FlSpot(4.0, 124),
          FlSpot(5.0, 125),
          FlSpot(6.0, 127),
          FlSpot(7.0, 123),
          FlSpot(8.0, 126),
          FlSpot(9.0, 124),
          FlSpot(10.0, 125),
          FlSpot(11.0, 128),
          FlSpot(12.0, 122),
          FlSpot(13.0, 127),
          FlSpot(14.0, 123),
          FlSpot(15.0, 126),
          FlSpot(16.0, 124),
          FlSpot(17.0, 125),
          FlSpot(18.0, 129),
          FlSpot(19.0, 121),
        ],
        leftLabels: [100, 110, 120, 130, 140, 150, 160],
        bottomLabels: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15","16","17","18","19"],
        image: "assets/images/blood_sensor.png",
        maxX: 19,
        maxY: 160,
        minX: 0,
        minY: 100,
        curve: true,
      ),
    );
  }
}