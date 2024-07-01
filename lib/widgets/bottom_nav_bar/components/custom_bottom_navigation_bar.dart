import 'package:flutter/material.dart';
import 'nav_item_selected.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar({super.key, required this.selectedIndex, required this.onItemTapped});

  BottomNavigationBarItem _buildNavItem({required IconData icon, required int index}) {
    bool isSelected = selectedIndex == index;
    return BottomNavigationBarItem(
      icon: isSelected ? NavItemIconSelected(icon: icon) : Icon(icon),
      label: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      items: <BottomNavigationBarItem>[
        _buildNavItem(icon: Icons.home, index: 0),
        _buildNavItem(icon: Icons.search, index: 1),
        _buildNavItem(icon: Icons.person, index: 2),
        _buildNavItem(icon: Icons.settings, index: 3),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      onTap: onItemTapped,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }
}
