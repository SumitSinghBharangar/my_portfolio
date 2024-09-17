import 'package:flutter/material.dart';

import '../../screens/widgets/avatar_img_widget.dart';
import '../../screens/widgets/download_cv_widget.dart';
import '../../screens/widgets/header_text_widget.dart';
import 'social_widget.dart';

class MobileHomePage extends StatelessWidget {
  final Size size;
  const MobileHomePage({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: size.width * 0.06),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AvatarImgWidget(),
          HeaderTextWidget(size: size * 1.2),
          const DownloadCvWidget(),
          SizedBox(
            height: size.height * 0.04,
          ),
          const SocialWidget(),
        ],
      ),
    );
  }
}
