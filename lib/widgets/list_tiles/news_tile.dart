import 'package:flutter/material.dart';
import 'package:simba/style/_style.dart';

class NewsTile extends StatelessWidget {
  final String newsAgency;
  final String newsSummary;
  final String timeSincePublication;
  final String imagePath;
  final bool isForYou;
  final bool isSaved;
  final bool isFirst;
  final bool isLast;
  final bool isForYouTabSelected;
  final bool isSavedTabSelected;

  const NewsTile({
    super.key,
    required this.newsAgency,
    required this.newsSummary,
    required this.timeSincePublication,
    required this.imagePath,
    required this.isSaved,
    required this.isFirst,
    required this.isLast,
    required this.isForYou,
    required this.isForYouTabSelected,
    required this.isSavedTabSelected
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.brown.withOpacity(0.3),
        borderRadius: BorderRadius.only(
          topLeft: isFirst && isSavedTabSelected ? const Radius.circular(20) : Radius.zero,
          topRight: isFirst && !isSavedTabSelected ? const Radius.circular(20) : Radius.zero,
          bottomLeft: isLast ? const Radius.circular(20) : Radius.zero,
          bottomRight: isLast ? const Radius.circular(20) : Radius.zero,
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imagePath,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
            ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text(
                  newsAgency,
                  style: LtTextStyle.manrope18bold,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  newsSummary,
                  style: LtTextStyle.manrope14medium,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Icon(
            isSaved ? Icons.bookmark_outlined : Icons.bookmark_border_outlined,
            color: isSaved ? Colors.orange : Colors.black,
          ),
        ],
      ),
    );
  }
}
