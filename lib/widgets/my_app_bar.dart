import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/constants/app_menu_list.dart';
import 'package:my_portfolio/constants/app_size.dart';
import 'package:my_portfolio/constants/app_text_style.dart';
import 'package:my_portfolio/provider/providers.dart';
import 'package:my_portfolio/widgets/app_bar_drawer_icon.dart';
import 'package:my_portfolio/widgets/drawer_menu_widget.dart';
import 'package:my_portfolio/widgets/theme_toggle_widget.dart';
import 'package:provider/provider.dart';

class Myappbar extends StatefulWidget {
  const Myappbar({super.key});

  @override
  State<Myappbar> createState() => _MyappbarState();
}

class _MyappbarState extends State<Myappbar> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PortfolioProvider>(builder: (context, provider, child) {
      return Column(
        children: [
          AnimatedContainer(
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
          ),
          if (!context.isDesktop) const DrawerMenu(),
        ],
      );
    });
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Portfolio",
      style: context.textStyle.titleLgBold,
    );
  }
}

class GetTouchText extends StatelessWidget {
  const GetTouchText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Get in Touch",
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
              isSelected: GoRouterState.of(context).fullPath == e.path,
              onTap: () {
                context.go(e.path);
              },
            ),
          )
          .toList(),
    );
  }
}

class SmallMenu extends StatelessWidget {
  const SmallMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: AppMenuList.getItems(context)
          .map(
            (e) => LargeAppBarMenuItems(
              text: e.title,
              isSelected: GoRouterState.of(context).fullPath == e.path,
              onTap: () {
                context.go(e.path);
              },
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
          style: SmallTextStyles().bodyLgMedium.copyWith(
                color: isSelected
                    ? context.colorScheme.onBackground
                    : context.colorScheme.onSurfaceVariant,
              ),
        ),
      ),
    );
  }
}
