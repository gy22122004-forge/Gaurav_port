import 'package:flutter/material.dart';
import 'package:gaurav_port/light/colors.dart';
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding / 2),
        // AreaInfoText(title: 'Contact', text: '+917380409946'),

        // Wrap the AreaInfoText or create a custom row for clickable behavior
        InkWell(
          onTap: () async {
            final Uri emailLaunchUri = Uri(
              scheme: 'mailto',
              path: 'gy22122004@gmail.com',
            );
            if (await canLaunchUrl(emailLaunchUri)) {
              await launchUrl(emailLaunchUri);
            }
          },
          child: const AreaInfoText(
              title: 'Email',
              text: 'gy22122004@gmail.com'
          ),
        ),

        // AreaInfoText(title: 'LinkedIn', text: '@gaurav-yadav-807700251'),
        // AreaInfoText(title: 'Github', text: '@GAURAV21222003'),
        const SizedBox(
          height: defaultPadding,
        ),
        const Text('Skills', style: TextStyle(color: Colors.white)),
        const SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
