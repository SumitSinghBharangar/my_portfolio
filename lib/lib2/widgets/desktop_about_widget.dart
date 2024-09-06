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
                  child: Row(
                    children: [
                      ProfileWidget(size: size),
                      const Spacer(),
                      IntroTextWidget(size: size),
                    ],
                  ),
                );
  }
}
