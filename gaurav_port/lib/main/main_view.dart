import 'package:flutter/material.dart';
import 'package:gaurav_port/light/colors.dart';
import '../../view model/responsive.dart';
import 'components/drawer/drawer.dart';
import 'components/navigation_button_list.dart';
import 'components/navigation_bar.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class MainView extends StatelessWidget {
   const MainView({super.key, required this.pages});
  final List<Widget> pages;
  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          children: [
            kIsWeb && !Responsive.isLargeMobile(context) ? const SizedBox(height: defaultPadding * 2) : const SizedBox(height: defaultPadding / 2),
             SizedBox(
                height: 80,
                child: TopNavigationBar(controller: controller),
            ),
            if(Responsive.isLargeMobile(context))  NavigationButtonList(controller: controller),
            Expanded(
                flex: 9,
                child: PageView(
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  controller: controller,
                  children: [
                    ...pages
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}








