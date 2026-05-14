import 'package:flutter/material.dart';
import 'package:protfolio1/widgets/urllauncher_helper.dart';

class Downloadbutton extends StatelessWidget {
  const Downloadbutton({super.key});

  double _getPaddingH(double width) {
    if (width < 600) return 20;
    if (width < 900) return 28;
    return 35;
  }

  double _getPaddingV(double width) {
    if (width < 600) return 14;
    if (width < 900) return 18;
    return 25;
  }

  double _getFontSize(double width) {
    if (width < 600) return 14;
    if (width < 900) return 16;
    return 18;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final paddingH = _getPaddingH(width);
    final paddingV = _getPaddingV(width);
    final fontSize = _getFontSize(width);

    const color = Color(0xFF438E00);

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(0.3),
            blurRadius: 20,
            spreadRadius: 2,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: UrlLauncherHelper.openCV,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.symmetric(
            horizontal: paddingH,
            vertical: paddingV,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(
          "Download CV  >",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
