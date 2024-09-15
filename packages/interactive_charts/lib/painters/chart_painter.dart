import 'package:flutter/material.dart';
import 'package:interactive_charts/interactive_chart.dart';
import 'package:interactive_charts/painters/candle_painter.dart';
import 'package:interactive_charts/painters/price_grid_printer.dart';
import 'package:interactive_charts/painters/tap_overlay_painter.dart';
import 'package:interactive_charts/utils/should_repaint.dart';
import 'time_labels_painter.dart';

typedef TimeLabelGetter = String Function(int timestamp, int visibleDataCount);
typedef PriceLabelGetter = String Function(double price);
typedef OverlayInfoGetter = Map<String, String> Function(CandleData candle);

class ChartPainter extends CustomPainter {
  final PainterParams params;
  final TimeLabelGetter getTimeLabel;
  final PriceLabelGetter getPriceLabel;
  final OverlayInfoGetter getOverlayInfo;

  ChartPainter({
    required this.params,
    required this.getTimeLabel,
    required this.getPriceLabel,
    required this.getOverlayInfo,
  });

  @override
  void paint(Canvas canvas, Size size) {
    TimeLabelsPainter(params, getTimeLabel).paint(canvas);
    PriceGridPainter(params, getPriceLabel).paint(canvas);

    canvas.save();
    canvas.clipRect(Offset.zero & Size(params.chartWidth, params.chartHeight));
    for (int i = 0; i < params.candles.length; i++) {
      CandlePainter(params, i).paint(canvas);
    }
    canvas.restore();

    if (params.tapPosition != null && params.tapPosition!.dx < params.chartWidth) {
      TapOverlayPainter(params, getOverlayInfo).paint(canvas);
    }
  }

  @override
  bool shouldRepaint(ChartPainter oldDelegate) => params.shouldRepaint(oldDelegate.params);
}
