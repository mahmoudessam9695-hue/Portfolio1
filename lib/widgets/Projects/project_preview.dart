import 'package:flutter/material.dart';
import 'package:protfolio1/widgets/Projects/FullscreenImageViewer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'project_nav_button.dart';

class ProjectPreview extends StatelessWidget {
  final dynamic project;
  final PageController controller;

  const ProjectPreview({
    super.key,
    required this.project,
    required this.controller,
  });

  Future<void> openLink(String url) async {
    final uri = Uri.tryParse(url);
    if (uri == null) return;

    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 700;

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// =================
          /// HEADER
          /// =================
          isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _textSection(),
                    const SizedBox(height: 16),
                    _icon(),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: _textSection()),
                    const SizedBox(width: 20),
                    _icon(),
                  ],
                ),

          const SizedBox(height: 20),

          /// =================
          /// IMAGE PREVIEW
          /// =================
          Expanded(
            child: Stack(
              children: [
                PageView.builder(
                  controller: controller,
                  itemCount: project.images.length,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => FullscreenImageViewer(
                              images: project.images,
                              initialIndex: i,
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green.withValues(alpha: 0.15),
                              ),
                            ),
                            child: Image.asset(
                              project.images[i],
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),

                /// LEFT NAV
                Align(
                  alignment: Alignment.centerLeft,
                  child: ProjectNavButton(
                    icon: Icons.arrow_back_ios,
                    alignment: Alignment.centerLeft,
                    onTap: () => controller.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    ),
                  ),
                ),

                /// RIGHT NAV
                Align(
                  alignment: Alignment.centerRight,
                  child: ProjectNavButton(
                    icon: Icons.arrow_forward_ios,
                    alignment: Alignment.centerRight,
                    onTap: () => controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          /// =================
          /// INDICATOR
          /// =================
          Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: project.images.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: Colors.green,
                dotHeight: 6,
                dotWidth: 6,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _textSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          project.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          project.description,
          style: TextStyle(color: Colors.grey, height: 1.5),
        ),
      ],
    );
  }

  Widget _icon() {
    return Image.asset(project.appIcon, height: 150, fit: BoxFit.contain);
  }
}
