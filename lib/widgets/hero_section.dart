import 'package:flutter/material.dart';

import 'package:protfolio1/widgets/Text/hero_text_section.dart';
import 'package:protfolio1/widgets/profile_image.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = constraints.maxWidth > 900;

        final horizontalPadding = constraints.maxWidth * 0.08;

        final imageSize = isDesktop
            ? constraints.maxWidth * 0.40
            : constraints.maxWidth * 0.6;

        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: 50,
          ),
          child: isDesktop
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(flex: 3, child: HeroTextSection()),
                    const SizedBox(width: 40),
                    Expanded(flex: 2, child: ProfileImage(size: imageSize)),
                  ],
                )
              : Column(
                  children: [
                    ProfileImage(size: imageSize),
                    const SizedBox(height: 30),
                    const HeroTextSection(),
                  ],
                ),
        );
      },
    );
  }
}
