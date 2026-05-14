import 'package:flutter/material.dart';

class ProjectNavButton extends StatefulWidget {
  final IconData icon;
  final Alignment alignment;
  final VoidCallback onTap;

  const ProjectNavButton({
    super.key,
    required this.icon,
    required this.alignment,
    required this.onTap,
  });

  @override
  State<ProjectNavButton> createState() => _ProjectNavButtonState();
}

class _ProjectNavButtonState extends State<ProjectNavButton> {
  bool isHovered = false;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: widget.alignment,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: MouseRegion(
          onEnter: (_) => setState(() => isHovered = true),
          onExit: (_) => setState(() => isHovered = false),
          child: GestureDetector(
            onTapDown: (_) => setState(() => isPressed = true),
            onTapUp: (_) {
              setState(() => isPressed = false);
              widget.onTap();
            },
            onTapCancel: () => setState(() => isPressed = false),
            child: AnimatedScale(
              duration: const Duration(milliseconds: 120),
              scale: isPressed ? 0.92 : (isHovered ? 1.08 : 1.0),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeOut,
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isHovered
                      ? Colors.green.withValues(alpha: 0.18)
                      : Colors.black54,
                  border: Border.all(
                    color: isHovered
                        ? Colors.greenAccent.withValues(alpha: 0.5)
                        : Colors.white.withValues(alpha: 0.1),
                  ),
                  boxShadow: isHovered
                      ? [
                          BoxShadow(
                            color: Colors.green.withValues(alpha: 0.35),
                            blurRadius: 12,
                            spreadRadius: 2,
                          ),
                        ]
                      : [],
                ),
                child: Icon(
                  widget.icon,
                  color: isHovered ? Colors.greenAccent : Colors.white,
                  size: 22,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
