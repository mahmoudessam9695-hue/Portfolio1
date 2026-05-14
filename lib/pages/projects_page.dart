import 'package:flutter/material.dart';
import 'package:protfolio1/models/projects_model.dart';
import 'package:protfolio1/widgets/Projects/project_header_section.dart';
import 'package:protfolio1/widgets/Projects/project_preview.dart';
import 'package:protfolio1/widgets/Projects/project_tile.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  int selectedIndex = 0;
  int? hoveredIndex;

  final Map<int, PageController> _controllers = {};

  PageController _getController(int index) {
    return _controllers.putIfAbsent(index, () => PageController());
  }

  @override
  void dispose() {
    for (final c in _controllers.values) {
      c.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 800;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: ProjectHeaderSection(),
          ),

          Expanded(
            child: isMobile
                // ================= MOBILE =================
                ? Column(
                    children: [
                      Expanded(
                        child: ProjectPreview(
                          key: ValueKey(selectedIndex),
                          project: projectList[selectedIndex],
                          controller: _getController(selectedIndex),
                        ),
                      ),

                      SizedBox(
                        height: 220,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.all(12),
                          itemCount: projectList.length,
                          itemBuilder: (context, index) {
                            final app = projectList[index];

                            return SizedBox(
                              width: 200,
                              child: ProjectTile(
                                title: app.name,
                                desc: app.description,
                                isSelected: selectedIndex == index,
                                isHovered: false,
                                onTap: () =>
                                    setState(() => selectedIndex = index),
                                onHover: (_) {},
                                onViewCode: () =>
                                    launchUrl(Uri.parse(app.link)),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  )
                // ================= DESKTOP =================
                : Row(
                    children: [
                      Container(
                        width: 350,
                        margin: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.02),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.05),
                          ),
                        ),
                        child: ListView.builder(
                          padding: const EdgeInsets.all(16),
                          itemCount: projectList.length,
                          itemBuilder: (context, index) {
                            final app = projectList[index];

                            return ProjectTile(
                              title: app.name,
                              desc: app.description,
                              isSelected: selectedIndex == index,
                              isHovered: hoveredIndex == index,
                              onTap: () =>
                                  setState(() => selectedIndex = index),
                              onHover: (value) {
                                setState(() {
                                  hoveredIndex = value ? index : null;
                                });
                              },
                              onViewCode: () => launchUrl(Uri.parse(app.link)),
                            );
                          },
                        ),
                      ),

                      Container(
                        width: 1,
                        color: Colors.white.withOpacity(0.08),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 300),
                            child: ProjectPreview(
                              key: ValueKey(selectedIndex),
                              project: projectList[selectedIndex],
                              controller: _getController(selectedIndex),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
