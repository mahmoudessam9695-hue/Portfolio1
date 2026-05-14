import 'package:flutter/material.dart';

class NavItme extends StatefulWidget {
  final String title;
  final bool active;
  final VoidCallback onTap;

  const NavItme({
    super.key,
    required this.title,
    required this.active,
    required this.onTap,
  });

  @override
  State<NavItme> createState() => _NavItemState();
}

class _NavItemState extends State<NavItme> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    final isActive = widget.active;

    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedScale(
          duration: const Duration(milliseconds: 180),
          scale: hover ? 1.08 : 1.0,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border(
                bottom: BorderSide(
                  color: isActive || hover ? Colors.green : Colors.transparent,
                  width: 2,
                ),
              ),
              boxShadow: hover
                  ? [
                      BoxShadow(
                        color: Colors.green.withValues(alpha: 0.25),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                    ]
                  : [],
            ),
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 180),
              style: TextStyle(
                color: isActive
                    ? Colors.white
                    : (hover ? Colors.white : Colors.grey[400]),
                fontSize: isActive ? 15 : 14,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              ),
              child: Text(widget.title),
            ),
          ),
        ),
      ),
    );
  }
}
