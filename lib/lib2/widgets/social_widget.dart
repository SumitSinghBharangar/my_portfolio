import 'dart:js' as js;

import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:my_portfolio/constants/colors.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 170,
      child: Row(
        children: [
          Bounce(
            onTap: () {
              js.context.callMethod(
                  "open", ["https://github.com/SumitSinghBharangar"]);
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.paleSlate.withOpacity(0.5),
                ),
              ),
              child: Center(
                child: IconButton(
                    hoverColor: AppColors.paleSlate,
                    onPressed: () {
                      js.context.callMethod(
                          "open", ["https://github.com/SumitSinghBharangar"]);
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.github,
                      color: AppColors.studio,
                      size: 15,
                    )),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Bounce(
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.paleSlate.withOpacity(0.5),
                ),
              ),
              child: Center(
                child: IconButton(
                    hoverColor: AppColors.paleSlate,
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.linkedinIn,
                      color: AppColors.studio,
                      size: 15,
                    )),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Bounce(
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.paleSlate.withOpacity(0.5),
                ),
              ),
              child: Center(
                child: IconButton(
                    hoverColor: AppColors.paleSlate,
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.instagram,
                      color: AppColors.studio,
                      size: 15,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
