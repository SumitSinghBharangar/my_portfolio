import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_text_style.dart';

class Myappbar extends StatelessWidget {
  const Myappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        AppLogo(),
        Spacer(),
        AppMenus(),
        Spacer(),
        LangaugeToggel(),
        ThemeToggle(),
      ],
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Text(
      "Portfolio",
      style: width > 600
          ? LargeTextStyle().titleLgBold
          : SmallTextStyles().titleLgBold,
    );
  }
}

class AppMenus extends StatelessWidget {
  const AppMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text("Home"),
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
