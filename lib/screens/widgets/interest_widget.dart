import 'package:flutter/material.dart';
import 'package:layout_pro/responsive_layout.dart';
import 'package:my_portfolio/constants/styles.dart';

import '../../constants/colors.dart';

class InterestWidget extends StatelessWidget {
  final List<String> list;

  const InterestWidget({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ResponsiveLayout(
          mobileCrossAxisCount: 3,
          mobileRatio: 1.1,
          largeMobileRatio: 3,
          largeMobileCrossAxisCount: 3,
          tabletCrossAxisCount: 5,
          largeTabletCrossAxisCount: 10,
          largeTabletRatio: 1.1,
          tabletRatio: 1.1,
          desktopScreenCrossAxisCount: 15,
          desktopRatio: 1.1,
          builder: (context, index) {
            return Container(
              height: 100,
              width: 200,
              margin: EdgeInsets.only(top: 20, left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.transparent.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.paleSlate, width: 1.2),
              ),
              child: Center(
                child: Text(
                  list[index],
                  style: TextStyle(fontFamily: "Poppins", color: Colors.white),
                ),
              ),
            );
          },
          itemCount: list.length),
    );
  }
}
