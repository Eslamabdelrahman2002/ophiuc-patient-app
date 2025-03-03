import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../widgets/component_sensor_page.dart';

class HeartRateChartPage extends StatelessWidget {
  const HeartRateChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Expanded(
        child: ComponentSensorPage(
          title: "Heart Rate",
          titleChart: "Heart’s bpm",
          result: "120",
          measuringTool: "BPM",
          chartData: [
            FlSpot(0.0, 75),
            FlSpot(0.2, 78),
            FlSpot(0.4, 72),
            FlSpot(0.6, 95),
            FlSpot(0.8, 65),
            FlSpot(1.0, 75),
            FlSpot(1.2, 77),
            FlSpot(1.4, 72),
            FlSpot(1.6, 98),
            FlSpot(1.8, 64),
            FlSpot(2.0, 75),
            FlSpot(2.2, 76),
            FlSpot(2.4, 73),
            FlSpot(2.6, 97),
            FlSpot(2.8, 66),
            FlSpot(3.0, 75),
            FlSpot(3.2, 79),
            FlSpot(3.4, 74),
            FlSpot(3.6, 96),
            FlSpot(3.8, 63),
            FlSpot(4.0, 75),
            FlSpot(4.2, 77),
            FlSpot(4.4, 71),
            FlSpot(4.6, 94),
            FlSpot(4.8, 65),
            FlSpot(5.0, 75),
            FlSpot(5.2, 78),
            FlSpot(5.4, 73),
            FlSpot(5.6, 99),
            FlSpot(5.8, 64),
            FlSpot(6.0, 75),
            FlSpot(6.2, 80),
            FlSpot(6.4, 76),
            FlSpot(6.6, 95),
            FlSpot(6.8, 62),
            FlSpot(7.0, 75),
            FlSpot(7.2, 78),
            FlSpot(7.4, 74),
            FlSpot(7.6, 96),
            FlSpot(7.8, 65),
            FlSpot(8.0, 75),
            FlSpot(8.2, 79),
            FlSpot(8.4, 75),
            FlSpot(8.6, 98),
            FlSpot(8.8, 63),
            FlSpot(9.0, 75),
          ],
          leftLabels: [40,50,60, 75, 90, 100],
          bottomLabels: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
          image: "assets/images/heart_sensor.png",
          minX: 0,
          maxX: 9,
          minY: 40,
          maxY: 110,
          curve: false,
        ),
      ),
    );
  }
}