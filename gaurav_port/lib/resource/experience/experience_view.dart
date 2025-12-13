import 'package:flutter/material.dart';
import 'package:gaurav_port/light/colors.dart';
import 'package:gaurav_port/view model/responsive.dart';
import 'package:get/get.dart';
import 'package:gaurav_port/view model/getx_controllers/achievements_controller.dart';
import 'package:gaurav_port/projects/components/title_text.dart';
import 'pattern.dart';

class Experience extends StatelessWidget {
  Experience({super.key});

  final controller = Get.put(ExperienceController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width < 500 ? 12 : 24,
          vertical: size.width < 500 ? 12 : 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Top spacing on mobile only
            if (Responsive.isLargeMobile(context))
              const SizedBox(height: defaultPadding),

            /// Title section
            const TitleText(prefix: 'My', title: 'Experience'),
            const SizedBox(height: defaultPadding * 1.2),

            /// Responsive Grid
            Expanded(
              child: ExperienceGrid(),
            ),
          ],
        ),
      ),
    );
  }
}