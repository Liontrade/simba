import 'package:interactive_charts/models/_models.dart';

class MovingAverageCalculator {
  static List<double?> compute(List<CandleData> data, [int period = 7]) {
    if (data.length < period * 2) return List.filled(data.length, null);

    final List<double?> result = [];
    final firstPeriod = data.take(period).map((d) => d.close).whereType<double>();
    double ma = firstPeriod.reduce((a, b) => a + b) / firstPeriod.length;
    result.addAll(List.filled(period, null));

    for (int i = period; i < data.length; i++) {
      final curr = data[i].close;
      final prev = data[i - period].close;
      if (curr != null && prev != null) {
        ma = (ma * period + curr - prev) / period;
        result.add(ma);
      } else {
        result.add(null);
      }
    }
    return result;
  }
}
