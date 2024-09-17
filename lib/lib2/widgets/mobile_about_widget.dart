import 'package:flutter/material.dart';

import 'intro_text_widget.dart';
import 'profile_widget.dart';

class MobileAboutWidget extends StatelessWidget {
  final Size size;
  const MobileAboutWidget({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileWidget(size: size),
          IntroTextWidget(size: size),
        ],
      ),
    );
  }
}
