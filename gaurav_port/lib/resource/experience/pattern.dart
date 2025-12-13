import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:gaurav_port/model/experience.dart';
import 'package:gaurav_port/light/colors.dart';
import 'package:gaurav_port/view model/getx_controllers/projects_controller.dart';

class ExperienceGrid extends StatelessWidget {
  // Removed fixed crossAxisCount and ratio from constructor to make it auto-adjust internally
  const ExperienceGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProjectController());

    // Auto-adjust layout based on screen width
    return LayoutBuilder(
      builder: (context, constraints) {
        // Decide columns based on width
        int crossAxisCount;
        double childAspectRatio;
        double width = constraints.maxWidth;

        if (width > 1100) {
          crossAxisCount = 3;
          childAspectRatio = 2;
        } else if (width > 700) {
          crossAxisCount = 2;
          childAspectRatio = 1.2;
        } else {
          crossAxisCount = 1;
          childAspectRatio = 1.4; // Taller aspect ratio for mobile
        }

        return GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          itemCount: experienceList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            mainAxisSpacing: defaultPadding,
            crossAxisSpacing: defaultPadding,
          ),
          itemBuilder: (context, index) {
            final data = experienceList[index];

            return MouseRegion(
              onEnter: (_) {
                if (index < controller.hovers.length) {
                  controller.onHover(index, true);
                }
              },
              onExit: (_) {
                if (index < controller.hovers.length) {
                  controller.onHover(index, false);
                }
              },
              child: Obx(() {
                final isHovering = (index < controller.hovers.length)
                    ? controller.hovers[index]
                    : false;

                return AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  // Removed fixed height: 340 so it respects the grid aspect ratio
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00FF85), // green
                        Color(0xFF0096FF), // blue
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink,
                        offset: const Offset(-2, 0),
                        blurRadius: isHovering ? 30 : 14,
                      ),
                      BoxShadow(
                        color: Colors.blue,
                        offset: const Offset(2, 0),
                        blurRadius: isHovering ? 30 : 14,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(1.5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(28),
                      child: Container(
                        color: bgColor,
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Header Section
                            Text(
                              data.title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 5),

                            // Subtitle (uncomment if you want to show it)
                            /*
                            Text(
                              "${data.organization} • ${data.date}",
                              style: const TextStyle(
                                color: Colors.white60,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 10),
                            */

                            // Flexible Content Area
                            Expanded(
                              child: SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                child: Text(
                                  data.details,
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 14,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 12),

                            // Footer / Button
                            Align(
                              alignment: Alignment.bottomRight,
                              child: InkWell(
                                onTap: () async {
                                  if (data.link.isEmpty) return;
                                  final Uri url = Uri.parse(data.link);
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url,
                                        mode: LaunchMode.externalApplication);
                                  }
                                },
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18, vertical: 10),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.pink,
                                        Colors.blue.shade900,
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.pink,
                                        blurRadius: 10,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: const Text(
                                    "Encounter",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            );
          },
        );
      },
    );
  }
}
