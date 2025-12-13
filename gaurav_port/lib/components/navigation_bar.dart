import 'package:flutter/material.dart';
import 'navigation_button_list.dart';
import 'package:gaurav_port/light/colors.dart';
import 'package:gaurav_port/intro/components/side_menu_button.dart';
import 'package:gaurav_port/view model/responsive.dart';
import 'connect_button.dart';
class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: !Responsive.isLargeMobile(context)
                ? Image.asset('assets/images/profile.jpg')
                : MenuButton(onTap: () => Scaffold.of(context).openDrawer()),
          ),
          // if(Responsive.isLargeMobile(context)) MenuButton(),
          const Spacer(flex: 2,),
          if(!Responsive.isLargeMobile(context))  NavigationButtonList(),
          const Spacer(flex: 2,),
          const ConnectButton(),
          const Spacer(),
        ],
      ),
    );
  }
}
