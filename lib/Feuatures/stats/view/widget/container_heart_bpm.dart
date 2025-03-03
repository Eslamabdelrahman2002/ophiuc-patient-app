import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerHeartBpm extends StatelessWidget {
   ContainerHeartBpm({super.key});

  final List<double> leftLabels= [40,50,60, 75, 90, 100];
  final List<String> bottomLabels=[
    "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"
  ];
  final double maxX=9;
  final double maxY=110;
  final double minX=0;
  final double minY=40;
  final bool curve=false;
  final List<FlSpot> chartData=[
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
          "Heart’s bpm",
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

