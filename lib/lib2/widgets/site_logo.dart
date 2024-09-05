import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  final Size size;
  final VoidCallback? onTap;
  const SiteLogo({
    super.key,
    this.onTap,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: CupertinoButton(
        onPressed: () {},
        child: Text(
          "Sumit Singh </>",
          style: TextStyle(color: Colors.yellow,fontSize: size.width * 0.02),
        ),
      ),
    );
  }
}
