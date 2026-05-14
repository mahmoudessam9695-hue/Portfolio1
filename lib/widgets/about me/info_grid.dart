import 'package:flutter/material.dart';
import 'package:protfolio1/widgets/about%20me/infoitem.dart';

class InfoGrid extends StatelessWidget {
  const InfoGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 18,
      runSpacing: 18,
      children: [
        InfoItem(label: "Experience", value: "2+ Years"),
        InfoItem(label: "Birthday", value: "28 Nov 2000"),
        InfoItem(label: "Location", value: "Shoubra, Cairo/Egypt"),
        InfoItem(label: "Availability", value: "Freelance / Full-time"),
        InfoItem(label: "English Level", value: "Very good "),
      ],
    );
  }
}
