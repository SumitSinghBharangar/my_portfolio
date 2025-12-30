import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/features/projects/presentation/project_item.dart';
import 'package:my_portfolio/provider/project_provider.dart';
import 'package:my_portfolio/widgets/app_scaffold.dart';
import 'package:provider/provider.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = context.watch<ProjectProvider>().projects;

    return AppScaffold(
      sliver: [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
          sliver: projects.isEmpty
              ? const SliverToBoxAdapter(
                  child: Center(child: Text("No projects found")),
                )
              : SliverGrid.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 24,
                    mainAxisSpacing: 24,
                    childAspectRatio: 0.8,
                    crossAxisCount: (context.mq.size.width ~/ 300).clamp(1, 3),
                  ),
                  itemCount: projects.length,
                  itemBuilder: (context, index) {
                    final project = projects[index];

                    return ProjectItem(
                      imgUrl: project.imgUrl,
                      name: project.name,
                      desc: project.desc,
                      apkLink: project.apkLink,
                      link: project.link,
                    );
                  },
                ),
        ),
      ],
    );
  }
}
