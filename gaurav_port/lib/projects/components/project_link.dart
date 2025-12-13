import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectLinks extends StatelessWidget {
  final int index;
  const ProjectLinks({super.key, required this.index});
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    if(size.width < 500) {
      return Padding(
        padding: const EdgeInsets.only(right: 4, left: 4),
        child: Row(
          children: [
            const Spacer(),
            IconButton(
              onPressed: () async {
                try {
                  await launchUrl(Uri.parse('https://github.com'));
                } catch (_) {}
              },
              icon: SvgPicture.asset('assets/icons/github.svg'),
              iconSize: 8,
            ),
          ],
        ),
      );
    }


    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 4, left: 4),
      child: Row(
        children: [
          Row(
            children: [
              const Text('Check on Github', style: TextStyle(color: Colors.white), overflow: TextOverflow.ellipsis),
              IconButton(
                onPressed: () async {
                  try {
                    await launchUrl(Uri.parse('https://github.com'));
                  } catch (_) {}
                },
                icon: SvgPicture.asset('assets/icons/github.svg'),
              ),
            ],
          ),
          const Spacer(),
          TextButton(
              onPressed: () async {
                try {
                  await launchUrl(Uri.parse('https://github.com'));
                } catch (_) {}
              },
              child: const Text('Source Code', overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 10)))
        ],
      ),
    );
  }
}
