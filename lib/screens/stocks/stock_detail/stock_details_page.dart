import 'package:flutter/material.dart';
import 'package:simba/screens/stocks/stock_detail/widgets/_widgets.dart';
import 'package:simba/style/_style.dart';

class StockDetailPage extends StatelessWidget {
  final String symbol;
  final String company;
  final double price;
  final double change;

  const StockDetailPage({
    super.key,
    required this.symbol,
    required this.company,
    required this.price,
    required this.change,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LtGradient.whiteToYellow,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          scrolledUnderElevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(company),
          actions: [
            IconButton(
              icon: const Icon(Icons.star_border),
              onPressed: () {
                // Handle favourite action
              },
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            StockQuoteCard(price: price, change: change),
            const SizedBox(height: 16),
            const StockQuoteChart(),
            const SizedBox(height: 16),
            const TimeRangeButtons(),
            const SizedBox(height: 20),
            const AboutSection(),
            const SizedBox(height: 20),
            const NewsSection(),
          ],
        ),
      ),
    );
  }
}
