import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/widgets/my_app_bar.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.appBarTheme.backgroundColor,
      padding: EdgeInsets.all(context.insets.padding),
      child: Column(
        children: [
          context.isDesktop ? _DesktopFooter() : _PhoneFooter(),
          const Divider(
            height: 24,
          ),
        ],
      ),
    );
  }
}

class _PhoneFooter extends StatelessWidget {
  const _PhoneFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppLogo(),
        _FooterLinks(),
      ],
    );
  }
}

class _DesktopFooter extends StatelessWidget {
  const _DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [GetTouchText(), Spacer(), _FooterLinks()],
    );
  }
}

class _FooterLinks extends StatelessWidget {
  const _FooterLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _FooterLinkItems(onPressed: () {}, icon: "assets/images/github.svg"),
        _FooterLinkItems(onPressed: () {}, icon: "assets/images/github.svg"),
        _FooterLinkItems(onPressed: () {}, icon: "assets/images/github.svg"),
      ],
    );
  }
}

class _FooterLinkItems extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon;
  const _FooterLinkItems({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        icon,
        colorFilter:
            ColorFilter.mode(context.colorScheme.onBackground, BlendMode.srcIn),
      ),
    );
  }
}
