import 'package:flutter/widgets.dart';

import 'lt_color.dart';

class LtGradient {
  const LtGradient._();

  static const LinearGradient orangeToBlack = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      LtColor.white,
      LtColor.yellow,
    ],
  );
}
