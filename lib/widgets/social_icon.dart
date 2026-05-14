import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatefulWidget {
  final String icon;
  final VoidCallback? onTap;
  final Color color;

  const SocialIcon({
    super.key,
    required this.icon,
    this.onTap,
    required this.color,
  });

  @override
  State<SocialIcon> createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon>
    with SingleTickerProviderStateMixin {
  bool hover = false;
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    final hoverColor = widget.color.withOpacity(0.15);

    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: GestureDetector(
        onTapDown: (_) => setState(() => pressed = true),
        onTapUp: (_) => setState(() => pressed = false),
        onTapCancel: () => setState(() => pressed = false),
        onTap: widget.onTap,
        child: AnimatedScale(
          duration: const Duration(milliseconds: 150),
          scale: pressed ? 0.92 : (hover ? 1.05 : 1.0),
          curve: Curves.easeOut,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: hover ? hoverColor : Colors.transparent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: SvgPicture.asset(
              widget.icon,
              height: 20,
              width: 20,
              colorFilter: ColorFilter.mode(widget.color, BlendMode.srcIn),
            ),
          ),
        ),
      ),
    );
  }
}
