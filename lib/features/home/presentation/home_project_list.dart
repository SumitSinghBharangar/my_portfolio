import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/features/projects/presentation/project_item.dart';
import 'package:my_portfolio/lib2/constants/project_items.dart';
import 'package:my_portfolio/widgets/home_title_subtitle.dart';

class HomeProjectList extends StatelessWidget {
  const HomeProjectList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(10),
        HomeTitleSubtitle(title: context.text.projects, subtitle: ""),
        context.isDesktop
            ? const HomeProjectListDesktop()
            : const HomeProjectListmobile(),
      ],
    );
  }
}

class HomeProjectListDesktop extends StatelessWidget {
  const HomeProjectListDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.insets.padding,
      ),
      child: const Row(
        children: [
          Expanded(child: ProjectItem()),
          Expanded(child: ProjectItem()),
          Expanded(child: ProjectItem()),
        ],
      ),
    );
  }
}

class HomeProjectListmobile extends StatelessWidget {
  const HomeProjectListmobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 240,
              child: ProjectItem(),
            ),
            SizedBox(
              width: 240,
              child: ProjectItem(),
            ),
            SizedBox(
              width: 240,
              child: ProjectItem(),
            ),
            SizedBox(
              width: 240,
              child: ProjectItem(),
            ),
          ],
        ),
      ),
    );
  }
}
