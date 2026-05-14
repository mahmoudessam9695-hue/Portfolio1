import 'package:flutter/material.dart';

class ScrollHelper {
  static void scrollTo(
    ScrollController controller,
    double position, {
    Duration duration = const Duration(milliseconds: 700),
    Curve curve = Curves.easeInOut,
  }) {
    if (!controller.hasClients) return;

    controller.animateTo(position, duration: duration, curve: curve);
  }
}
