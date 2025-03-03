import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../widgets/component_sensor_page.dart';

class PressureChartPage extends StatelessWidget {
  const PressureChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ComponentSensorPage(
        title: "Blood Oxygen Level",
        titleChart: "SpO2 Level",
        result: "95%",
        measuringTool: "RR",
        chartData: [
          FlSpot(0.0, 95),
          FlSpot(0.5, 96),
          FlSpot(1.0, 94),
          FlSpot(1.5, 97),
          FlSpot(2.0, 93),
          FlSpot(2.5, 98),
          FlSpot(3.0, 92),
          FlSpot(3.5, 96),
          FlSpot(4.0, 95),
          FlSpot(4.5, 97),
          FlSpot(5.0, 94),
          FlSpot(5.5, 96),
          FlSpot(6.0, 98),
          FlSpot(6.5, 93),
          FlSpot(7.0, 95),
          FlSpot(7.5, 97),
          FlSpot(8.0, 94),
          FlSpot(8.5, 96),
          FlSpot(9.0, 95),
        ],
        leftLabels: [85, 90, 95, 100],
        bottomLabels: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
        image: "assets/images/bloodOxygen_sensor.png",
        minX: 0,
        maxX: 9,
        minY: 85,
        maxY: 100,
        curve: true,
      ),
    );
  }
}