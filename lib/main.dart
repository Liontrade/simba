import 'package:flutter/material.dart';
import 'package:simba/screens/portfolio_screen.dart';
import 'package:simba/style/_style.dart';
import 'package:simba/widgets/bottom_nav_bar/frosted_glass_bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const PortfolioScreen(),
    );
  }
}
