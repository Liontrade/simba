import 'dart:ui';

import 'package:interactive_charts/interactive_chart.dart';

class PainterParams {
  final List<CandleData> candles;
  final ChartStyle style;
  final ChartColorStyle colorStyle;
  final ChartTextStyle textStyle;
  final Size size;
  final double candleWidth;
  final double startOffset;
  final double maxPrice;
  final double minPrice;
  final double maxVol;
  final double minVol;
  final double xShift;
  final Offset? tapPosition;
  final List<double?>? leadingTrends;
  final List<double?>? trailingTrends;

  PainterParams({
    required this.candles,
    required this.style,
    required this.colorStyle,
    required this.textStyle,
    required this.size,
    required this.candleWidth,
    required this.startOffset,
    required this.maxPrice,
    required this.minPrice,
    required this.maxVol,
    required this.minVol,
    required this.xShift,
    required this.tapPosition,
    required this.leadingTrends,
    required this.trailingTrends,
  });

  double get chartWidth => // width without price labels
      size.width - style.priceLabelWidth;

  double get chartHeight => // height without time labels
      size.height - style.timeLabelHeight;

  double get volumeHeight => chartHeight * style.volumeHeightFactor;

  double get priceHeight => chartHeight - volumeHeight;

  int getCandleIndexFromOffset(double x) {
    final adjustedPos = x - xShift + candleWidth / 2;
    final i = adjustedPos ~/ candleWidth;
    return i;
  }

  double fitPrice(double y) => priceHeight * (maxPrice - y) / (maxPrice - minPrice);

  double fitVolume(double y) {
    final gap = 12; // the gap between price bars and volume bars
    final baseAmount = 2; // display at least "something" for the lowest volume

    if (maxVol == minVol) {
      return priceHeight + volumeHeight / 2;
    }

    final volGridSize = (volumeHeight - baseAmount - gap) / (maxVol - minVol);
    final vol = (y - minVol) * volGridSize;
    return volumeHeight - vol + priceHeight - baseAmount;
  }

  static PainterParams lerp(PainterParams a, PainterParams b, double t) {
    double lerpField(double getField(PainterParams p)) => lerpDouble(getField(a), getField(b), t)!;
    return PainterParams(
      candles: b.candles,
      style: b.style,
      colorStyle: b.colorStyle,
      textStyle: b.textStyle,
      size: b.size,
      candleWidth: b.candleWidth,
      startOffset: b.startOffset,
      maxPrice: lerpField((p) => p.maxPrice),
      minPrice: lerpField((p) => p.minPrice),
      maxVol: lerpField((p) => p.maxVol),
      minVol: lerpField((p) => p.minVol),
      xShift: b.xShift,
      tapPosition: b.tapPosition,
      leadingTrends: b.leadingTrends,
      trailingTrends: b.trailingTrends,
    );
  }
}
