import 'package:flutter/material.dart';
import 'package:gaurav_port/model/experience.dart';
import 'package:url_launcher/url_launcher.dart';
class ExperienceLinks extends StatelessWidget {
  final int index;
  const ExperienceLinks({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        launchUrl(Uri.parse(experienceList[index].link));
      },
      child: const Text(
        'Encounter',

        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 10,
        ),
      ),
    );
  }
}