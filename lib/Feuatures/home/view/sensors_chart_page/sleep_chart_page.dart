import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../widgets/component_sensor_page.dart';

class SleepChartPage extends StatelessWidget {
  const SleepChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ComponentSensorPage(
        title: 'Sleep',
        titleChart: 'Bed Time',
        result: '6.5',
        measuringTool: 'Hours',
        chartData: [
          FlSpot(0, 3),
          FlSpot(1, 5),
          FlSpot(2, 3),
          FlSpot(3, 6),
          FlSpot(4, 2),
          FlSpot(5, 5),
          FlSpot(6, 3),
        ],
        leftLabels: [
          12 , 1 , 2 , 3 , 4 , 5 , 6
        ],
        image: "assets/images/sleep_sensor.png",
        bottomLabels: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"],
        minX: 0,
        maxX: 7,
        minY: 0,
        maxY: 8,
        curve: true,
      ),
    );
  }
}