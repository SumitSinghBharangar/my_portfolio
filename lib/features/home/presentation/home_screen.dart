import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/background_blur.dart';
import 'package:my_portfolio/widgets/my_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          BackgroundBlur(),
          Myappbar(),
        ],
      ),
    );
  }
}
