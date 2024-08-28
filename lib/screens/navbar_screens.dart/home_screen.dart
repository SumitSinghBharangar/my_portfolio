import 'package:flutter/material.dart';

import '../widgets/avatar_img_widget.dart';
import '../widgets/header_text_widget.dart';

class HomeScreen extends StatelessWidget {
  final Size size;
  const HomeScreen({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.07),
      child: Column(
        children: [
          Row(
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
                      //
                    ],
                  ),
                  Social_Large(size: size)
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
          )
        ],
      ),
    );
  }
}
