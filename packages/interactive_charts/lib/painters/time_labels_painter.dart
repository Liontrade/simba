import 'package:flutter/material.dart';
import 'package:interactive_charts/interactive_chart.dart';

class TimeLabelsPainter {
  final PainterParams params;
  final String Function(int timestamp, int visibleDataCount) getTimeLabel;

  TimeLabelsPainter(this.params, this.getTimeLabel);

  void paint(Canvas canvas) {
    final lineCount = params.chartWidth ~/ 90;
    final gap = 1 / (lineCount + 1);
    for (int i = 1; i <= lineCount; i++) {
      double x = i * gap * params.chartWidth;
      final index = params.getCandleIndexFromOffset(x);
      if (index < params.candles.length) {
        final candle = params.candles[index];
        final timeTp = TextPainter(
          text: TextSpan(
            text: getTimeLabel(candle.timestamp, params.candles.length),
            style: params.textStyle.timeLabelStyle,
          ),
        )
          ..textDirection = TextDirection.ltr
          ..layout();

        final topPadding = params.style.timeLabelHeight - timeTp.height;
        timeTp.paint(canvas, Offset(x - timeTp.width / 2, params.chartHeight + topPadding));
      }
    }
  }
}
