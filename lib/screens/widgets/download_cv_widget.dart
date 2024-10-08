import 'package:bounce/bounce.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/colors.dart';

class DownloadCvWidget extends StatelessWidget {
  const DownloadCvWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Bounce(
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.paleSlate)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Download CV",
              style: TextStyle(color: AppColors.studio),
            ),
            const SizedBox.square(
              dimension: 12,
            ),
            FaIcon(
              FontAwesomeIcons.download,
              color: AppColors.studio,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
