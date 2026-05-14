import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:protfolio1/widgets/Text/about_typing_text.dart';
import 'package:protfolio1/widgets/Text/gradient_title.dart';
import 'package:protfolio1/widgets/download_button.dart';

class HeroTextSection extends StatelessWidget {
  const HeroTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;
        final isTablet = constraints.maxWidth < 900;

        final nameFontSize = isMobile
            ? 30.0
            : isTablet
            ? 38.0
            : 54.0;

        final spacingSmall = isMobile ? 10.0 : 14.0;
        final spacingMedium = isMobile ? 18.0 : 24.0;
        final spacingLarge = isMobile ? 30.0 : 45.0;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 👇 NAME
            Text(
                  "Mahmoud Essam El-Dien",
                  style: TextStyle(
                    fontSize: nameFontSize,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1.2,
                  ),
                )
                .animate()
                .fade(duration: 800.ms)
                .slideY(begin: 0.25)
                .scale(begin: const Offset(0.97, 0.97)),

            SizedBox(height: spacingSmall),

            // 👇 TITLE
            const GradientTitle()
                .animate()
                .fade(duration: 800.ms, delay: 250.ms)
                .slideY(begin: 0.2),

            SizedBox(height: spacingMedium),

            // 👇 ABOUT
            const TerminalAboutText()
                .animate()
                .fade(duration: 900.ms, delay: 450.ms)
                .slideY(begin: 0.15),

            SizedBox(height: spacingLarge),

            // 👇 BUTTON
            const Downloadbutton()
                .animate()
                .fade(duration: 800.ms, delay: 600.ms)
                .slideY(begin: 0.2),
          ],
        );
      },
    );
  }
}
