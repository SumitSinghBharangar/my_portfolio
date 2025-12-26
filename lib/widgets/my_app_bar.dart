import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/constants/app_size.dart';
import 'package:my_portfolio/constants/app_text_style.dart';
import 'package:my_portfolio/l10n/app_localizations.dart';
import 'package:my_portfolio/l10n/app_localizations_en.dart';
import 'package:my_portfolio/widgets/app_bar_drawer_icon.dart';

class Myappbar extends StatelessWidget {
  const Myappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      height: context.insets.appBarHeight,
      color: Colors.red,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: Insets.maxwidth,
        ),
        child: Row(
          children: [
            AppLogo(),
            Spacer(),
            if (context.isDesktop) AppMenus(),
            Spacer(),
            LangaugeToggel(),
            ThemeToggle(),
            if (!context.isDesktop) const AppBarDrawerIcon()
          ],
        ),
      ),
    );
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

class AppMenus extends StatelessWidget {
  const AppMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(context.text.home),
        Text("About"),
        Text("Skills"),
        Text("projects"),
        Text("contact"),
      ],
    );
  }
}

class LangaugeToggel extends StatelessWidget {
  const LangaugeToggel({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          const PopupMenuItem(
            child: Text("Hindi"),
          ),
          const PopupMenuItem(
            child: Text("English"),
          ),
        ];
      },
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
