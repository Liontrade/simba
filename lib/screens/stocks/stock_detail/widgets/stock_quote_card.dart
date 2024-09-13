import 'package:flutter/material.dart';
import 'package:simba/style/_style.dart';

class StockQuoteCard extends StatelessWidget {
  final double price;
  final double change;

  const StockQuoteCard({
    super.key,
    required this.price,
    required this.change,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      decoration: BoxDecoration(
        color: Colors.brown.withOpacity(0.3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('\$$price', style: LtTextStyle.customize(fontSize: 40, ltFontWeight: LtFontWeight.bold)),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                '${change > 0 ? '+' : ''}$change%',
                style: LtTextStyle.customize(
                  ltFontWeight: LtFontWeight.bold,
                  color: change > 0 ? Colors.green : Colors.red,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'maximum',
                style: LtTextStyle.manrope14regular,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                '\$199.62',
                style: LtTextStyle.manrope16bold,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'minimum',
                style: LtTextStyle.manrope14regular,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                '\$164.08',
                style: LtTextStyle.manrope16bold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
