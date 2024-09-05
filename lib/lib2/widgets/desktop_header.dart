import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/lib2/widgets/site_logo.dart';

import '../../constants/colors.dart';
import '../constants/navitems.dart';

class DesktopHeader extends StatelessWidget {
  final Size size;
  const DesktopHeader({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.07, vertical: size.width * 0.01),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.transparent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.paleSlate, width: 1.4),
      ),
      child: Row(
        children: [
          SiteLogo(
            size: size,
            onTap: () {},
          ),
          Spacer(),
          for (int i = 0; i < navItems.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CupertinoButton(
                  onPressed: () {},
                  child: Text(
                    navItems[i],
                    style: TextStyle(
                        color: Colors.white, fontSize: size.width * 0.018),
                  )),
            ),
        ],
      ),
    );
  }
}
