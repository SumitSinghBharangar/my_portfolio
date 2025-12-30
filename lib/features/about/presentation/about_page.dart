import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/widgets/app_scaffold.dart';
import 'package:my_portfolio/widgets/seo_text.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      sliver: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: context.insets.padding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/images/img.jpg"),
                ),
                Gap(16),
                SEOText(
                  context.text.aboutTitle,
                  style: context.textStyle.titleSmBold,
                ),
                Gap(16),
                SEOText(
                  context.text.mobileAppDeveloperDesc,
                  style: context.textStyle.bodyMdMedium,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
