import 'package:flutter/material.dart';
import 'package:gaurav_port/light/colors.dart';
import 'package:gaurav_port/view model/responsive.dart';
import 'package:get/get.dart';
import 'package:gaurav_port/view model/getx_controllers/certification_controller.dart';
import 'package:gaurav_port/projects/components/title_text.dart';
import 'cert_grid.dart';

class Certifications extends StatelessWidget {
  final controller = Get.put(CertificationController());

  Certifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isLargeMobile(context))const SizedBox(
            height: defaultPadding,
          ),
          const TitleText(prefix: 'Certifications & ', title: 'License'),
          const SizedBox(
            height: defaultPadding,
          ),
              Expanded(
                child: CertificateGrid())
        ],
      ),
    );
  }
}