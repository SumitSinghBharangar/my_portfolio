import 'package:flutter/material.dart';
import 'package:layout_pro/responsive_layout.dart';

import '../../constants/styles.dart';

class SkillScreen extends StatelessWidget {
  final Size size;
  const SkillScreen({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    List<string>
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: Styles.gradientDecoration,
      child: ResponsiveLayout(builder: (context,index){
        return Container();
      }, itemCount: itemCount),
    );
  }
}

class MySkillItem {
  String? imageName;
  IconData? iconData;
  int badgeCount;

  MySkillItem({
    this.imageName,
    this.iconData,
    this.badgeCount = 0,
  });
}
