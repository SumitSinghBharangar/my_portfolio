import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class AvatarImgWidget extends StatelessWidget {
  const AvatarImgWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.44,
      width: size.width * 0.44,
      decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage("assets/images/favicon.png"),
        ),
        color: Colors.transparent.withOpacity(0.7),
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.studio.withOpacity(0.5),
        ),
      ),
    );
  }
}
