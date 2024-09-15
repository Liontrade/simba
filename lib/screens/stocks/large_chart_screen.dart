import 'package:flutter/material.dart';
import 'package:interactive_charts/interactive_chart.dart';
import 'package:interactive_charts/interactive_chart/interactive_chart.dart';
import 'package:simba/screens/stocks/mock_data.dart';

class LargeChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<CandleData> chartData = MockDataTesla.data; // Pełne dane

    return Scaffold(
      appBar: AppBar(
        title: Text("Large Chart"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InteractiveChart(
          candles: chartData,
          colorStyle: ChartColorStyle(),
          textStyle: ChartTextStyle(),
        ),
      ),
    );
  }
}
