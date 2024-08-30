import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:layout_pro/responsive_layout.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants/styles.dart';

class SkillScreen extends StatelessWidget {
  final Size size;
  const SkillScreen({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    List<MySkillItem> list = [
      // MySkillItem(imageName: "html", iconData: Icons.html),
      MySkillItem(imageName: "HTML5", iconData: "assets/images/html.svg"),
      // MySkillItem(imageName: "javascript", iconData: Icons.javascript),
      // MySkillItem(imageName: "javascript", iconData: Icons.javascript),
      // MySkillItem(imageName: "javascript", iconData: Icons.html_outlined),
      // MySkillItem(imageName: "javascript", iconData: Icons.html_outlined),
    ];
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: Styles.gradientDecoration,
      child: ResponsiveLayout(
          mobileCrossAxisCount: 3,
          mobileRatio: 1.1,
          largeMobileRatio: 2,
          largeMobileCrossAxisCount: 3,
          tabletCrossAxisCount: 3,
          largeTabletCrossAxisCount: 5,
          largeTabletRatio: 1.1,
          tabletRatio: 1.1,
          desktopScreenCrossAxisCount: 5,
          desktopRatio: 1.1,
          builder: (context, index) {
            var ic = list[index].iconData;
            var txt = list[index].imageName;
            return Bounce(
              child: Container(
                height: 120,
                width: 120,
                margin: EdgeInsets.only(top: 20, left: 10, right: 10),
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
                      "assets/images/html.svg",
                      height: 60,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      txt.toString(),
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: list.length),
    );
  }
}

class MySkillItem {
  String? imageName;
  String? iconData;

  MySkillItem({
    this.imageName,
    this.iconData,
  });
}
