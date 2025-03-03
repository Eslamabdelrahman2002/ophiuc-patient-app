import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:project_app/Feuatures/home/view/widgets/component_sensor_page.dart';

class TemperatureChartPage extends StatelessWidget {
  const TemperatureChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ComponentSensorPage(
        title: "Temperature",
        titleChart: "Body Temperature",
        result: "37",
        measuringTool: "°C",
        chartData: [
          FlSpot(0.0, 36.5),
          FlSpot(1.0, 36.6),
          FlSpot(2.0, 36.7),
          FlSpot(3.0, 36.8),
          FlSpot(4.0, 37.0),
          FlSpot(5.0, 37.2),
          FlSpot(6.0, 37.5),
          FlSpot(7.0, 37.8),
          FlSpot(8.0, 38.0),
          FlSpot(9.0, 37.5),
          FlSpot(10.0, 37.0),
          FlSpot(11.0, 36.8),
        ],
        leftLabels: [
          35.0, 35.5, 36.0, 36.5, 37.0, 37.5, 38.0, 38.5, 39.0, 39.5, 40.0
        ],
        bottomLabels: [
          "0", "2", "4", "6", "8", "10", "12", "14", "16", "18", "20", "22"
        ],
        image: "assets/images/temperature_sensor.png",
        maxX: 11,
        maxY: 40,
        minX: 0,
        minY: 35,
        curve: true,
      ),
    );
  }
}
