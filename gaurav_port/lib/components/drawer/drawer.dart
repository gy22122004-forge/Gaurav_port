import 'package:flutter/material.dart';
import 'package:gaurav_port/light/colors.dart';
import 'knowledges.dart';
import 'about.dart';
import 'my_skill.dart';
import 'contact_icons.dart';
import 'personal_info.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const About(),
            Container(
              color: bgColor,
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    PersonalInfo(),
                    MySKills(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding),
                    ContactIcon(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}




