import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/features/projects/data/project_data.dart';
import 'package:my_portfolio/features/projects/presentation/project_item.dart';

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
    var list = AppStore.projects;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.insets.padding,
      ),
      child: Row(
        children: [
          Expanded(
            child: ProjectItem(
              imgUrl: list[0].imgUrl,
              name: list[0].name,
              desc: list[0].desc,
              apkLink: list[0].desc,
              link: list[0].link,
            ),
          ),
          Expanded(
            child: ProjectItem(
              imgUrl: list[2].imgUrl,
              name: list[2].name,
              desc: list[2].desc,
              apkLink: list[2].desc,
              link: list[2].link,
            ),
          ),
          Expanded(
            child: ProjectItem(
              imgUrl: list[4].imgUrl,
              name: list[4].name,
              desc: list[4].desc,
              apkLink: list[4].desc,
              link: list[4].link,
            ),
          ),
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
              child: ProjectItem(
                imgUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNubLmqdOK9pZWU-2IiD20cuSIdUUDi9-NvQ&s',
                name: 'hello',
                desc: 'this the description',
                apkLink: 'fdfdfd',
                link: 'fdfdfd',
              ),
            ),
            SizedBox(
              width: 240,
              child: ProjectItem(
                imgUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNubLmqdOK9pZWU-2IiD20cuSIdUUDi9-NvQ&s',
                name: 'hello',
                desc: 'this the description',
                apkLink: 'fdfdfd',
                link: 'fdfdfd',
              ),
            ),
            SizedBox(
              width: 240,
              child: ProjectItem(
                imgUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNubLmqdOK9pZWU-2IiD20cuSIdUUDi9-NvQ&s',
                name: 'hello',
                desc: 'this the description',
                apkLink: 'fdfdfd',
                link: 'fdfdfd',
              ),
            ),
            SizedBox(
              width: 240,
              child: ProjectItem(
                imgUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNubLmqdOK9pZWU-2IiD20cuSIdUUDi9-NvQ&s',
                name: 'hello',
                desc: 'this the description',
                apkLink: 'fdfdfd',
                link: 'fdfdfd',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
