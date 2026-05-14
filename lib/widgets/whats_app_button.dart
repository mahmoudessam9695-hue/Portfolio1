import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WhatsAppButton extends StatefulWidget {
  final VoidCallback onTap;

  const WhatsAppButton({super.key, required this.onTap});

  @override
  State<WhatsAppButton> createState() => _WhatsAppButtonState();
}

class _WhatsAppButtonState extends State<WhatsAppButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const color = Color(0xFF25D366);

    return Tooltip(
      message: "Contact me on WhatsApp",
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedBuilder(
          animation: _controller,
          builder: (_, _) {
            final scale = 1 + (_controller.value * 0.15);

            return Transform.scale(
              scale: scale,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: color.withOpacity(0.35),
                      blurRadius: 18,
                      spreadRadius: 2,
                    ),
                  ],
                ),

                // 🔥 FIX: Center + visual alignment fix
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 1),
                    child: FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
