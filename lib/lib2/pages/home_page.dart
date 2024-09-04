import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.vertical,
      children: [
        // main
        Container(
          height: 500,
          width: double.maxFinite,
          decoration: Styles.gradientDecoration,
          child: ,
        ),
        // about
        Container(
          height: 500,
          width: double.maxFinite,
          decoration: Styles.gradientDecoration,
        ),
        //  skill
        Container(
          height: 500,
          width: double.maxFinite,
          decoration: Styles.gradientDecoration,
        ),
        // projects
        Container(
          height: 500,
          width: double.maxFinite,
          decoration: Styles.gradientDecoration,
        ),
        //  contact
        Container(
          height: 500,
          width: double.maxFinite,
          decoration: Styles.gradientDecoration,
        ),
      ],
    ));
  }
}
