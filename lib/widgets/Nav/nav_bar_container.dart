import 'dart:ui';

import 'package:flutter/material.dart';

class NavbarContainer extends StatelessWidget {
  final bool isScrolled;
  final Widget child;

  const NavbarContainer({
    super.key,
    required this.isScrolled,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.3),
        boxShadow: isScrolled
            ? [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0),
                  blurRadius: 20,
                ),
              ]
            : [],
      ),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            color: Colors.black.withValues(alpha: 0.2),
            child: child,
          ),
        ),
      ),
    );
  }
}
