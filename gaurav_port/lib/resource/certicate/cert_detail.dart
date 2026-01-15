import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gaurav_port/model/certificate.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gaurav_port/view model/getx_controllers/certification_controller.dart';

class CertificateStack extends StatelessWidget {
  final int index;
  final controller = Get.put(CertificationController());

  CertificateStack({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          certificateList[index].name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 6),
        Row(
          children: [
            Expanded(
              child: Text(
                certificateList[index].organization,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.amber, fontSize: 12),
              ),
            ),
            Text(
              certificateList[index].date,
              style: const TextStyle(color: Colors.grey, fontSize: 11),
            ),
          ],
        ),

        const SizedBox(height: 10),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Skills:",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                const SizedBox(height: 4),
                Text(
                  certificateList[index].skills,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 12),

        InkWell(
          onTap: () => launchUrl(Uri.parse(certificateList[index].credential)),
          child: Container(
            height: 32,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(
                colors: [
                  Colors.pink,
                  Colors.blue.shade700,
                ],
              ),
              boxShadow: const [
                BoxShadow(color: Colors.blue, blurRadius: 4, offset: Offset(0, -1)),
                BoxShadow(color: Colors.lightGreen, blurRadius: 4, offset: Offset(0, 1)),
              ],
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Credentials',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                SizedBox(width: 5),
                Icon(CupertinoIcons.arrow_turn_up_right,
                    color: Colors.white, size: 10),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
