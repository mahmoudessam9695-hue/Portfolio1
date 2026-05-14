import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContactCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String value;

  const ContactCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  bool hover = false;

  void _copy() {
    Clipboard.setData(ClipboardData(text: widget.value));
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: GestureDetector(
        onTap: _copy,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.04),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: hover
                  ? Colors.greenAccent.withValues(alpha: 0.4)
                  : Colors.white.withValues(alpha: 0.08),
            ),
          ),
          child: Row(
            children: [
              Icon(widget.icon, color: Colors.greenAccent),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(color: Colors.grey[500], fontSize: 11),
                    ),
                    const SizedBox(height: 4),
                    SelectableText(
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
              Icon(Icons.copy, color: Colors.grey[400], size: 16),
            ],
          ),
        ),
      ),
    );
  }
}
