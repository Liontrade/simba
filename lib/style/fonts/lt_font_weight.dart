import 'package:flutter/widgets.dart';

enum LtFontWeight {
  thin,
  extraLight,
  light,
  regular,
  medium,
  semiBold,
  bold,
  extraBold,
  black,
}

extension LtFontWeightExt on LtFontWeight {
  FontWeight get fontWeight {
    switch (this) {
      case LtFontWeight.thin:
        return FontWeight.w100;

      case LtFontWeight.extraLight:
        return FontWeight.w200;

      case LtFontWeight.light:
        return FontWeight.w300;

      case LtFontWeight.regular:
        return FontWeight.w400;

      case LtFontWeight.medium:
        return FontWeight.w500;

      case LtFontWeight.semiBold:
        return FontWeight.w600;

      case LtFontWeight.bold:
        return FontWeight.w700;

      case LtFontWeight.extraBold:
        return FontWeight.w800;

      case LtFontWeight.black:
        return FontWeight.w900;

      default:
        return FontWeight.w400;
    }
  }
}
