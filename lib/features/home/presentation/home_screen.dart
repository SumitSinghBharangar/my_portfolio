import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/constants/app_size.dart';
import 'package:my_portfolio/constants/background_blur.dart';
import 'package:my_portfolio/features/home/presentation/hero_images.dart';
import 'package:my_portfolio/features/home/presentation/hero_widget.dart';
import 'package:my_portfolio/features/home/presentation/home_project_list.dart';
import 'package:my_portfolio/features/home/presentation/skills_body.dart';
import 'package:my_portfolio/widgets/my_app_bar.dart';
import 'package:my_portfolio/widgets/my_footer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundBlur(),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.only(top: context.insets.appBarHeight),
              constraints: const BoxConstraints(maxWidth: Insets.maxwidth),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: context.insets.padding),
                      child: const HeroWidget(),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: HomeProjectList(),
                  ),
                  SliverGap(context.insets.gap),
                  const SliverToBoxAdapter(
                    child: SkillsBody(),
                  ),
                  SliverGap(context.insets.gap),
                  const SliverToBoxAdapter(
                    child: MyFooter(),
                  )
                ],
                // child: Column(
                //   children: [
                //     HeroWidget(),
                //     HomeProjectList(),
                //     SkillsBody(),
                //   ],
                // ),
              ),
            ),
          ),
          const Myappbar(),
        ],
      ),
    );
  }
}
