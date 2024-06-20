import 'package:flutter/material.dart';

import '_frosted_glass_bottom_nav_bar.dart';

class FrostedGlassBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const FrostedGlassBottomNavBar({super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return FrostedGlassContainer(
      child: CustomBottomNavigationBar(
        selectedIndex: selectedIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }
}
