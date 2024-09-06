import 'package:flutter/material.dart';

class IntroTextWidget extends StatelessWidget {
  final Size size;
  const IntroTextWidget({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "👋 Hey there",
            style: TextStyle(
              fontSize: size.width * 0.03,
              color: Colors.white,
              fontFamily: "Poppins",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "I’m a passionate Flutter developer with expertise in creating high-performance, cross-platform mobile applications. My strong foundation in Dart, Firebase, and seamless API integration allows me to bring ideas to life with clean, efficient, and scalable code. \n\n📫 Open to collaborations and exciting projects, I'm eager to connect with fellow developers and tech enthusiasts. Let's build something amazing together! Happy coding! 🖥️",
            style: TextStyle(
              fontSize: size.width * 0.015,
              color: Colors.white,
              fontFamily: "Poppins",
            ),
          ),
        ],
      ),
    );
  }
}
