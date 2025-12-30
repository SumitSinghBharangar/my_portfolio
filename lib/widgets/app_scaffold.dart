import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/constants/app_size.dart';
import 'package:my_portfolio/constants/background_blur.dart';
import 'package:my_portfolio/features/home/presentation/hero_widget.dart';
import 'package:my_portfolio/features/home/presentation/home_project_list.dart';
import 'package:my_portfolio/features/home/presentation/skills_body.dart';
import 'package:my_portfolio/widgets/my_app_bar.dart';
import 'package:my_portfolio/widgets/my_footer.dart';

class AppScaffold extends StatelessWidget {
  final List<Widget> sliver;
  const AppScaffold({
    super.key,
    required this.sliver,
  });

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
                  ...sliver,
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
