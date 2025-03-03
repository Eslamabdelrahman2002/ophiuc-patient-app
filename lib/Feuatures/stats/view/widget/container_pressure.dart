import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerPressure extends StatelessWidget {
   ContainerPressure({super.key});
  final List<double> leftLabels=[
    100, 110, 120, 130, 140, 150, 160
  ];
  final List<String> bottomLabels=[
    "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15","16","17","18","19"
  ];
  final double maxX=19;
  final double maxY=160;
  final double minX=0;
  final double minY=100;
  final bool curve=true;
  final List<FlSpot> chartData=[
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
  ];
  @override
  Widget build(BuildContext context) {
    return _buildChartContainer();
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
          "Systolic Pressure",
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


