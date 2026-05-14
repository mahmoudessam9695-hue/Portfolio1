import 'package:flutter/material.dart';
import 'package:protfolio1/widgets/about%20me/education_card.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 18,
      runSpacing: 18,
      children: [
        EducationCard(
          title: "Bachelor of Management Science",
          subtitle:
              "Higher Institute for Computer and Management Sciences (2019 - 2023)",
        ),
        EducationCard(
          title: "Flutter Development",
          subtitle: "Courses (2026 - Present)",
        ),
      ],
    );
  }
}
