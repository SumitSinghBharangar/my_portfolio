import 'package:flutter/material.dart';
import 'package:my_portfolio/provider/providers.dart';
import 'package:provider/provider.dart';

class ThemeToggle extends StatefulWidget {
  const ThemeToggle({super.key});

  @override
  State<ThemeToggle> createState() => _ThemeToggleState();
}

class _ThemeToggleState extends State<ThemeToggle> {
  @override
  Widget build(BuildContext context) {
    var w = context.watch<PortfolioProvider>();
    var isLightMode = w.theme == ThemeMode.light;
    return Consumer<PortfolioProvider>(builder: (context, provider, child) {
      return IconButton(
        onPressed: () {
          provider.changeTheme();
          print(w.theme);
          print(ThemeMode.dark.toString());
        },
        icon: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(scale: animation, child: child);
          },
          child: Icon(
            // Key is essential for AnimatedSwitcher to work correctly
            !isLightMode ? Icons.wb_sunny_rounded : Icons.nightlight_round,
            color: !isLightMode ? Colors.yellow : Colors.orange,
            key: ValueKey<bool>(isLightMode),
          ),
        ),
      );
    });
  }
}
