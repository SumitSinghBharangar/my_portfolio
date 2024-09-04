import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  final VoidCallback? onTap;
  const SiteLogo({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: CupertinoButton(
        onPressed: () {},
        child: Text(
          "Sumit Singh </>",
          style: TextStyle(color: Colors.yellow),
        ),
      ),
    );
  }
}
