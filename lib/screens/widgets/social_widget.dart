import 'package:bounce/bounce.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:js' as js;

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
              // launchUrl(
              //   Uri.parse("https://github.com/SumitSinghBharangar"),
              // );
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
                      // launchUrl(
                      //     Uri.parse("https://github.com/SumitSinghBharangar"));
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.github,
                      color: AppColors.studio,
                      size: 15,
                    )),
              ),
            ),
          ),
          SizedBox(
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
                    icon: FaIcon(
                      FontAwesomeIcons.linkedinIn,
                      color: AppColors.studio,
                      size: 15,
                    )),
              ),
            ),
          ),
          SizedBox(
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
                    icon: FaIcon(
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
