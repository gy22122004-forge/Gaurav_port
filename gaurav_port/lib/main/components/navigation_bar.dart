import 'package:flutter/material.dart';
import 'package:gaurav_port/light/colors.dart';
import 'package:gaurav_port/view model/responsive.dart';
import 'package:gaurav_port/intro/components/side_menu_button.dart';
import 'navigation_button_list.dart';
import 'connect_button.dart';

class TopNavigationBar extends StatelessWidget {
  final PageController? controller;
  const TopNavigationBar({super.key, this.controller});
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
              ? Image.asset('assets/images/logo.png', 
                  height: 40,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text('GP', 
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                  },
                )
              : MenuButton(onTap: () => Scaffold.of(context).openDrawer()),
          ),
          // if(Responsive.isLargeMobile(context)) MenuButton(),
          const Spacer(flex: 2),
          if(!Responsive.isLargeMobile(context))  NavigationButtonList(controller: controller),
          const Spacer(flex: 2),
          const ConnectButton(),
          const Spacer(),
        ],
      ),
    );
  }
}
