import 'package:flutter/material.dart';
import 'package:simba/style/_style.dart';
import 'package:simba/style/fonts/_fonts_style.dart';

class ProfitCard extends StatelessWidget {
  final double percentProfit;

  const ProfitCard({
    super.key,
    required this.percentProfit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: LtColor.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 10,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.orangeAccent,
                radius: 30,
                child: Icon(Icons.person, color: Colors.white),
              ),
              SizedBox(width: 16),
              Text(
                'Hi there!',
                style: LtTextStyle.manrope30medium,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Your profit',
                  style: LtTextStyle.manrope16regular,
                ),
                SizedBox(height: 8.0),
                Text(
                  '+10.57%',
                  style: LtTextStyle.customize(
                    fontSize: 16,
                    ltFontWeight: LtFontWeight.bold,
                    color: percentProfit > 0 ? LtColor.green : LtColor.red,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  '\$2186.88',
                  style: LtTextStyle.customize(
                    fontSize: 60,
                    ltFontWeight: LtFontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
