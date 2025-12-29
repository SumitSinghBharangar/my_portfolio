import 'package:bounce/bounce.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/lib2/constants/skill_items.dart';
import 'package:my_portfolio/widgets/home_title_subtitle.dart';

const skilllen = 6;
const skillPointSize = 16.0;
const skillScaleFactor = 150.0;
const skillPointFactor = skillScaleFactor;

class SkillsBody extends StatelessWidget {
  const SkillsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const DesktopSkillsBody();
  }
}

class DesktopSkillsBody extends StatelessWidget {
  const DesktopSkillsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeTitleSubtitle(title: context.text.skills, subtitle: ""),
        Gap(10),
        Stack(
          children: [
            Center(
              child: Container(
                alignment: Alignment.center,
                width: 3,
                height: skilllen * 150,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  context.colorScheme.primary.withOpacity(0),
                  context.colorScheme.primary,
                  context.colorScheme.primary.withOpacity(0),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              ),
            ),
            for (int i = 0; i < skilllen; i++) ...[
              if (i.isEven)
                Positioned(
                    top: i * 150,
                    right: context.isDesktop ? 400 : 250,
                    left: 0,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SkillsItem(),
                        SizedBox(
                          width: context.isDesktop ? 250 : 90,
                          child: DottedLine(
                            dashColor: context.colorScheme.onBackground,
                          ),
                        )
                      ],
                    ))
              else
                Positioned(
                  top: i * 150,
                  left: context.isDesktop ? 400 : 250,
                  right: 0,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: context.isDesktop ? 250 : 90,
                        child: DottedLine(
                          dashColor: context.colorScheme.onBackground,
                        ),
                      ),
                      SkillsItem(),
                    ],
                  ),
                ),
              Positioned(
                  top: i * skillScaleFactor + (skillPointFactor + 16) / 2 - 20,
                  right: 0,
                  left: 0,
                  child: Container(
                    alignment: Alignment.center,
                    width: skillPointSize,
                    height: skillPointSize,
                    decoration: BoxDecoration(
                      color: context.colorScheme.onBackground.withOpacity(0.25),
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      width: skillPointSize / 2,
                      height: skillPointSize / 2,
                      decoration: BoxDecoration(
                        color:
                            context.colorScheme.onBackground.withOpacity(0.8),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ))
            ]
          ],
        ),
      ],
    );
  }
}

class SkillsItem extends StatelessWidget {
  const SkillsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Bounce(
      child: Container(
        height: 140,
        width: 140,
        // margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
        decoration: BoxDecoration(
          color: Colors.transparent.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.studio, width: 1.3),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              skillItems[0].iconData.toString(),
              height: 60,
              color: Colors.white,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              skillItems[0].imageName.toString(),
              style: context.textStyle.bodyLgBold.copyWith(
                color: context.colorScheme.onBackground,
              ),
            )
          ],
        ),
      ),
    );
  }
}
