import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/styles.dart';

import '../widgets/avatar_img_widget.dart';
import '../widgets/header_text_widget.dart';

class HomeScreen extends StatelessWidget {
  final Size size;
  const HomeScreen({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: Styles.gradientDecoration,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.07, vertical: size.height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          //
                        ],
                      ),
                    ],
                  ),
                  Expanded(
                      child: Container(
                    height: size.height * 0.7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [AvatarImgWidget()],
                    ),
                  ))
                ],
              ),
              Social_Large(size: size)
            ],
          ),
        ),
      ),
    );
  }
}
