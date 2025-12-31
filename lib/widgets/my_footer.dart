import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/widgets/my_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.appBarTheme.backgroundColor,
      padding: EdgeInsets.symmetric(
        horizontal: context.insets.padding,
        vertical: context.insets.padding / 2,
      ),
      child: Column(
        children: [
          context.isDesktop ? const _DesktopFooter() : const _PhoneFooter(),
          const Divider(
            height: 24,
          ),
          const FooterDescText(),
        ],
      ),
    );
  }
}

class FooterDescText extends StatelessWidget {
  const FooterDescText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.insets.padding,
      ),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: context.textStyle.bodyMdMedium.copyWith(
            color: context.colorScheme.onBackground,
          ),
          children: [
            const TextSpan(text: 'Want to chat? Just shoot me a dm '),
            TextSpan(
              text: 'with a direct question on twitter',
              style: context.textStyle.bodyMdMedium.copyWith(
                color: Colors.blue,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  final Uri uri = Uri.parse("https://x.com/sumit_bharangar");

                  if (!await launchUrl(
                    uri,
                    mode: LaunchMode.externalApplication,
                  )) {
                    throw 'Could not launch $uri';
                  }
                },
            ),
            const TextSpan(
              text:
                  ' and I\'ll respond whenever I can. I will ignore all soliciting.',
            ),
          ],
        ),
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
        GetTouchText(),
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
        _FooterLinkItems(
          onPressed: () async {
            final Uri uri = Uri.parse("https://github.com/SumitSinghBharangar");

            if (!await launchUrl(
              uri,
              mode: LaunchMode.externalApplication,
            )) {
              throw 'Could not launch $uri';
            }
          },
          icon: "assets/images/github.svg",
        ),
        _FooterLinkItems(
          onPressed: () async {
            final Uri uri =
                Uri.parse("www.linkedin.com/in/sumitsinghbharangar");

            if (!await launchUrl(
              uri,
              mode: LaunchMode.externalApplication,
            )) {
              throw 'Could not launch $uri';
            }
          },
          icon: "assets/images/linkedin.svg",
        ),
        _FooterLinkItems(
          onPressed: () async {
            final Uri uri = Uri.parse("https://x.com/sumit_bharangar");

            if (!await launchUrl(
              uri,
              mode: LaunchMode.externalApplication,
            )) {
              throw 'Could not launch $uri';
            }
          },
          icon: "assets/images/twitter.svg",
        ),
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
        height: 20,
        width: 20,
        fit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(context.colorScheme.onBackground, BlendMode.srcIn),
      ),
    );
  }
}
