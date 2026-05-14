import 'package:flutter/material.dart';

class GradientTitle extends StatelessWidget {
  const GradientTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;
        final isTablet = constraints.maxWidth < 900;

        final fontSize = isMobile
            ? 25.0
            : isTablet
            ? 20.0
            : 25.0;

        return ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(
              colors: [Colors.green, Colors.lightGreenAccent],
            ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height));
          },
          child: Text(
            "Flutter Developer",
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
