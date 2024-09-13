import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StockQuoteChart extends StatelessWidget {
  const StockQuoteChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: LineChart(
        LineChartData(
          gridData: const FlGridData(show: false),
          titlesData: const FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: true, interval: 20),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: true),
            ),
          ),
          borderData: FlBorderData(show: true),
          minX: 0,
          maxX: 6,
          minY: 100,
          maxY: 200,
          lineBarsData: [
            LineChartBarData(
              spots: const [
                FlSpot(0, 150),
                FlSpot(1, 130),
                FlSpot(2, 160),
                FlSpot(3, 140),
                FlSpot(4, 180),
                FlSpot(5, 170),
                FlSpot(6, 190),
              ],
              isCurved: true,
              dotData: const FlDotData(show: false),
              color: Colors.orangeAccent,
              belowBarData: BarAreaData(
                show: true,
                color: Colors.orangeAccent.withOpacity(0.3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
