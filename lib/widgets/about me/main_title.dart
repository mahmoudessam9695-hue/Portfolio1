import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Flutter Developer crafting scalable,\nhigh-performance apps with clean code and intuitive user experiences.",
      style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        height: 1.2,
      ),
    );
  }
}
