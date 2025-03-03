import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class RowSleepInformation extends StatelessWidget {
   RowSleepInformation({super.key});
  final List<Map<String, dynamic>> data = [
    {'day': 'Sn', 'hours': 3},
    {'day': 'Mn', 'hours': 5},
    {'day': 'Tu', 'hours': 6},
    {'day': 'Wd', 'hours': 3},
    {'day': 'Tr', 'hours': 2},
    {'day': 'Fr', 'hours': 5},
    {'day': 'St', 'hours': 8},
  ];
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index) {
            final item = data[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  CircularPercentIndicator(
                    radius: 30.0,
                    lineWidth: 5.0,
                    percent: item['hours'] / 10, // assuming max is 10h
                    center: Text(
                      "${item['hours']}h",
                      style: const TextStyle(color: Colors.white),
                    ),
                    progressColor: const Color(0xFF30A77A).withOpacity(.9),
                    backgroundColor:const Color(0xFF30A77A).withOpacity(.3),
                    circularStrokeCap: CircularStrokeCap.round,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    item['day'],
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

