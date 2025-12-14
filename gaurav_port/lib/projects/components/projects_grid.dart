import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gaurav_port/model/work_done.dart';
import 'package:gaurav_port/light/colors.dart';
import 'package:gaurav_port/view model/getx_controllers/projects_controller.dart';

class ProjectGrid extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;

  ProjectGrid({
    super.key,
    this.crossAxisCount = 3,
    this.ratio = 4 / 3,
  });

  final controller = Get.put(ProjectController());

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      itemCount: projectList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: ratio,
        mainAxisSpacing: 25,
        crossAxisSpacing: 25,
      ),
      itemBuilder: (context, index) {
        return MouseRegion(
          onEnter: (_) => controller.onHover(index, true),
          onExit: (_) => controller.onHover(index, false),
          child: Obx(() {
            final isHovering = controller.hovers[index];

            return AnimatedContainer(
              duration: const Duration(milliseconds: 250),


              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF00FF85), // green
                    Color(0xFF0096FF),
                  ],
                ),

                boxShadow: [
                  BoxShadow(
                    color: Colors.pink,
                    offset: const Offset(-2, 0),
                    blurRadius: isHovering ? 35 : 18,
                  ),
                  BoxShadow(
                    color: Colors.blue,
                    offset: const Offset(2, 0),
                    blurRadius: isHovering ? 35 : 18,
                  ),
                ],
              ),

              child: Padding(
                padding: const EdgeInsets.all(2.2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(28),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: double.infinity,
                    color: bgColor,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          projectList[index].name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          projectList[index].description,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),

                        const SizedBox(height: 10),
                        Expanded(
                          child: ListView(
                            physics: const BouncingScrollPhysics(),
                            children: projectList[index]
                                .bulletPoints
                                .map((point) => Padding(
                              padding:
                              const EdgeInsets.only(bottom: 6.0),
                              child: Row(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "• ",
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      point,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ))
                                .toList(),
                          ),
                        ),

                        const SizedBox(height: 12),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            onTap: () async {
                              if (projectList[index].link.isEmpty) return;

                              Uri url = Uri.parse(projectList[index].link);

                              if (await canLaunchUrl(url)) {
                                await launchUrl(url,
                                    mode: LaunchMode.externalApplication);
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 22, vertical: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),

                                // MATCH EXACT BUTTON STYLE FROM YOUR SCREENSHOT
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.pink,
                                    Colors.blue.shade900,
                                  ],
                                ),

                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.pink,
                                    blurRadius: 12,
                                    offset: const Offset(0, 3),
                                  )
                                ],
                              ),
                              child: const Text(
                                "View Project ↗",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white,
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
  }
}
