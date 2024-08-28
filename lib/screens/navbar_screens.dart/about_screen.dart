import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/components/box_widget.dart';
import 'package:my_portfolio/screens/widgets/header_text_widget.dart';
import 'package:my_portfolio/screens/widgets/rotating_image_container.dart';

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
      height: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.07),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
                HeaderTextWidget(size: size),
                Spacer(),
                RotatingImageContainer(),
              ],
            ),
            Text(
              "INTERESTS___________",
              style: TextStyle(
                  fontSize: size.width * 0.012,
                  color: Colors.white,
                  fontFamily: "Poppins"),
            ),
            BoxWidget(list: ["web development", "app developer"], size: size),
          ],
        ),
      ),
    );
  }
}
