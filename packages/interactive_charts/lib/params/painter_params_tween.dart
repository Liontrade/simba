import 'package:flutter/material.dart';

import '_params.dart';

class PainterParamsTween extends Tween<PainterParams> {
  PainterParamsTween({
    super.begin,
    required PainterParams super.end,
  });

  @override
  PainterParams lerp(double t) => PainterParams.lerp(begin ?? end!, end!, t);
}
