import 'package:flutter/material.dart';
import 'package:my_portfolio/provider/providers.dart';
import 'package:provider/provider.dart';

class AppBarDrawerIcon extends StatefulWidget {
  const AppBarDrawerIcon({super.key});

  @override
  State<AppBarDrawerIcon> createState() => _AppBarDrawerIconState();
}

class _AppBarDrawerIconState extends State<AppBarDrawerIcon>
    with SingleTickerProviderStateMixin {
  late final AnimationController _iconController;

  @override
  void initState() {
    super.initState();
    _iconController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
  }

  @override
  void dispose() {
    _iconController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PortfolioProvider>(
      builder: (context, provider, _) {
        provider.isDrawerOpen
            ? _iconController.forward()
            : _iconController.reverse();

        return IconButton(
          onPressed: provider.toggleDrawer,
          icon: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: _iconController,
          ),
        );
      },
    );
  }
}
