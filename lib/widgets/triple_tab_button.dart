import 'package:flutter/material.dart';
import 'package:simba/style/_style.dart';

import 'clippers/_clippers.dart';

class CustomTripleTabButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final int position; // 0 = Left, 1 = Middle, 2 = Right

  const CustomTripleTabButton({
    super.key,
    required this.title,
    required this.isSelected,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    CustomClipper<Path> clipper;
    // Wybór odpowiedniego clippera w zależności od pozycji przycisku
    if (position == 0) {
      clipper = LeftTabClipper();
    } else if (position == 2) {
      clipper = RightTabClipper();
    } else {
      clipper = MiddleTabClipper();
    }

    return ClipPath(
      clipper: clipper,
      child: Container(
        padding: const EdgeInsets.all(16),
        color: isSelected ? Colors.brown.withOpacity(0.3) : Colors.transparent,
        child: Center(
          child: Text(
            title,
            style: LtTextStyle.customize(
              ltFontWeight: LtFontWeight.bold,
              fontSize: 16,
              color: isSelected ? Colors.black : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTripleTabBar extends StatefulWidget {
  final Function(int) onTabSelected;

  const CustomTripleTabBar({
    super.key,
    required this.onTabSelected,
  });

  @override
  _CustomTripleTabBarState createState() => _CustomTripleTabBarState();
}

class _CustomTripleTabBarState extends State<CustomTripleTabBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 0;
                widget.onTabSelected(0);
              });
            },
            child: CustomTripleTabButton(
              title: "All",
              isSelected: selectedIndex == 0,
              position: 0, // Lewy przycisk
            ),
          ),
        ),
        Flexible(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 1;
                widget.onTabSelected(1);
              });
            },
            child: CustomTripleTabButton(
              title: "For you",
              isSelected: selectedIndex == 1,
              position: 1, // Środkowy przycisk
            ),
          ),
        ),
        Flexible(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 2;
                widget.onTabSelected(2);
              });
            },
            child: CustomTripleTabButton(
              title: "Saved",
              isSelected: selectedIndex == 2,
              position: 2, // Prawy przycisk
            ),
          ),
        ),
      ],
    );
  }
}
