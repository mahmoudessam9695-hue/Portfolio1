import 'package:flutter/material.dart';

import 'package:protfolio1/pages/about_page.dart';
import 'package:protfolio1/pages/projects_page.dart';
import 'package:protfolio1/widgets/Tech/technologies_section.dart';
import 'package:protfolio1/widgets/hero_section.dart';
import 'package:protfolio1/widgets/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController controller = ScrollController();

  // 👇 height of navbar (adjust if needed)
  final double navBarHeight = 70;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0B),

      body: Stack(
        children: [
          // ================= SCROLL CONTENT =================
          SingleChildScrollView(
            controller: controller,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeroSection(),
                const TechnologiesSection(),

                const SizedBox(height: 120),

                SizedBox(height: 1000, child: const ProjectsPage()),

                const SizedBox(height: 100),

                Center(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 1300),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const AboutMePage(),
                  ),
                ),

                const SizedBox(height: 100),
              ],
            ),
          ),

          // ================= FIXED NAVBAR =================
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: navBarHeight,
              child: Navbar(controller: controller),
            ),
          ),
        ],
      ),
    );
  }
}
