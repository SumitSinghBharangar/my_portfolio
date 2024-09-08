import 'package:flutter/material.dart';

import '../../screens/widgets/intro_text_widget.dart';
import '../../screens/widgets/profile_widget.dart';

class DesktopAboutWidget extends StatelessWidget {
  final Size size;
  const DesktopAboutWidget({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfileWidget(size: size),
              const Spacer(),
              IntroTextWidget(size: size),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
