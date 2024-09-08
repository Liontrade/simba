import 'package:flutter/material.dart';
import 'package:simba/style/_style.dart';
import 'package:simba/widgets/clippers/left_tab_clipper.dart';
import 'package:simba/widgets/clippers/right_tab_clipper.dart';

class CustomTabButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final bool isLiked;

  const CustomTabButton({
    super.key,
    required this.title,
    required this.isSelected,
    required this.isLiked,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: isLiked ? RightTabClipper() : LeftTabClipper(),
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

class CustomTabBar extends StatefulWidget {
  final Function(int) onTabSelected;

  const CustomTabBar({
    super.key,
    required this.onTabSelected,
  });

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
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
            child: CustomTabButton(
              title: "All",
              isSelected: selectedIndex == 0,
              isLiked: false,
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
            child: CustomTabButton(
              title: "Liked",
              isSelected: selectedIndex == 1,
              isLiked: true,
            ),
          ),
        ),
      ],
    );
  }
}
