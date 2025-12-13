import 'package:flutter/material.dart';
import 'package:gaurav_port/light/colors.dart';
import 'package:gaurav_port/model/experience.dart';
import 'package:gaurav_port/view model/responsive.dart';
import 'package:gaurav_port/resource/experience/link.dart';

class ExperienceStack extends StatelessWidget {
  final int index;
  final int maxLines;

  const ExperienceStack({
    super.key,
    required this.index,
    required this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    final experience = experienceList[index];

    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Center(
            child: Text(
              experience.title,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.white,
                    fontSize: Responsive.isMobile(context) ? 16 : 20,
                    fontWeight: FontWeight.bold,
                  ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          const SizedBox(height: 10),

          // Description
          Text(
            experience.details,
            style: TextStyle(
              color: Colors.white70,
              fontSize: Responsive.isMobile(context) ? 12 : 15,
              height: 1.4,
            ),
            maxLines: maxLines,
            overflow: TextOverflow.ellipsis,
          ),

          const Spacer(),

          ExperienceLinks(index: index),

          const SizedBox(height: defaultPadding / 2),
        ],
      ),
    );
  }
}