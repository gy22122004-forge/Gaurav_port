import 'package:flutter/material.dart';
// import '../../../../res/constants.dart';

class DrawerImage extends StatelessWidget {
  const DrawerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150, // increased size slightly
      width: 150,
      padding: const EdgeInsets.all(8), // increased padding
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(75),
        gradient: LinearGradient(
          colors: [
            Colors.pinkAccent.shade200,
            Colors.indigo.shade900,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.pinkAccent.withValues(alpha: 0.6),
            blurRadius: 20,
            spreadRadius: 6,
          ),
          BoxShadow(
            color: Colors.blueAccent.withValues(alpha: 0.6),
            blurRadius: 20,
            spreadRadius: 6,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(65), // slightly less than container radius
        child: Transform.rotate(
          angle: 0.1,
          child: Image.asset(
            'assets/images/profile.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
