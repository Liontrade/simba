import 'package:flutter/material.dart';
import 'package:interactive_charts/interactive_chart.dart';

class PriceGridPainter {
  final PainterParams params;
  final String Function(double price) getPriceLabel;

  PriceGridPainter(this.params, this.getPriceLabel);

  void paint(Canvas canvas) {
    [0.0, 0.25, 0.5, 0.75, 1.0].map((v) {
      return ((params.maxPrice - params.minPrice) * v) + params.minPrice;
    }).forEach((y) {
      canvas.drawLine(
        Offset(0, params.fitPrice(y)),
        Offset(params.chartWidth, params.fitPrice(y)),
        Paint()
          ..strokeWidth = 0.5
          ..color = params.colorStyle.priceGridLineColor,
      );

      final priceTp = TextPainter(
        text: TextSpan(
          text: getPriceLabel(y),
          style: params.textStyle.priceLabelStyle,
        ),
      )
        ..textDirection = TextDirection.ltr
        ..layout();
      priceTp.paint(canvas, Offset(params.chartWidth + 4, params.fitPrice(y) - priceTp.height / 2));
    });
  }
}
