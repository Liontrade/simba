import 'package:flutter/cupertino.dart';
import 'package:simba/style/_style.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: LtTextStyle.manrope20bold,
        ),
        const SizedBox(height: 8),
        Text(
          'is an American multinational corporation headquartered in Cupertino, California...',
          style: LtTextStyle.manrope14regular,
        ),
      ],
    );
  }
}
