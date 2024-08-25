import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HeaderTextWidget extends StatelessWidget {
  final Size size;
  const HeaderTextWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.07, vertical: size.width * 0.18),
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
          Container(
              width: size.width*0.5,
              child: SocialSection(),
          )
        ],
      ),
    );
  }
}
