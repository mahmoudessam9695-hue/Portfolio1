import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protfolio1/pages/splash_screen.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    final baseTheme = ThemeData.dark();

    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: baseTheme.copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0A0A),
        textTheme: GoogleFonts.interTextTheme(
          baseTheme.textTheme,
        ).apply(bodyColor: Colors.white, displayColor: Colors.white),
      ),
      home: const SplashScreen(),
    );
  }
}
