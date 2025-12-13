import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:gaurav_port/view model/responsive.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.prefix,
    required this.title,
  });

  final String prefix;
  final String title;

  double getFontSize(BuildContext context) {
    if (Responsive.isDesktop(context)) return 50;
    if (Responsive.isTablet(context)) return 35;
    if (Responsive.isLargeMobile(context)) return 28;
    return 20; // normal mobile
  }

  @override
  Widget build(BuildContext context) {
    final double fontSize = getFontSize(context);

    final textStyle = Theme.of(context).textTheme.titleMedium!.copyWith(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // PREFIX TEXT
        Text("$prefix ", style: textStyle),

        // TITLE TEXT (if Desktop + Web show gradient)
        if (kIsWeb && Responsive.isDesktop(context))
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [Colors.lightGreen, Colors.cyanAccent],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ).createShader(bounds),
            child: Text(title, style: textStyle.copyWith(color: Colors.white)),
          )
        else
          Text(title, style: textStyle),
      ],
    );
  }
}
