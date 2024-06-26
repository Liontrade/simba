import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedGlassContainer extends StatelessWidget {
  final Widget child;

  const FrostedGlassContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
