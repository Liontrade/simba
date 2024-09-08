import 'package:flutter/material.dart';

class RightTabClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(size.width, size.height);
    path.quadraticBezierTo(size.width, 0, size.width * 0.8, 0);

    path.lineTo(size.width * 0.3, 0);

    path.quadraticBezierTo(
      size.width * 0.2,
      0,
      size.width * 0.15,
      size.height * 0.3,
    );

    path.quadraticBezierTo(
      size.width * 0.1,
      size.height,
      0,
      size.height,
    );

    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
