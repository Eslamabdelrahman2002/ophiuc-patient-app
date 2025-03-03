import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ContainerSpo2 extends StatelessWidget {
   ContainerSpo2({super.key});

  final List<double> leftLabels=[
    85, 90, 95, 100
  ];
  final List<String> bottomLabels=[
    "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"
  ];
  final double maxX=9;
  final double maxY=100;
  final double minX=0;
  final double minY=85;
  final bool curve=true;
  final List<FlSpot> chartData=[
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
          "SpO2 Level",
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



