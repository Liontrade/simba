import 'package:flutter/material.dart';
import 'package:simba/style/_style.dart';

class StockTile extends StatelessWidget {
  final String companyName;
  final String companyFullName;
  final double price;
  final double change;
  final IconData iconData;
  final bool isLiked;
  final bool isFirst;
  final bool isLast;
  final bool isLikedTabSelected;

  const StockTile({
    super.key,
    required this.companyName,
    required this.companyFullName,
    required this.price,
    required this.change,
    required this.iconData,
    required this.isLiked,
    required this.isFirst,
    required this.isLast,
    required this.isLikedTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.brown.withOpacity(0.3),
        borderRadius: BorderRadius.only(
          topLeft: isFirst && isLikedTabSelected ? const Radius.circular(20) : Radius.zero,
          topRight: isFirst && !isLikedTabSelected ? const Radius.circular(20) : Radius.zero,
          bottomLeft: isLast ? const Radius.circular(20) : Radius.zero,
          bottomRight: isLast ? const Radius.circular(20) : Radius.zero,
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.black,
            child: Icon(
              iconData,
              size: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  companyName,
                  style: LtTextStyle.manrope18bold,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  companyFullName,
                  style: LtTextStyle.manrope14medium,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Text(
            '${change > 0 ? '+' : ''}${change.toStringAsFixed(2)}%',
            style: LtTextStyle.customize(
              ltFontWeight: LtFontWeight.bold,
              color: change > 0 ? LtColor.green : LtColor.red,
              fontSize: 14,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            '\$${price.toStringAsFixed(2)}',
            style: LtTextStyle.manrope20bold,
          ),
          const SizedBox(width: 10),
          Icon(
            isLiked ? Icons.star : Icons.star_border,
            color: isLiked ? Colors.orange : Colors.black,
          ),
        ],
      ),
    );
  }
}
