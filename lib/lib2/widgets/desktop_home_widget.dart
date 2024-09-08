import 'package:flutter/material.dart';

import '../../screens/widgets/avatar_img_widget.dart';
import '../../screens/widgets/download_cv_widget.dart';
import '../../screens/widgets/header_text_widget.dart';
import '../../screens/widgets/social_widget.dart';

class DesktopHomeWidget extends StatelessWidget {
  final Size size;
  const DesktopHomeWidget({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: size.width * 0.06),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [HeaderTextWidget(size: size), const AvatarImgWidget()],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const DownloadCvWidget(),
              SizedBox(
                width: size.width * 0.02,
              ),
              const SocialWidget(),
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
