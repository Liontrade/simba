import 'package:flutter/material.dart';
import 'package:interactive_charts/interactive_chart.dart';
import 'package:interactive_charts/interactive_chart/interactive_chart.dart';
import 'package:simba/screens/stocks/large_chart_screen.dart';
import 'package:simba/screens/stocks/mock_data.dart';
import 'package:simba/style/_style.dart';

class StockQuoteChart extends StatelessWidget {
  const StockQuoteChart({super.key});

  @override
  Widget build(BuildContext context) {
    // Dostosowanie danych do miniaturki
    final List<CandleData> chartData = MockDataTesla.data
        .take(10) // Ograniczenie do 10 świeczek dla miniaturki
        .toList();

    return GestureDetector(
      onTap: () {
        // Przeniesienie na ekran z większym wykresem po kliknięciu
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LargeChartScreen(),
          ),
        );
      },
      child: Container(
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
        child: InteractiveChart(
          candles: chartData,
          colorStyle: ChartColorStyle(),
          textStyle: ChartTextStyle(),
        ),
      ),
    );
  }
}
