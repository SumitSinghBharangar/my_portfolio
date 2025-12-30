import 'package:flutter/widgets.dart';
import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/features/projects/presentation/project_item.dart';
import 'package:my_portfolio/widgets/app_scaffold.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      sliver: [
        SliverPadding(
            padding: EdgeInsets.all(context.insets.padding),
            sliver: SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 24,
                  mainAxisSpacing: 24,
                  childAspectRatio: 0.8,
                  crossAxisCount: context.mq.size.width ~/ 300 >= 3
                      ? 3
                      : context.mq.size.width ~/ 300),
              itemBuilder: (context, index) {
                return const ProjectItem();
              },
              itemCount: 10,
            )),
      ],
    );
  }
}
