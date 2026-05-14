import 'package:flutter/material.dart';

class InfoItem extends StatefulWidget {
  final String label;
  final String value;

  const InfoItem({super.key, required this.label, required this.value});

  @override
  State<InfoItem> createState() => _InfoItemState();
}

class _InfoItemState extends State<InfoItem> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: AnimatedScale(
        duration: const Duration(milliseconds: 180),
        scale: hover ? 1.03 : 1.0,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: hover
                ? Colors.white.withValues(alpha: 0.06)
                : Colors.white.withValues(alpha: 0.03),

            borderRadius: BorderRadius.circular(14),

            border: Border.all(
              color: hover
                  ? Colors.greenAccent.withValues(alpha: 0.5)
                  : Colors.white.withValues(alpha: 0.08),
            ),

            boxShadow: hover
                ? [
                    BoxShadow(
                      color: Colors.green.withValues(alpha: 0.15),
                      blurRadius: 18,
                      spreadRadius: 1,
                    ),
                  ]
                : [],
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// LABEL
              Text(
                widget.label,
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 12,
                  letterSpacing: 0.3,
                ),
              ),

              const SizedBox(height: 6),

              /// VALUE
              Text(
                widget.value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
