import 'package:flutter/material.dart';

import 'package:protfolio1/widgets/about%20me/contact_section.dart';
import 'package:protfolio1/widgets/about%20me/description.dart';
import 'package:protfolio1/widgets/about%20me/education_section.dart';
import 'package:protfolio1/widgets/about%20me/header_section.dart';
import 'package:protfolio1/widgets/about%20me/info_grid.dart';
import 'package:protfolio1/widgets/about%20me/main_title.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 700;

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 24,
        vertical: isMobile ? 20 : 30,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HeaderSection(),
              SizedBox(height: 40),

              MainTitle(),
              SizedBox(height: 20),

              Description(),
              SizedBox(height: 50),

              InfoGrid(),
              SizedBox(height: 50),

              EducationSection(),
              SizedBox(height: 50),

              ContactSection(),
            ],
          ),
        ),
      ),
    );
  }
}
