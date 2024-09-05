import 'package:flutter/material.dart';
import 'package:my_portfolio/lib2/widgets/site_logo.dart';

import '../../constants/colors.dart';

class HeaderMobile extends StatelessWidget {
  final Size size;
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  const HeaderMobile({
    super.key,
    this.onLogoTap,
    this.onMenuTap,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: BoxDecoration(
        color: Colors.transparent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.paleSlate,
          width: 1.4,
        ),
      ),
      child: Row(
        children: [
          SiteLogo(
            size: size,
            onTap: onLogoTap,
          ),
          Spacer(),
          IconButton(
            onPressed: onMenuTap,
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
