import 'package:flutter/material.dart';
import 'components/frosted_glass_container.dart';
import 'components/custom_bottom_navigation_bar.dart';

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
