import 'package:url_launcher/url_launcher.dart';

class UrlLauncherHelper {
  static Future<void> openWhatsApp() async {
    final Uri url = Uri.parse(
      "https://wa.me/201050949616?text=Hello%20Mahmoud",
    );

    await launchUrl(url, mode: LaunchMode.externalApplication);
  }

  static Future<void> openCV() async {
    final Uri url = Uri.parse(
      'https://drive.google.com/file/d/1VFdy-X4HLx1rFuL14cTD55IPP78sC-Ef/view?usp=drive_link',
    );

    await launchUrl(url, mode: LaunchMode.externalApplication);
  }

  static Future<void> openVideo() async {
    final Uri url = Uri.parse(
      'https://drive.google.com/file/d/1Fnyo41IjMgmrRS-UFwUbabbq5ct6B4F1/view',
    );

    await launchUrl(url, mode: LaunchMode.externalApplication);
  }
}
