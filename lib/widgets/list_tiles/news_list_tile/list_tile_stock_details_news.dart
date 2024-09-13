import 'package:flutter/material.dart';
import 'package:simba/style/_style.dart';

class ListTileStockDetailsNews extends StatelessWidget {
  final String source;
  final String title;
  final String time;
  final IconData icon;

  const ListTileStockDetailsNews({
    super.key,
    required this.source,
    required this.title,
    required this.time,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(8.0),
      leading: Icon(icon),
      title: Text(
        title,
        style: LtTextStyle.manrope18bold,
      ),
      subtitle: Text(
        '$source • $time',
        style: LtTextStyle.manrope14regular,
      ),
      trailing: IconButton(
        icon: const Icon(Icons.bookmark_border),
        onPressed: () {
          // Handle bookmark action
        },
      ),
    );
  }
}
