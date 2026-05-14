import 'package:flutter/material.dart';

import 'package:protfolio1/models/tech_stack.dart';
import 'package:protfolio1/widgets/Tech/tech_card.dart';

class TechnologiesSection extends StatelessWidget {
  const TechnologiesSection({super.key});

  double _getHorizontalPadding(double width) {
    if (width < 600) return 16.0;
    if (width < 900) return 40.0;
    return 80.0;
  }

  double _getHeight(double width) {
    if (width < 600) return 90.0;
    if (width < 900) return 105.0;
    return 120.0;
  }

  double _getTitleSize(double width) {
    if (width < 600) return 16.0;
    return 20.0;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final horizontalPadding = _getHorizontalPadding(width);
    final height = _getHeight(width);
    final titleSize = _getTitleSize(width);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: horizontalPadding, bottom: 20),
          child: Text(
            "Technologies I Use",
            style: TextStyle(
              color: Colors.white70,
              fontSize: titleSize,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
            ),
          ),
        ),

        SizedBox(
          height: height,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            itemCount: TechStack.items.length,
            separatorBuilder: (_, __) => const SizedBox(width: 15),
            itemBuilder: (context, index) {
              final item = TechStack.items[index];

              return SizedBox(
                height: height,
                child: TechCard(tech: item),
              );
            },
          ),
        ),
      ],
    );
  }
}
