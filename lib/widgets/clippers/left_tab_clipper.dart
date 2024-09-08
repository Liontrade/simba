import 'package:flutter/material.dart';

class LeftTabClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, size.height);
    path.quadraticBezierTo(0, 0, size.width * 0.2, 0);

    path.lineTo(size.width * 0.7, 0);

    path.quadraticBezierTo(
      size.width * 0.8,
      0,
      size.width * 0.85,
      size.height * 0.3,
    );

    path.quadraticBezierTo(
      size.width * 0.9,
      size.height,
      size.width,
      size.height,
    );

    path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
