import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/features/home/presentation/skills_body.dart';
import 'package:my_portfolio/features/skills/data/skill_data.dart';

import 'package:my_portfolio/widgets/app_scaffold.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      sliver: [
        SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
            sliver: SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 24,
                  mainAxisSpacing: 24,
                  childAspectRatio: 1,
                  crossAxisCount: context.mq.size.width ~/ 200 >= 4
                      ? 5
                      : context.mq.size.width ~/ 200),
              itemBuilder: (context, index) {
                return SkillsItem(
                  img: skillItems[index].iconData.toString(),
                  name: skillItems[index].imageName.toString(),
                );
              },
              itemCount: skillItems.length,
            )),
      ],
    );
  }
}
