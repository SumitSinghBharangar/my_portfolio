import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/features/projects/presentation/project_item.dart';
import 'package:my_portfolio/lib2/constants/project_items.dart';

class HomeProjectList extends StatelessWidget {
  const HomeProjectList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeProjectListDesktop(),
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
      child: Row(
        children: [
          Expanded(child: ProjectItem()),
          Expanded(child: ProjectItem()),
          Expanded(child: ProjectItem()),
        ],
      ),
    );
  }
}
