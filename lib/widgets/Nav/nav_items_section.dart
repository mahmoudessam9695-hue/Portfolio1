import 'package:flutter/material.dart';

import 'package:protfolio1/models/bar_section.dart';
import 'package:protfolio1/widgets/Nav/nav_item.dart';

class NavItemsSection extends StatelessWidget {
  final String active;
  final Function(String) onTap;

  const NavItemsSection({super.key, required this.active, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: Barsection.names.map((title) {
        return NavItme(
          title: title,
          active: active == title,
          onTap: () => onTap(title),
        );
      }).toList(),
    );
  }
}
