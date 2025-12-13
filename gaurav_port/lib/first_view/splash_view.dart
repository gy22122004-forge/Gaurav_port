import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gaurav_port/light/colors.dart';
import 'package:gaurav_port/intro/components/animated_texts_componenets.dart';
import 'package:gaurav_port/splash/componenets/animated_loading_text.dart';
// NOTE: Avoid importing the full app `HomePage` here because that file
// depends on many other app modules which currently fail analysis on web.
// Use a local placeholder home to keep the splash view self-contained.
class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}
class _SplashViewState extends State<SplashView> {
  @override
  void initState() {

    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const _PlaceholderHome()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedImageContainer(width: 120,height: 120,),
            SizedBox(height: defaultPadding,),
            AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}

class _PlaceholderHome extends StatelessWidget {
  const _PlaceholderHome();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home (placeholder)')),
      body: const Center(child: Text('Placeholder Home — replace with real HomePage')),
    );
  }
}
