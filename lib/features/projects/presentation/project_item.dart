import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/widgets/seo_text.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Bounce(
      child: Container(
        margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
        decoration: BoxDecoration(
          color: Colors.transparent.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.studio, width: 1.3),
        ),
        child: AspectRatio(
          aspectRatio: 0.7,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/Shot-01.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Gap(24),
              SEOText(
                "Random text",
                style: context.textStyle.bodyLgBold.copyWith(
                  color: context.colorScheme.onBackground,
                ),
                textRendererStyle: TextRendererStyle.header4,
              ),
              Gap(8),
              Expanded(
                child: SEOText(
                  "some discription text for testing ",
                  style: context.textStyle.bodyMdMedium.copyWith(
                    color: context.colorScheme.onSurface,
                  ),
                  maxlines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
