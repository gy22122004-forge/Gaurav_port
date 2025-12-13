import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gaurav_port/light/colors.dart';


class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        children: [
          const Spacer(),
          IconButton(onPressed: () {launchUrl(Uri.parse('https://www.linkedin.com/in/gaurav-yadav-807700251/'));}, icon: SvgPicture.asset('assets/icons/linkedin.svg')),
          IconButton(onPressed: () {launchUrl(Uri.parse('https://github.com/gy22122004-forge'));}, icon: SvgPicture.asset('assets/icons/github.svg')),
          const Spacer(),
        ],
      ),
    );
  }
}
