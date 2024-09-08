import 'package:flutter/material.dart';
import 'package:simba/screens/portfolio/widgets/profit_card.dart';
import 'package:simba/widgets/cards/_cards.dart';
import 'package:simba/widgets/search_bar.dart';

class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            ProfitCard(percentProfit: 10.57),
            SizedBox(height: 20),
            LtSearchBar(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BigSquareCard(title: 'Portfolio Value', amount: '\$897.92'),
                BigSquareCard(title: 'Free funds', amount: '\$916.07')
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallSquareCard(
                      symbol: 'AAPL',
                      company: 'Apple',
                      price: 186.88,
                      change: 10.57,
                      icon: Icons.apple,
                    ),
                    SmallSquareCard(
                      symbol: 'TSLA',
                      company: 'Tesla',
                      price: 173.74,
                      change: 7.16,
                      icon: Icons.electric_car,
                    ),
                    SmallSquareCard(
                      symbol: 'META',
                      company: 'Meta',
                      price: 465.78,
                      change: -5.62,
                      icon: Icons.mediation,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
