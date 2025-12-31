import 'package:flutter/material.dart';

import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/widgets/seo_text.dart';

class OutlineButton extends StatelessWidget {
  final String title;
  final VoidCallback ontap;
  const OutlineButton({
    super.key,
    required this.title,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SEOText(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: context.colorScheme.onBackground),
        ),
      ),
    );
  }
}
