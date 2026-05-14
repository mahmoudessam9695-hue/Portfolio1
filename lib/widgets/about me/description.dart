import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "I’m Mahmoud Essam, a Flutter Developer focused on delivering scalable and high-performance mobile solutions.\n"
      "I combine clean architecture principles with intuitive UI/UX to build products that are both efficient and user-centric.\n"
      "My approach goes beyond coding I analyze problems, design smart solutions, and deliver real business value.\n"
      "I thrive on transforming complex challenges into seamless, high-quality digital experiences.",
      style: TextStyle(color: Colors.grey[400], fontSize: 16, height: 1.7),
    );
  }
}
