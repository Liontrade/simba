import 'package:flutter/material.dart';
import 'package:interactive_charts/styles/_styles.dart';

class ChartStyle {
  final double volumeHeightFactor;
  final double priceLabelWidth;
  final double timeLabelHeight;
  final ChartTextStyle textStyle;
  final ChartColorStyle colorStyle;
  final List<Paint> trendLineStyles;

  const ChartStyle({
    this.volumeHeightFactor = 0.2,
    this.priceLabelWidth = 48.0,
    this.timeLabelHeight = 24.0,
    this.textStyle = const ChartTextStyle(),
    this.colorStyle = const ChartColorStyle(),
    this.trendLineStyles = const [],
  });

  ChartStyle copyWith({
    double? volumeHeightFactor,
    double? priceLabelWidth,
    double? timeLabelHeight,
    ChartTextStyle? textStyle,
    ChartColorStyle? colorStyle,
    List<Paint>? trendLineStyles,
  }) {
    return ChartStyle(
      volumeHeightFactor: volumeHeightFactor ?? this.volumeHeightFactor,
      priceLabelWidth: priceLabelWidth ?? this.priceLabelWidth,
      timeLabelHeight: timeLabelHeight ?? this.timeLabelHeight,
      textStyle: textStyle ?? this.textStyle,
      colorStyle: colorStyle ?? this.colorStyle,
      trendLineStyles: trendLineStyles ?? this.trendLineStyles,
    );
  }
}
