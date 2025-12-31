import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/constants/app_size.dart';
import 'package:my_portfolio/features/home/presentation/hero_images.dart';
import 'package:my_portfolio/features/home/presentation/hero_texts.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        context.isDesktopOrTablet ? const _LargeHero() : const _SmallHero(),
      ],
    );
  }
}

class _SmallHero extends StatelessWidget {
  const _SmallHero();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 140,
            maxHeight: 200,
          ),
          child: const HeroImages(),
        ),
        Gap(Insets.xl),
        const HeroTexts(),
        Gap(Insets.xxxl),
      ],
    );
  }
}

class _LargeHero extends StatelessWidget {
  const _LargeHero();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: HeroImages()),
        Gap(Insets.xxxl),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                const HeroTexts(),
                Gap(Insets.xxxl),
              ],
            ))
      ],
    );
  }
}
