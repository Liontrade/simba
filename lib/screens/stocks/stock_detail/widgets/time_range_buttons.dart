import 'package:flutter/material.dart';
import 'package:simba/widgets/_widgets.dart';

class TimeRangeButtons extends StatelessWidget {
  const TimeRangeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          //height: 40,
          width: MediaQuery.of(context).size.width,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RoundButtons(text: '24H', selected: false),
            RoundButtons(text: '1W', selected: false),
            RoundButtons(text: '1M', selected: true),
            RoundButtons(text: '1Y', selected: false),
            RoundButtons(text: '5Y', selected: false),
            RoundButtons(text: 'ALL', selected: false),
          ],
        ),
      ],
    );
  }
}
