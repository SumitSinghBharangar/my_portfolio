import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/constants/app_menu_list.dart';
import 'package:my_portfolio/constants/app_size.dart';
import 'package:my_portfolio/constants/app_text_style.dart';
import 'package:my_portfolio/l10n/app_localizations.dart';
import 'package:my_portfolio/l10n/app_localizations_en.dart';
import 'package:my_portfolio/provider/providers.dart';
import 'package:my_portfolio/widgets/app_bar_drawer_icon.dart';
import 'package:provider/provider.dart';

class Myappbar extends StatelessWidget {
  const Myappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PortfolioProvider>(builder: (context, provider, child) {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
        height: context.insets.appBarHeight,
        color: context.theme.appBarTheme.backgroundColor,
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: Insets.maxwidth,
          ),
          child: Row(
            children: [
              AppLogo(),
              Spacer(),
              if (context.isDesktop) LargeMenu(),
              Spacer(),
              IconButton(
                  onPressed: () {
                    provider.changeLanguage();
                    log("language changed");
                    
                  },
                  icon: Icon(
                    Iconsax.translate,
                    color: context.colorScheme.onBackground,
                  )),
              ThemeToggle(),
              if (!context.isDesktop) const AppBarDrawerIcon()
            ],
          ),
        ),
      );
    });
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    log(width.toString());
    return Text(
      "Portfolio",
      style: context.textStyle.titleLgBold,
    );
  }
}

class LargeMenu extends StatelessWidget {
  const LargeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: AppMenuList.getItems(context)
          .map(
            (e) => LargeAppBarMenuItems(
              text: e.title,
              isSelected: true,
              onTap: () {},
            ),
          )
          .toList(),
    );
  }
}

class LargeAppBarMenuItems extends StatelessWidget {
  const LargeAppBarMenuItems({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Insets.med,
          vertical: Insets.xs,
        ),
        child: Text(
          text,
          style: SmallTextStyles().bodyLgMedium,
        ),
      ),
    );
  }
}

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: false,
      onChanged: (value) {},
    );
  }
}
