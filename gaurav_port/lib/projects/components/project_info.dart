import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gaurav_port/view model/getx_controllers/projects_controller.dart';
// Use relative import to ensure it finds the file in the same folder
import 'project_deatail.dart';

class ProjectStack extends StatelessWidget {
  final int index;

  ProjectStack({super.key, required this.index});

  final controller = Get.put(ProjectController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      onTap: () {
        // Add functionality here if needed, e.g., open project link
      },
      borderRadius: BorderRadius.circular(30),
      child: Obx(() {
        final isHovering = controller.hovers[index];

        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
              colors: [Colors.pinkAccent, Colors.blue],
            ),
            boxShadow: [
              BoxShadow(
                // Updated to match project_grid.dart syntax (Flutter 3.27+)
                color: Colors.pink.withValues(alpha: 0.6),
                offset: const Offset(-2, 0),
                blurRadius: isHovering ? 20 : 10,
              ),
              BoxShadow(
                color: Colors.blue.withValues(alpha: 0.6),
                offset: const Offset(2, 0),
                blurRadius: isHovering ? 20 : 10,
              ),
            ],
          ),
          // Clean container that holds the details
          child: Padding(
            padding: const EdgeInsets.all(2.0), // Thin border effect
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black87, // Inner card color
                borderRadius: BorderRadius.circular(28),
              ),
              child: ProjectDetail(index: index), // Calls the detail widget
            ),
          ),
        );
      }),
    );
  }
}
