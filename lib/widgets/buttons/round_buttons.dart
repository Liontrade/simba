import 'package:flutter/material.dart';
import 'package:simba/style/_style.dart';

class RoundButtons extends StatelessWidget {
  final String text;
  final bool selected;

  const RoundButtons({
    super.key,
    required this.text,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle time range change
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: selected ? Colors.orangeAccent : Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: selected
              ? [
                  const BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ]
              : [],
        ),
        child: Text(
          text,
          style: LtTextStyle.customize(
            ltFontWeight: selected ? LtFontWeight.bold : LtFontWeight.regular,
          ),
        ),
      ),
    );
  }
}
