import 'package:flutter/material.dart';
import 'package:gaurav_port/main/main_view.dart';
import 'package:gaurav_port/intro/introduction.dart';
import 'package:gaurav_port/resource/details/detail.dart';
import 'package:gaurav_port/projects/project_view.dart';
import 'package:gaurav_port/resource/certicate/certificate_1.dart';
import 'package:gaurav_port/resource/experience/experience_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainView(pages: [
      const Introduction(),
      const AboutMe(),
      ProjectsView(),
      Certifications(),
      Experience(),
    ]);
  }
}
