import 'package:flutter/material.dart';

class HeroImages extends StatelessWidget {
  const HeroImages({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.6,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(250),
        ),
        child: Image.asset(
          'assets/images/img.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
