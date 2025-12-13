import 'package:flutter/material.dart';
import 'social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(
          icon: 'assets/icons/linkedin.svg',
          onTap: () async {
            await launchUrl(Uri.parse('https://www.linkedin.com/in/gaurav-yadav-807700251/'));
          },
        ),
        SocialMediaIcon(
          icon: 'assets/icons/github.svg',
          onTap: () async {
            await launchUrl(Uri.parse('https://github.com/gy22122004-forge'));
          },
        ),
        SocialMediaIcon(
          icon: 'assets/icons/twitter.svg',
          onTap: () async {
            await launchUrl(Uri.parse('https://x.com/gy22122004'));
          },
        ),
        const SocialMediaIcon(icon: 'assets/icons/dribble.svg'),
      ],
    );
  }
}
