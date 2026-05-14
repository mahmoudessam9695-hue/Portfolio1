import 'package:flutter/material.dart';

class TerminalAboutText extends StatefulWidget {
  const TerminalAboutText({super.key});

  @override
  State<TerminalAboutText> createState() => _TerminalAboutTextState();
}

class _TerminalAboutTextState extends State<TerminalAboutText> {
  final List<String> lines = [
    "Familiar with Dart, UI design,",
    "and API integration.",
    "Eager to grow skills in state management",
    "and application architecture.",
    "Collaborative development and clean code practices.",
  ];

  List<String> printedLines = [];
  String currentLine = "";

  int lineIndex = 0;
  int charIndex = 0;

  bool started = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _typeNextLine();
    });
  }

  Future<void> _typeNextLine() async {
    if (started) return;
    started = true;

    while (lineIndex < lines.length) {
      String text = lines[lineIndex];
      currentLine = "";
      charIndex = 0;

      while (charIndex < text.length) {
        await Future.delayed(const Duration(milliseconds: 25));

        if (!mounted) return;

        setState(() {
          currentLine += text[charIndex];
        });

        charIndex++;
      }

      // تثبيت السطر بعد ما يخلص
      setState(() {
        printedLines.add(currentLine);
      });

      lineIndex++;

      await Future.delayed(const Duration(milliseconds: 300));
    }
  }

  double _getFontSize(double width) {
    if (width < 600) return 14.0;
    if (width < 900) return 16.0;
    return 18.0;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final fontSize = _getFontSize(width);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...printedLines.map((line) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 25,
                  child: Text(
                    "> ",
                    style: TextStyle(color: Colors.green, fontSize: fontSize),
                  ),
                ),
                Expanded(
                  child: Text(
                    line,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: fontSize,
                      color: Colors.grey.shade400,
                      height: 1.6,
                    ),
                  ),
                ),
              ],
            ),
          );
        }),

        // السطر الحالي أثناء الكتابة
        if (lineIndex < lines.length)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 25,
                  child: Text(
                    "> ",
                    style: TextStyle(color: Colors.green, fontSize: fontSize),
                  ),
                ),
                Expanded(
                  child: Text(
                    currentLine,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: fontSize,
                      color: Colors.grey.shade400,
                      height: 1.6,
                    ),
                  ),
                ),
                const BlinkingCursor(),
              ],
            ),
          ),
      ],
    );
  }
}

class BlinkingCursor extends StatefulWidget {
  const BlinkingCursor({super.key});

  @override
  State<BlinkingCursor> createState() => _BlinkingCursorState();
}

class _BlinkingCursorState extends State<BlinkingCursor>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: const Text("|", style: TextStyle(color: Colors.green)),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
