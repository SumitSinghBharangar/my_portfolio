import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/widgets/navbar_widget.dart';

import '../../constants/styles.dart';

class TabletLayoutScreen extends StatefulWidget {
  const TabletLayoutScreen({super.key});

  @override
  State<TabletLayoutScreen> createState() => _TabletLayoutScreenState();
}

class _TabletLayoutScreenState extends State<TabletLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          child: Column(
            children: [
              NavbarWidgetLarge(size: size),
            ],
          ),
        ),
      ),
    );
  }
}
