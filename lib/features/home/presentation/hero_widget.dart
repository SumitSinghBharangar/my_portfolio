import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/constants/app_size.dart';
import 'package:my_portfolio/features/home/presentation/hero_texts.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Flutter'),
        context.isDesktop || context.isTablet ? _LargeHero() : _SmallHero(),
      ],
    );
  }
}

class _SmallHero extends StatelessWidget {
  const _SmallHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 140,
          ),
        ),
         Gap(Insets.xl),
         const HeroTexts(),
         Gap(Insets.xxxl),
         SmallHeroButtons(),
      ],
    );
  }
}
