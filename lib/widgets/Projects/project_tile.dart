import 'package:flutter/material.dart';

class ProjectTile extends StatelessWidget {
  final String title;
  final String desc;
  final bool isSelected;
  final bool isHovered;
  final VoidCallback onTap;
  final VoidCallback onViewCode;
  final Function(bool) onHover;

  const ProjectTile({
    super.key,
    required this.title,
    required this.desc,
    required this.isSelected,
    required this.isHovered,
    required this.onTap,
    required this.onHover,
    required this.onViewCode,
  });

  @override
  Widget build(BuildContext context) {
    final active = isSelected || isHovered;

    return MouseRegion(
      onEnter: (_) => onHover(true),
      onExit: (_) => onHover(false),
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
          margin: const EdgeInsets.only(bottom: 15),
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: active ? const Color(0xFF151515) : const Color(0xFF0A0A0A),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: isSelected
                  ? Colors.green
                  : active
                  ? Colors.green.withValues(alpha: 0.3)
                  : Colors.white.withValues(alpha: 0.05),
            ),
            boxShadow: active
                ? [
                    BoxShadow(
                      color: Colors.green.withValues(alpha: 0.12),
                      blurRadius: 18,
                      spreadRadius: 1,
                    ),
                  ]
                : [],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// TITLE ROW
              Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                        color: active ? Colors.green : Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  /// ACTION BUTTON
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    child: TextButton.icon(
                      onPressed: onViewCode,
                      icon: const Icon(Icons.code, size: 16),
                      label: const Text("Code", style: TextStyle(fontSize: 12)),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.green.withValues(alpha: 0.2),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              /// DESCRIPTION
              Text(
                desc,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 13,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
