import 'package:flutter/material.dart';

class ChartTextStyle {
  final TextStyle timeLabelStyle;
  final TextStyle priceLabelStyle;
  final TextStyle overlayTextStyle;

  const ChartTextStyle({
    this.timeLabelStyle = const TextStyle(
      fontSize: 16,
      color: Colors.grey,
    ),
    this.priceLabelStyle = const TextStyle(
      fontSize: 12,
      color: Colors.grey,
    ),
    this.overlayTextStyle = const TextStyle(
      fontSize: 16,
      color: Colors.white,
    ),
  });

  ChartTextStyle copyWith({
    TextStyle? timeLabelStyle,
    TextStyle? priceLabelStyle,
    TextStyle? overlayTextStyle,
  }) {
    return ChartTextStyle(
      timeLabelStyle: timeLabelStyle ?? this.timeLabelStyle,
      priceLabelStyle: priceLabelStyle ?? this.priceLabelStyle,
      overlayTextStyle: overlayTextStyle ?? this.overlayTextStyle,
    );
  }
}
