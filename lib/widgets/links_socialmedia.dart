import 'package:flutter/material.dart';
import 'package:protfolio1/widgets/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class LinksSocialmedia extends StatelessWidget {
  const LinksSocialmedia({super.key});

  void _openLink(String url) async {
    final Uri uri = Uri.parse(url);

    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 15;

    final icons = [
      SocialIcon(
        icon: 'assets/icons/linkedin.svg',
        onTap: () => _openLink('https://www.linkedin.com/in/mahmoudessam9695/'),
        color: Colors.green,
      ),
      SocialIcon(
        icon: 'assets/icons/github.svg',
        onTap: () => _openLink('https://github.com/mahmoudessam9695-hue'),
        color: Colors.green,
      ),
      SocialIcon(
        icon: 'assets/icons/facebook-alt-svgrepo-com.svg',
        onTap: () => _openLink('https://www.facebook.com/mahmod.essam.942/'),
        color: Colors.green,
      ),
    ];

    return isMobile
        ? Wrap(spacing: 0, runSpacing: 0, children: icons)
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              icons.length,
              (index) => Padding(
                padding: EdgeInsets.only(
                  right: index == icons.length - 1 ? 0 : 1,
                ),
                child: icons[index],
              ),
            ),
          );
  }
}
