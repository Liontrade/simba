import 'package:flutter/material.dart';
import 'package:simba/style/_style.dart';

class BigSquareCard extends StatelessWidget {
  final String title;
  final String amount;

  const BigSquareCard({
    super.key,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.width * 0.4,
        width: MediaQuery.of(context).size.width * 0.4,
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.brown.withOpacity(0.3),
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: LtTextStyle.manrope16semiBold),
            const SizedBox(height: 8),
            Text(amount, style: LtTextStyle.manrope40regular),
          ],
        ),
      ),
    );
  }
}
