import 'package:flutter/material.dart';
import 'contact_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ContactCard(
          icon: Icons.alternate_email_rounded,
          title: "Email Me",
          value: "mahmoudessam9695@gmail.com",
        ),
        SizedBox(height: 16),
        ContactCard(
          icon: Icons.phone_iphone_rounded,
          title: "Call Me ",
          value: "+01050949616 ",
        ),
      ],
    );
  }
}
