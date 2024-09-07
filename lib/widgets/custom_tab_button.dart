import 'package:flutter/material.dart';

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
      clipper: isLiked ? CustomTabClipperLiked() : CustomTabClipper(),
      child: Container(
        padding: const EdgeInsets.all(16),
        color: isSelected ? Colors.brown.withOpacity(0.3) : Colors.transparent,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.black : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTabClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, size.height);
    path.quadraticBezierTo(0, 0, size.width * 0.2, 0);

    path.lineTo(size.width * 0.7, 0);

    path.quadraticBezierTo(
      size.width * 0.8,
      0,
      size.width * 0.85,
      size.height * 0.3,
    );

    path.quadraticBezierTo(
      size.width * 0.9,
      size.height,
      size.width,
      size.height,
    );

    path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CustomTabClipperLiked extends CustomClipper<Path> {
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
