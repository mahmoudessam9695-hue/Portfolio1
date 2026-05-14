import 'package:flutter/material.dart';

class ProjectHeaderSection extends StatelessWidget {
  const ProjectHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          /// left line
          Expanded(
            child: Container(
              height: 2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.lightGreenAccent.withValues(alpha: 0.7),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(width: 16),

          /// title (center)
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (bounds) {
              return const LinearGradient(
                colors: [Colors.green, Colors.lightGreenAccent],
              ).createShader(bounds);
            },
            child: const Text(
              "Projects",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ),

          const SizedBox(width: 16),

          /// right line
          Expanded(
            child: Container(
              height: 2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.lightGreenAccent.withValues(alpha: 0.7),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
