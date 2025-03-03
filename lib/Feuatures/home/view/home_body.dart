import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/Feuatures/home/view/sensors_chart_page/SpO2ChartPage.dart';
import 'package:project_app/Feuatures/home/view/sensors_chart_page/heart_rate_chart_page.dart';
import 'package:project_app/Feuatures/home/view/sensors_chart_page/pressure_chart_page.dart';
import 'package:project_app/Feuatures/home/view/sensors_chart_page/sleep_chart_page.dart';
import 'package:project_app/Feuatures/home/view/sensors_chart_page/temperature_chart_page.dart';
import 'package:project_app/Feuatures/home/view/widgets/app_bar_home_screen.dart';
import 'package:project_app/Feuatures/home/view/widgets/container_component_home.dart';
import 'package:project_app/Feuatures/home/view/widgets/health_row.dart';
import 'package:project_app/Feuatures/home/view/widgets/sensors_container.dart';
import 'package:project_app/Feuatures/home/view/widgets/sleep_container.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key});

  final List<Widget> pages = [
    const SleepChartPage(),
    const HeartRateChartPage(),
    const TemperatureChartPage(),
    const PressureChartPage(),
    const Spo2chartpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const AppBarHomeScreen(),
            const ContainerComponentHome(),
            const HealthRow(),
            GestureDetector(
              onTap: () => navigation(0),
              child: const SleepContainer(),
            ),
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => navigation(1),
                      child: const SensorsContainer(
                        title: 'Heart Rate',
                        time: 3,
                        result: 120,
                        imageSensor: 'heartRategraph.png',
                        measuringTool: 'bpm',
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => navigation(2),
                      child: const SensorsContainer(
                        title: 'Temperature',
                        time: 3,
                        result: 37,
                        imageSensor: 'temperature.png',
                        measuringTool: '°C',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => navigation(3),
                      child: const SensorsContainer(
                        title: 'SPO2',
                        time: 3,
                        result: 98,
                        imageSensor: 'SPO2.png',
                        measuringTool: '%',
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => navigation(4),
                      child: const SensorsContainer(
                        title: 'Pressure',
                        time: 3,
                        result: 120,
                        imageSensor: 'Pressure.png',
                        measuringTool: '/80',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void navigation(int index) {
    Get.to(
          () => pages[index],
      transition: Transition.fade,
      duration: const Duration(milliseconds: 300),
    );
  }
}
