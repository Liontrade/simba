// ignore_for_file: avoid_classes_with_only_static_members
import 'package:flutter/material.dart';
import 'package:simba/style/color/lt_color.dart';

import '_fonts_style.dart';

class LtTextStyle {
  static final FontWeight _manropeLight = LtFontWeight.light.fontWeight;
  static final FontWeight _manropeRegular = LtFontWeight.regular.fontWeight;
  static final FontWeight _manropeMedium = LtFontWeight.medium.fontWeight;
  static final FontWeight _manropeSemiBold = LtFontWeight.semiBold.fontWeight;
  static final FontWeight _manropeBold = LtFontWeight.bold.fontWeight;

  static const TextStyle _manrope = TextStyle(
    fontFamily: 'Manrope',
    color: LtColor.white,
    height: 1,
  );

  static final TextStyle _manropeSpaced = _manrope.copyWith(letterSpacing: 1.0);

  static final TextStyle _manrope14regular = _manrope.copyWith(
    fontSize: 14.0,
    fontWeight: _manropeRegular,
  );

  static final TextStyle _manrope14medium = _manrope.copyWith(
    fontSize: 14.0,
    fontWeight: _manropeMedium,
  );

  static final TextStyle _manrope14mediumSpaced = _manropeSpaced.copyWith(
    fontSize: 14.0,
    fontWeight: _manropeMedium,
  );

  static final TextStyle _manrope14regularSpaced = _manropeSpaced.copyWith(
    fontSize: 14.0,
    fontWeight: _manropeRegular,
  );

  static final TextStyle _manrope14semiBold = _manrope.copyWith(
    fontSize: 14.0,
    fontWeight: _manropeSemiBold,
  );

  static final TextStyle _manrope14semiBoldSpaced = _manropeSpaced.copyWith(
    fontSize: 14.0,
    fontWeight: _manropeSemiBold,
  );

  static final TextStyle _manrope14boldSpaced = _manropeSpaced.copyWith(
    fontSize: 14.0,
    fontWeight: _manropeBold,
  );

  static final TextStyle _manrope15lightSpaced = _manropeSpaced.copyWith(
    fontSize: 15.0,
    fontWeight: _manropeLight,
  );

  static final TextStyle _manrope15regular = _manrope.copyWith(
    fontSize: 15.0,
    fontWeight: _manropeRegular,
  );

  static final TextStyle _manrope15regularSpaced = _manropeSpaced.copyWith(
    fontSize: 15.0,
    fontWeight: _manropeRegular,
  );

  static final TextStyle _manrope16medium = _manrope.copyWith(
    fontSize: 16.0,
    fontWeight: _manropeMedium,
  );

  static final TextStyle _manrope16semiBold = _manrope.copyWith(
    fontSize: 16.0,
    fontWeight: _manropeSemiBold,
  );

  static final TextStyle _manrope16mediumSpaced = _manropeSpaced.copyWith(
    fontSize: 16.0,
    fontWeight: _manropeMedium,
  );

  static final TextStyle _manrope16regular = _manrope.copyWith(
    fontSize: 16.0,
    fontWeight: _manropeRegular,
  );

  static final TextStyle _manrope16regularSpaced = _manropeSpaced.copyWith(
    fontSize: 16.0,
    fontWeight: _manropeRegular,
  );

  static final TextStyle _manrope18medium = _manrope.copyWith(
    fontSize: 18.0,
    fontWeight: _manropeMedium,
  );

  static final TextStyle _manrope18regular = _manrope.copyWith(
    fontSize: 18.0,
    fontWeight: _manropeRegular,
  );

  static final TextStyle _manrope18regularSpaced = _manropeSpaced.copyWith(
    fontSize: 18.0,
    fontWeight: _manropeRegular,
  );

  static final TextStyle _manrope18semiboldSpaced = _manropeSpaced.copyWith(
    fontSize: 18.0,
    fontWeight: _manropeSemiBold,
  );

  static final TextStyle _manrope18mediumSpaced = _manropeSpaced.copyWith(
    fontSize: 18.0,
    fontWeight: _manropeMedium,
  );

  static final TextStyle _manrope20semiBold = _manrope.copyWith(
    fontSize: 20.0,
    fontWeight: _manropeSemiBold,
  );

  static final TextStyle _manrope24regular = _manrope.copyWith(
    fontSize: 24.0,
    fontWeight: _manropeRegular,
  );

  static final TextStyle _manrope24medium = _manrope.copyWith(
    fontSize: 24.0,
    fontWeight: _manropeMedium,
  );

  static final TextStyle _manrope24semiBold = _manrope.copyWith(
    fontSize: 24.0,
    fontWeight: _manropeSemiBold,
  );

  static final TextStyle _manrope24semiBoldSpaced = _manropeSpaced.copyWith(
    fontSize: 24.0,
    fontWeight: _manropeSemiBold,
  );

  static final TextStyle _manrope30medium = _manrope.copyWith(
    fontSize: 30.0,
    fontWeight: _manropeMedium,
  );

  static final TextStyle _manrope32regular = _manrope.copyWith(
    fontSize: 32.0,
    fontWeight: _manropeRegular,
  );

  static final TextStyle _manrope36regular = _manrope.copyWith(
    fontSize: 36.0,
    fontWeight: _manropeRegular,
  );

  static final TextStyle _manrope36medium = _manrope.copyWith(
    fontSize: 36.0,
    fontWeight: _manropeMedium,
  );

  static final TextStyle _manrope48regular = _manrope.copyWith(
    fontSize: 48.0,
    fontWeight: _manropeRegular,
  );

  static TextStyle customize({
    double letterSpacing = 0.0,
    double fontSize = 12.0,
    LtFontWeight ltFontWeight = LtFontWeight.medium,
    Color color = LtColor.white,
  }) {
    return TextStyle(
      fontFamily: 'Manrope',
      color: color,
      fontSize: fontSize,
      letterSpacing: letterSpacing,
      height: 1.0,
      fontWeight: ltFontWeight.fontWeight,
    );
  }

  static final TextStyle manrope14boldSpaced = _manrope14boldSpaced;
  static final TextStyle manrope14medium = _manrope14medium;
  static final TextStyle manrope14mediumSpaced = _manrope14mediumSpaced;
  static final TextStyle manrope14regular = _manrope14regular;
  static final TextStyle manrope14regularSpaced = _manrope14regularSpaced;
  static final TextStyle manrope14semibold = _manrope14semiBold;
  static final TextStyle manrope14semiboldSpaced = _manrope14semiBoldSpaced;
  static final TextStyle manrope15lightSpaced = _manrope15lightSpaced;
  static final TextStyle manrope15regular = _manrope15regular;
  static final TextStyle manrope15regularSpaced = _manrope15regularSpaced;
  static final TextStyle manrope16medium = _manrope16medium;
  static final TextStyle manrope16mediumSpaced = _manrope16mediumSpaced;
  static final TextStyle manrope16regular = _manrope16regular;
  static final TextStyle manrope16regularSpaced = _manrope16regularSpaced;
  static final TextStyle manrope16semiBold = _manrope16semiBold;
  static final TextStyle manrope18medium = _manrope18medium;
  static final TextStyle manrope18mediumSpaced = _manrope18mediumSpaced;
  static final TextStyle manrope18regular = _manrope18regular;
  static final TextStyle manrope18regularSpaced = _manrope18regularSpaced;
  static final TextStyle manrope18semiboldSpaced = _manrope18semiboldSpaced;
  static final TextStyle manrope20semiBold = _manrope20semiBold;
  static final TextStyle manrope24medium = _manrope24medium;
  static final TextStyle manrope24regular = _manrope24regular;
  static final TextStyle manrope24semiBold = _manrope24semiBold;
  static final TextStyle manrope24semiBoldSpaced = _manrope24semiBoldSpaced;
  static final TextStyle manrope30medium = _manrope30medium;
  static final TextStyle manrope32regular = _manrope32regular;
  static final TextStyle manrope36medium = _manrope36medium;
  static final TextStyle manrope36regular = _manrope36regular;
  static final TextStyle manrope48regular = _manrope48regular;
}
