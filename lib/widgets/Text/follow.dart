import 'package:flutter/material.dart';
import 'package:protfolio1/widgets/links_socialmedia.dart';

class SocialSection extends StatelessWidget {
  const SocialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Follow Me =>',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
        LinksSocialmedia(),
      ],
    );
  }
}
