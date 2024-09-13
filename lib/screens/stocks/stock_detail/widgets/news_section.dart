import 'package:flutter/material.dart';
import 'package:simba/style/_style.dart';
import 'package:simba/widgets/_widgets.dart';

class NewsSection extends StatelessWidget {
  const NewsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'News',
          style: LtTextStyle.manrope20bold,
        ),
        const SizedBox(height: 8),
        const ListTileStockDetailsNews(
          source: 'Carscoops',
          title: 'Apple Inc New iPhone...',
          time: '18 h ago',
          icon: Icons.apple,
        ),
        const ListTileStockDetailsNews(
          source: 'The Verge',
          title: 'New Apple Watch is going...',
          time: '17 h ago',
          icon: Icons.watch,
        ),
        const ListTileStockDetailsNews(
          source: 'Yahoo',
          title: 'Apple AirPods new packaging...',
          time: '1 h ago',
          icon: Icons.earbuds,
        )
      ],
    );
  }
}
