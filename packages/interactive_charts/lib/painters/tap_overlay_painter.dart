import 'dart:math';

import 'package:flutter/material.dart';
import 'package:interactive_charts/interactive_chart.dart';
import 'package:interactive_charts/utils/draw_overlay_panel.dart';

class TapOverlayPainter {
  final PainterParams params;
  final Map<String, String> Function(CandleData candle) getOverlayInfo;

  TapOverlayPainter(this.params, this.getOverlayInfo);

  void paint(Canvas canvas) {
    final pos = params.tapPosition!;
    final i = params.getCandleIndexFromOffset(pos.dx);
    final candle = params.candles[i];
    canvas.save();
    canvas.translate(params.xShift, 0.0);

    canvas.drawLine(
      Offset(i * params.candleWidth, 0.0),
      Offset(i * params.candleWidth, params.chartHeight),
      Paint()
        ..strokeWidth = max(params.candleWidth * 0.88, 1.0)
        ..color = params.colorStyle.selectionHighlightColor,
    );
    canvas.restore();

    final overlayInfo = getOverlayInfo(candle);
    if (overlayInfo.isNotEmpty) {
      DrawOverlayPanel.drawOverlayPanel(canvas, pos, overlayInfo, params, getOverlayInfo, candle);
    }
  }
}
