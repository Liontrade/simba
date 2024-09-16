import 'package:flutter/material.dart';

class MiddleTabClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // // Dolny lewy róg
    // path.moveTo(0, size.height);
    //
    // // Lewa strona z lekką krzywizną - podobnie jak RightTabClipper
    // path.quadraticBezierTo(size.width * 0.1, size.height, size.width * 0.15, size.height * 0.3,);
    //
    // // Górna część trapezu
    // path.lineTo(size.width * 0.85, size.height * 0.3,);
    //
    // // Prawa strona z lekką krzywizną - podobnie jak LeftTabClipper
    // path.quadraticBezierTo(size.width * 0.9, size.height, size.width, size.height,);
    //
    // path.lineTo(0, size.height);
    // path.close();

    // Dolny lewy róg
    path.moveTo(0, size.height);

    // Lewa strona z lekką krzywizną - podobnie jak RightTabClipper
    path.quadraticBezierTo(size.width * 0.1, size.height, size.width * 0.15, size.height * 0.3);

    // Lewe górne zaokrąglenie
    path.quadraticBezierTo(size.width * 0.175, 0, size.width * 0.2, 0);

    // Górna część trapezu
    path.lineTo(size.width * 0.8, 0);

    // Prawe górne zaokrąglenie
    path.quadraticBezierTo(size.width * 0.825, 0, size.width * 0.85, size.height * 0.3);

    // Prawa strona z lekką krzywizną - podobnie jak LeftTabClipper
    path.quadraticBezierTo(size.width * 0.9, size.height, size.width, size.height);

    // Zamknięcie ścieżki
    path.lineTo(0, size.height);
    path.close();

    // // Dolny lewy róg
    // path.moveTo(0, size.height);
    //
    // // Lewa strona z bardziej zaokrągloną krzywizną
    // path.quadraticBezierTo(
    //     size.width * 0.1, size.height,
    //     size.width * 0.15, size.height * 0.3
    // );
    //
    // // Bardziej zaokrąglony lewy górny róg
    // path.quadraticBezierTo(
    //     size.width * 0.25, 0,
    //     size.width * 0.3, 0
    // );
    //
    // // Górna część trapezu
    // path.lineTo(size.width * 0.7, 0);
    //
    // // Bardziej zaokrąglony prawy górny róg
    // path.quadraticBezierTo(
    //     size.width * 0.75, 0,
    //     size.width * 0.85, size.height * 0.3
    // );
    //
    // // Prawa strona z bardziej zaokrągloną krzywizną
    // path.quadraticBezierTo(
    //     size.width * 0.9, size.height,
    //     size.width, size.height
    // );
    //
    // // Zamknięcie ścieżki
    // path.lineTo(0, size.height);
    // path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
