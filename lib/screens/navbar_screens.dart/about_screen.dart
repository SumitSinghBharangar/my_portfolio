import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/styles.dart';
import 'package:my_portfolio/screens/widgets/interest_widget.dart';

import 'package:my_portfolio/screens/widgets/intro_text_widget.dart';
import 'package:my_portfolio/screens/widgets/profile_widget.dart';

class AboutScreen extends StatelessWidget {
  final Size size;
  const AboutScreen({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: Styles.gradientDecoration,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.07, vertical: size.height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "ABOUT___________",
                style: TextStyle(
                    fontSize: size.width * 0.012,
                    color: Colors.white,
                    fontFamily: "Poppins"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IntroTextWidget(size: size),
                  Spacer(),
                  ProfileWidget(size: size)
                ],
              ),
              Text(
                "INTERESTS___________",
                style: TextStyle(
                    fontSize: size.width * 0.012,
                    color: Colors.white,
                    fontFamily: "Poppins"),
              ),
              SizedBox(
                height: 20,
              ),
              InterestWidget(
                  list: ["app development", "web", "android", "ios"],
                  size: size),
            ],
          ),
        ),
      ),
    );
  }
}
