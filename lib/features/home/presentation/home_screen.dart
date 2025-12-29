import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_size.dart';
import 'package:my_portfolio/constants/background_blur.dart';
import 'package:my_portfolio/features/home/presentation/hero_images.dart';
import 'package:my_portfolio/features/home/presentation/hero_widget.dart';
import 'package:my_portfolio/features/home/presentation/home_project_list.dart';
import 'package:my_portfolio/features/home/presentation/skills_body.dart';
import 'package:my_portfolio/widgets/my_app_bar.dart';

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
              constraints: const BoxConstraints(maxWidth: Insets.maxwidth),
              child: const CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: HeroWidget(),
                  ),
                  SliverToBoxAdapter(
                    child: HomeProjectList(),
                  ),
                  SliverToBoxAdapter(
                    child: SkillsBody(),
                  ),
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
