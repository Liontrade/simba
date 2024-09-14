import 'package:flutter/material.dart';

class ChartColorStyle {
  final Color priceGainColor;
  final Color priceLossColor;
  final Color volumeColor;
  final Color priceGridLineColor;
  final Color selectionHighlightColor;
  final Color overlayBackgroundColor;

  const ChartColorStyle({
    this.priceGainColor = Colors.green,
    this.priceLossColor = Colors.red,
    this.volumeColor = Colors.grey,
    this.priceGridLineColor = Colors.grey,
    this.selectionHighlightColor = const Color(0x33757575),
    this.overlayBackgroundColor = const Color(0xEE757575),
  });

  ChartColorStyle copyWith({
    Color? priceGainColor,
    Color? priceLossColor,
    Color? volumeColor,
    Color? priceGridLineColor,
    Color? selectionHighlightColor,
    Color? overlayBackgroundColor,
  }) {
    return ChartColorStyle(
      priceGainColor: priceGainColor ?? this.priceGainColor,
      priceLossColor: priceLossColor ?? this.priceLossColor,
      volumeColor: volumeColor ?? this.volumeColor,
      priceGridLineColor: priceGridLineColor ?? this.priceGridLineColor,
      selectionHighlightColor: selectionHighlightColor ?? this.selectionHighlightColor,
      overlayBackgroundColor: overlayBackgroundColor ?? this.overlayBackgroundColor,
    );
  }
}
