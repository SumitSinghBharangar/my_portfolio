import 'package:flutter/material.dart';
import 'package:layout_pro/responsive_layout.dart';
import 'package:my_portfolio/constants/colors.dart';

import '../../constants/styles.dart';

class ProjectScreen extends StatelessWidget {
  final Size size;
  const ProjectScreen({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    List<MyProjectItem> list = [
      MyProjectItem(
        imageAddress: "assets/images/shot-01.jpg",
        imageName: "Face Detector App",
      ),
      MyProjectItem(
        imageName: "Covid tracker App",
        imageAddress: "assets/images/shot-02.jpg",
      ),
      MyProjectItem(
        imageName: "Chat-GPT Clone",
        imageAddress: "assets/images/shot-03.jpg",
      ),
      MyProjectItem(
        imageName: "BMI Calculator",
        imageAddress: "assets/images/shot-04.jpg",
      ),
      MyProjectItem(
        imageName: "ShoeSavvy App",
        imageAddress: "assets/images/shot-05.jpg",
      ),
    ];
    Size size = MediaQuery.of(context).size;
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: Styles.gradientDecoration,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: size.width * 0.07, vertical: size.height * 0.03),
        child: ResponsiveLayout(
            physics: const BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.normal),
            mobileCrossAxisCount: 1,
            mobileRatio: 0.4,
            largeMobileRatio: .4,
            largeMobileCrossAxisCount: 1,
            tabletCrossAxisCount: 2,
            largeTabletCrossAxisCount: 2,
            largeTabletRatio: .43,
            tabletRatio: 0.4,
            desktopScreenCrossAxisCount: 2,
            desktopRatio: 0.36,
            builder: (context, index) {
              String assetAddress = list[index].imageAddress.toString();
              String assetName = list[index].imageName.toString();

              return Container(
                height: 140,
                width: 130,
                margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.studio, width: 1.4),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.studio)),
                      child: Image.asset(
                        assetAddress,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      assetName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width * 0.02,
                          fontFamily: "Poppins"),
                    )
                  ],
                ),
              );
            },
            itemCount: list.length),
      ),
    );
  }
}
