import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:simba/style/_style.dart';

class FrostedGlassBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const FrostedGlassBottomNavBar({super.key, required this.selectedIndex, required this.onItemTapped});

  BottomNavigationBarItem _buildNavItem({required IconData icon, required int index}) {
    bool isSelected = selectedIndex == index;
    return BottomNavigationBarItem(
      icon: isSelected
          ? Container(
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                color: LtColor.yellow,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: Colors.black),
            )
          : Icon(icon),
      label: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 4.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: <BottomNavigationBarItem>[
              _buildNavItem(icon: Icons.home, index: 0),
              _buildNavItem(icon: Icons.search, index: 1),
              _buildNavItem(icon: Icons.person, index: 2),
              //_buildNavItem(icon: Icons.abc, index: 3),
            ],
            currentIndex: selectedIndex,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
            onTap: onItemTapped,
            showSelectedLabels: false,
            // Hide selected item labels
            showUnselectedLabels: false, // Hide unselected item labels
          ),
        ),
      ),
    );
  }
}
