import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/widgets/seo_text.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

class ProjectItem extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String desc;
  final String apkLink;
  final String link;
  const ProjectItem({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.desc,
    required this.apkLink,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.transparent.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.studio, width: 1.3),
      ),
      child: AspectRatio(
        aspectRatio: 0.8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.5,
              child: InkWell(
                onTap: () {},
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      imgUrl,
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Gap(5),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SEOText(
                name,
                style: context.textStyle.bodyLgBold.copyWith(
                  color: context.colorScheme.onBackground,
                ),
                textRendererStyle: TextRendererStyle.header4,
              ),
            ),
            const Gap(8),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SEOText(
                  desc,
                  style: context.textStyle.bodyMdMedium.copyWith(
                    color: context.colorScheme.onSurface,
                  ),
                  maxlines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Gap(10),
                Bounce(
                  onTap: () {},
                  child: const Chip(
                    label: Text("Source Code"),
                  ),
                ),
                const Gap(10),
                Bounce(
                  onTap: () {},
                  child: const Chip(
                    label: Text("Get APK"),
                  ),
                ),
              ],
            ),
            const Gap(10),
          ],
        ),
      ),
    );
  }
}
