import 'package:flutter/material.dart';
import 'package:protfolio1/helpers/scroll_helper.dart';
import 'package:protfolio1/models/bar_section.dart';
import 'package:protfolio1/widgets/Nav/nav_bar_container.dart';
import 'package:protfolio1/widgets/Nav/nav_items_section.dart';
import 'package:protfolio1/widgets/Text/follow.dart';
import 'package:protfolio1/widgets/urllauncher_helper.dart';
import 'package:protfolio1/widgets/whats_app_button.dart';

class Navbar extends StatefulWidget {
  final ScrollController controller;

  const Navbar({super.key, required this.controller});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  String active = "Home";

  final ValueNotifier<bool> isScrolled = ValueNotifier(false);
  final Map<String, double> sections = Barsection.positions;

  @override
  void initState() {
    super.initState();

    widget.controller.addListener(() {
      final scrolled = widget.controller.offset > 20;

      if (isScrolled.value != scrolled) {
        isScrolled.value = scrolled;
      }
    });
  }

  void scrollTo(String key) {
    final position = sections[key] ?? 0;

    ScrollHelper.scrollTo(widget.controller, position);

    setState(() {
      active = key;
    });
  }

  Future<void> openWhatsApp() async {
    UrlLauncherHelper.openWhatsApp();
  }

  @override
  void dispose() {
    isScrolled.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final isMobile = width < 600;
    final isTablet = width >= 600 && width < 900;

    return ValueListenableBuilder<bool>(
      valueListenable: isScrolled,
      builder: (context, scrolled, child) {
        return NavbarContainer(
          isScrolled: scrolled,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: isMobile ? 12 : 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SocialSection(),

                // ================= DESKTOP =================
                if (!isMobile && !isTablet)
                  Row(
                    children: [
                      NavItemsSection(active: active, onTap: scrollTo),
                      const SizedBox(width: 15),
                      WhatsAppButton(onTap: openWhatsApp),
                    ],
                  )
                // ================= MOBILE / TABLET =================
                else
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // WhatsApp next to menu
                      WhatsAppButton(onTap: openWhatsApp),

                      const SizedBox(width: 15),

                      IconButton(
                        icon: const Icon(Icons.menu, color: Colors.green),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: const Color(0xFF111111),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),
                            builder: (_) {
                              return Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ...Barsection.positions.keys.map((key) {
                                      return ListTile(
                                        title: Text(
                                          key,
                                          style: TextStyle(
                                            color: active == key
                                                ? Colors.green
                                                : Colors.white,
                                            fontWeight: active == key
                                                ? FontWeight.bold
                                                : FontWeight.normal,
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.pop(context);
                                          scrollTo(key);
                                        },
                                      );
                                    }).toList(),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
