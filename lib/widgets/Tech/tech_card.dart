import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:protfolio1/models/tech_stack.dart';
import 'package:protfolio1/widgets/Tech/tech_detail_sheet.dart';

class TechCard extends StatefulWidget {
  final TechModel tech;

  const TechCard({super.key, required this.tech});

  @override
  State<TechCard> createState() => _TechCardState();
}

class _TechCardState extends State<TechCard> {
  bool isHovered = false;

  void _showDetails() {
    HapticFeedback.mediumImpact();

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => TechDetailSheet(tech: widget.tech),
    );
  }

  double _getCardWidth(double width) {
    if (width < 600) return 110;
    if (width < 900) return 130;
    return 150;
  }

  double _getIconSize(double width) {
    if (width < 600) return 26;
    return 32;
  }

  double _getFontSize(double width) {
    if (width < 600) return 11;
    return 13;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final cardWidth = _getCardWidth(width);
    final iconSize = _getIconSize(width);
    final fontSize = _getFontSize(width);

    final accentColor = Colors.green;

    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: _showDetails,
        child: AnimatedScale(
          scale: isHovered ? 1.05 : 1.0,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOutBack,
          child: AnimatedContainer(
            width: cardWidth,
            duration: const Duration(milliseconds: 250),
            padding: EdgeInsets.all(width < 600 ? 10 : 16),
            decoration: BoxDecoration(
              color: isHovered
                  ? const Color(0xFF1A1A1A)
                  : const Color(0xFF111111),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: isHovered
                    ? accentColor.withOpacity(0.5)
                    : Colors.white10,
                width: isHovered ? 2 : 1,
              ),
              boxShadow: [
                if (isHovered)
                  BoxShadow(
                    color: accentColor.withOpacity(0.1),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  widget.tech.icon,
                  width: iconSize,
                  height: iconSize,
                ),

                SizedBox(height: width < 600 ? 6 : 12),

                Text(
                  widget.tech.label,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    color: isHovered ? Colors.white : Colors.grey,
                    fontSize: fontSize,
                    fontWeight: isHovered ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
