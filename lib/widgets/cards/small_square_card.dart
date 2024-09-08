import 'package:flutter/material.dart';
import 'package:simba/style/_style.dart';

class SmallSquareCard extends StatelessWidget {
  final String symbol;
  final String company;
  final double price;
  final double change;
  final IconData icon;

  const SmallSquareCard({
    super.key,
    required this.symbol,
    required this.company,
    required this.price,
    required this.change,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.width * 0.3,
        width: MediaQuery.of(context).size.width * 0.3,
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.brown.withOpacity(0.3),
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  child: Icon(
                    icon,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 5.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        symbol,
                        style: LtTextStyle.manrope16bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        company,
                        style: LtTextStyle.manrope14regular,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Text(
              '${change > 0 ? '+' : ''}${change.toStringAsFixed(2)}%',
              style: LtTextStyle.customize(
                ltFontWeight: LtFontWeight.bold,
                color: change > 0 ? LtColor.green : LtColor.red,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              '\$$price',
              style: LtTextStyle.manrope20bold,
            ),
          ],
        ),
      ),
    );
  }
}
