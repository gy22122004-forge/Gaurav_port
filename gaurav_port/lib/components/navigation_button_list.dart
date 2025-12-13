import 'package:flutter/material.dart';
import 'navigation_button.dart';

class NavigationButtonList extends StatelessWidget {
  final PageController? controller;

  const NavigationButtonList({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final double navFontSize = screenWidth < 500 ? 10 : 14;
    final double horizontalSpacing = screenWidth < 500 ? 8 : 16;

    final navButtons = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        NavigationTextButton(
          onTap: () {
            controller?.animateToPage(0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn);
          },
          text: 'Home',
          fontSize: navFontSize,
        ),
        SizedBox(width: horizontalSpacing),
        NavigationTextButton(
          onTap: () {
            controller?.animateToPage(1,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn);
          },
          text: 'About',
          fontSize: navFontSize,
        ),
        SizedBox(width: horizontalSpacing),
        NavigationTextButton(
          onTap: () {
            controller?.animateToPage(2,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn);
          },
          text: 'Projects',
          fontSize: navFontSize,
        ),
        SizedBox(width: horizontalSpacing),
        NavigationTextButton(
          onTap: () {
            controller?.animateToPage(3,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn);
          },
          text: 'Certifications',
          fontSize: navFontSize,
        ),
        SizedBox(width: horizontalSpacing),
        NavigationTextButton(
          onTap: () {
            controller?.animateToPage(4,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn);
          },
          text: 'Experience',
          fontSize: navFontSize,
        ),
      ],
    );

    return screenWidth < 400
        ? SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.5),
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 320),
                child: navButtons,
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: navButtons,
          );
  }
}
