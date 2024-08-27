import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/screens/widgets/download_cv_widget.dart';
import 'package:my_portfolio/screens/widgets/social_widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'social_section.dart';

class HeaderTextWidget extends StatelessWidget {
  final Size size;
  const HeaderTextWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.07,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "I am Sumit",
            style: TextStyle(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins"),
          ),
          GradientText(
            "App Developer +\nAndroid & ios developer",
            colors: [AppColors.studio, AppColors.paleSlate],
            style: TextStyle(
              fontSize: size.width * 0.040,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: size.width * 0.5,
            child: Text(
              "I’m a passionate Flutter developer with expertise in creating high-performance, cross-platform mobile applications. My strong foundation in Dart, Firebase, and seamless API integration allows me to bring ideas to life with clean, efficient, and scalable code.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: "Poppins",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GradientTextWidget extends StatelessWidget {
  final TextAlign? alignment;
  final String? text1;
  final String? text2;
  final Color? color1;
  final Color? color2;
  final double? fsize;
  final FontWeight? fw;
  final Size size;
  const GradientTextWidget({
    super.key,
    required this.size,
    this.alignment,
    this.fw,
    this.color1,
    this.text1,
    this.text2,
    this.color2,
    this.fsize,
  });

  @override
  Widget build(BuildContext context) {
    return GradientText(
      textAlign: size.width < 600 && alignment != null ? alignment : null,
      "${text1}\n${text2 ?? ""}",
      colors: [
        AppColors.studio,
        AppColors.paleSlate,
      ],
      style: TextStyle(
          fontSize: size.width * 0.040,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold),
    );
    );
  }
}

class Social_Large extends StatelessWidget {
  final Size size;
  const Social_Large({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.5,
      child: Row(
        children: [
          DownloadCvWidget(),
          SizedBox(
            width: 20,
          ),
          SocialWidget()
        ],
      ),
    );
  }
}
