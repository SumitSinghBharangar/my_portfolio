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
    Size size = MediaQuery.of(context).size;
    List<MySkillItem> list = [
      MySkillItem(imageName: "HTML5", iconData: "assets/images/html.svg"),
      MySkillItem(imageName: "CSS", iconData: "assets/images/css.svg"),
      MySkillItem(imageName: "Javascript", iconData: "assets/images/js.svg"),
      MySkillItem(imageName: "Javascript", iconData: "assets/images/js.svg"),
      MySkillItem(imageName: "Java", iconData: "assets/images/java.svg"),
      MySkillItem(imageName: "MySQL", iconData: "assets/images/mysql.svg"),
      MySkillItem(imageName: "Bash", iconData: "assets/images/bash.svg"),
      MySkillItem(imageName: "dart", iconData: "assets/images/dart.svg"),
      MySkillItem(
          imageName: "Firebase", iconData: "assets/images/firebase.svg"),
      MySkillItem(
          imageName: "Firestore", iconData: "assets/images/firestore.svg"),
      MySkillItem(imageName: "Flutter", iconData: "assets/images/flutter.svg"),
      MySkillItem(imageName: "Git", iconData: "assets/images/git.svg"),
      MySkillItem(imageName: "Github", iconData: "assets/images/github.svg"),
      MySkillItem(imageName: "MongoDB", iconData: "assets/images/mongodb.svg"),
      MySkillItem(imageName: "Postman", iconData: "assets/images/postman.svg"),
      MySkillItem(imageName: "Python", iconData: "assets/images/postman.svg"),
    ];
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: Styles.gradientDecoration,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: size.width * 0.07, vertical: size.height * 0.03),
        child: ResponsiveLayout(
            physics: const BouncingScrollPhysics(),
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
              String ic = list[index].iconData.toString();
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
                        ic,
                        height: 60,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        txt.toString(),
                        style:
                            const TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                ),
              );
            },
            itemCount: list.length),
      ),
    );
  }
}


