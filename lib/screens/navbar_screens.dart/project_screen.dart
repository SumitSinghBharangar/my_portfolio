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
      MyProjectItem()
    ]
    Size size = MediaQuery.of(context).size;
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: Styles.gradientDecoration,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: size.width * 0.07, vertical: size.height * 0.03),
          child: ResponsiveLayout(builder: (context,index){
            return Bounce(
              child: Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColors.studio,width: 1.4),
                  image: DecorationImage(image: AssetImage("assetName"))
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
    this.imageName,
    this.imageAddress,
  });
}