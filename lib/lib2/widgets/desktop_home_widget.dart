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
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [HeaderTextWidget(size: size), AvatarImgWidget()],
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Row(
              children: [
                DownloadCvWidget(),
                SizedBox(
                  width: size.width * 0.02,
                ),
                SocialWidget(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
