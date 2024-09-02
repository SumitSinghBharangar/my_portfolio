import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:layout_pro/responsive_layout.dart';
import 'package:my_portfolio/constants/colors.dart';

import '../../constants/styles.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<MyProjectItem> list = [
      MyProjectItem(imageAddress: "assets/images/shot-01",imageName: "Face Detector App"),
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
            mobileCrossAxisCount: 1,
            mobileRatio: 0.4,
            largeMobileRatio: .4,
            largeMobileCrossAxisCount: 1,
            tabletCrossAxisCount: 2,
            largeTabletCrossAxisCount: 2,
            largeTabletRatio: .4,
            tabletRatio: 0.4,
            desktopScreenCrossAxisCount: 2,
            desktopRatio: 0.4,
            builder: (context,index){
            String assetAddress = list[index].imageAddress.toString();
            String assetName = list[index].imageName.toString();
            
            return Bounce(
              child: Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColors.studio,width: 1.4),
                  image: DecorationImage(image: AssetImage(assetAddress))
                ),
                
              ),
            );
          }, itemCount: list.length),
      ),
    );
  }
}

class MyProjectItem {
  String? imageName;
  String? imageAddress;

  MyProjectItem({
    required this.imageName,
    required this.imageAddress,
  });
}