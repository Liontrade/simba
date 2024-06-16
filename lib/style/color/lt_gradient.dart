import 'package:flutter/material.dart';
import 'package:simba/style/_style.dart';

import 'lt_color.dart';

class LtGradient {
  const LtGradient._();

  static LinearGradient whiteToYellow = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      LtColor.white,
      LtColor.lightYellow,
    ],
    stops: [
      0.15,
      0.9,
    ],
  );
}
