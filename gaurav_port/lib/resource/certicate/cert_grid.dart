import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gaurav_port/light/colors.dart';
import 'package:gaurav_port/model/certificate.dart';
import 'package:gaurav_port/view model/getx_controllers/certification_controller.dart';
import 'package:gaurav_port/resource/certicate/cert_detail.dart';

class CertificateGrid extends StatelessWidget {
  CertificateGrid({super.key});

  final controller = Get.put(CertificationController());

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        int crossAxisCount;
        double aspectRatio;

        if (width >= 1200) {
          crossAxisCount = 3;
          aspectRatio = 1.9;
        } else if (width >= 800) {
          crossAxisCount = 2;
          aspectRatio = 1.75;
        } else {
          crossAxisCount = 1;
          aspectRatio = 1.5;
        }

        return GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          itemCount: certificateList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: aspectRatio,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            return MouseRegion(
              onEnter: (_) => controller.onHover(index, true),
              onExit: (_) => controller.onHover(index, false),
              child: Obx(() {
                final hover = controller.hovers[index];

                return AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),

                    // Gradient border
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF00FF85), // green
                        Color(0xFF0096FF),
                      ],
                    ),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink,
                        blurRadius: hover ? 30 : 12,
                        offset: const Offset(-2, 0),
                      ),
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: hover ? 30 : 12,
                        offset: const Offset(2, 0),
                      ),
                    ],
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17),
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        color: bgColor,
                        child: CertificateStack(index: index),
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
