import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/widgets/avatar_img_widget.dart';
import 'package:my_portfolio/screens/widgets/header_text_widget.dart';

class DesktopHomeWidget extends StatelessWidget {
  final Size size;
  const DesktopHomeWidget({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderTextWidget(size: size),
          const AvatarImgWidget(),
        ],
      ),
    );
  }
}
