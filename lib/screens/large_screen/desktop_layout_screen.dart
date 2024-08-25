import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/styles.dart';

import '../widgets/header_text_widget.dart';
import '../widgets/rotating_image_container.dart';

class DesktopLayoutScreen extends StatefulWidget {
  const DesktopLayoutScreen({super.key});

  @override
  State<DesktopLayoutScreen> createState() => _DesktopLayoutScreenState();
}

class _DesktopLayoutScreenState extends State<DesktopLayoutScreen> {
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
              Container(
                margin: EdgeInsets.symmetric(vertical: size.height * 0.18),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            HeaderTextWidget(
                              size: size,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            // Social_Large(size: size)
                          ],
                        )
                      ],
                    ),
                    Expanded(
                        child: Container(
                      height: size.height * 0.75,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RotatingImageContainer(),
                        ],
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
