import 'package:flutter/material.dart';

import 'package:gaurav_port/light/colors.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    super.key,
    required this.percentage,
    required this.title,
    this.image,
  });
  final double percentage;
  final String title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: percentage),
        duration: const Duration(seconds: 1),
        builder: (context, value, child) {
          return Column(
            children: [
              Row(
                children: [
                  Image.asset(image!, height: 15, width: 15, fit: BoxFit.cover),
                  const SizedBox(width: 5),
                  Text(title, style: const TextStyle(color: Colors.white)),
                  const Spacer(),
                  Text('${(value * 100).toInt().toString()}%'),
                ],
              ),
              const SizedBox(height: defaultPadding / 2),
              LinearProgressIndicator(
                value: value,
                backgroundColor: Colors.black,
                color: Colors.amberAccent,
              ),
            ],
          );
        },
      ),
    );
  }
}

class MySKills extends StatelessWidget {
  const MySKills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          title: 'Flutter',
          image: 'assets/icons/flutter.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          title: 'Go',
          image: 'assets/icons/go1.png',
        ),


        // Add these for your Spring Boot backend skills
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          title: 'Spring Boot',
          image: 'assets/icons/springboot.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          title: 'REST API Development',
          image: 'assets/icons/rest.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          title: 'Docker',
          image: 'assets/icons/docker.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.65,
          title: 'Database (MySQL, MongoDB)',
          image: 'assets/icons/database.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          title: 'Firebase',
          image: 'assets/icons/firebase.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          title: 'Responsive Design',
          image: 'assets/icons/flutter.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          title: 'Clean Architecture',
          image: 'assets/icons/flutter.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          title: 'Bloc',
          image: 'assets/icons/bloc.png',
        ),
      ],
    );
  }
}
