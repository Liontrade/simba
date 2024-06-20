import 'package:flutter/material.dart';
import 'package:simba/style/_style.dart';

class NavItemIconSelected extends StatelessWidget {
  final IconData icon;

  const NavItemIconSelected({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: LtColor.yellow,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.black),
    );
  }
}
