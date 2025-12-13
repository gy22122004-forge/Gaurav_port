import 'package:flutter/material.dart';
import 'package:gaurav_port/light/colors.dart';
import 'package:gaurav_port/model/experience.dart';
import 'package:gaurav_port/view model/responsive.dart';
import 'package:gaurav_port/resource/experience/link.dart';

class ExperienceDetail extends StatelessWidget {
  final int index;
  const ExperienceDetail({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            experienceList[index].title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),

        Responsive.isMobile(context)
            ? const SizedBox(height: defaultPadding / 2)
            : const SizedBox(height: defaultPadding),

        /// FULL MULTI-LINE DETAILS (NO LIMIT)
        Expanded(
          child: SingleChildScrollView(
            child: Text(
              experienceList[index].details,
              style: const TextStyle(
                color: Colors.grey,
                height: 1.5,
              ),
            ),
          ),
        ),

        const SizedBox(height: defaultPadding),

        ExperienceLinks(index: index),

        const SizedBox(height: defaultPadding / 2),
      ],
    );
  }
}