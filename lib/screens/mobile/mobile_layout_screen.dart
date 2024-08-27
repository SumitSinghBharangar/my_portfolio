import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/widgets/navbar_widget.dart';

import '../../constants/styles.dart';

class MobileLayoutScreen extends StatefulWidget {
  const MobileLayoutScreen({super.key});

  @override
  State<MobileLayoutScreen> createState() => _MobileLayoutScreenState();
}

class _MobileLayoutScreenState extends State<MobileLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // NavbarWidgeMobile(size: size),
            ],
          ),
        ),
      ),
    );
  }
}
