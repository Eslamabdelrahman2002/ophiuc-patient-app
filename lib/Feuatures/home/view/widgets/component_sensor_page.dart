import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:project_app/Core/utils/assets_images.dart';

class ComponentSensorPage extends StatelessWidget {
  const ComponentSensorPage({
    super.key,
    required this.title,
    required this.titleChart,
    required this.result,
    required this.measuringTool,
    required this.chartData,
    required this.leftLabels,
    required this.bottomLabels,
    required this.image,
    required this.maxX,
    required this.maxY,
    required this.minX,
    required this.minY,
    required this.curve,
  });

  final String title;
  final String titleChart;
  final String result;
  final String measuringTool;
  final List<FlSpot> chartData;
  final List<double> leftLabels;
  final List<String> bottomLabels;
  final String image;
  final double maxX;
  final double maxY;
  final double minX;
  final double minY;
  final bool curve;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(29),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.background),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),
            Text(
              "Everything is looking normal",
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: const Color(0xFF999999),
              ),
            ),
            Center(
              child: Stack(
                children: [
                  Image.asset(image),
                  Positioned(
                    bottom: 100,
                    left: 135,
                    child: Text(
                      "  $result\n  $measuringTool",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _buildChartContainer(),
          ],
        ),
      ),
    );
  }

  Widget _buildChartContainer() {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        color: const Color(0xFF373737).withOpacity(.3),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          const SizedBox(height: 12),
          Expanded(child: _buildChart()),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleChart,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Icon(Icons.show_chart_outlined, color: Color(0xFF999999)),
      ],
    );
  }

  Widget _buildChart() {
    return LineChart(
      LineChartData(
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          drawHorizontalLine: true,
          getDrawingHorizontalLine: (value) => FlLine(
            color: Colors.white.withOpacity(0.2),
            strokeWidth: 2,
          ),
        ),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: (maxY - minY) / 5,
              getTitlesWidget: (value, _) {
                return Text(
                  value.toInt().toString(),
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 10),
                );
              },
              reservedSize: 40,
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: (maxX - minX) / (bottomLabels.length - 1),
              getTitlesWidget: (value, _) {
                int index = value.toInt();
                if (index >= 0 && index < bottomLabels.length) {
                  return Text(
                    bottomLabels[index],
                    style: GoogleFonts.poppins(color: Colors.white, fontSize: 10),
                  );
                }
                return const Text("");
              },
            ),
          ),
          rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        borderData: FlBorderData(show: false),
        minX: minX,
        maxX: maxX,
        minY: minY,
        maxY: maxY,
        lineBarsData: [
          LineChartBarData(
            spots: chartData,
            isCurved: curve,
            curveSmoothness: .4,
            color: Colors.yellow,
            barWidth: 3,
            isStrokeCapRound: true,
            belowBarData: BarAreaData(show: false),
            dotData: const FlDotData(show: false),
          ),
        ],
      ),
    );
  }
}
