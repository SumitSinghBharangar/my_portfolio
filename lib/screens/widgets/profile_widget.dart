import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class ProfileWidget extends StatelessWidget {
  final Size size;
  const ProfileWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.width * 0.24,
      width: size.width * 0.24,
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/img.jpg"),
          ),
          border: Border.all(color: AppColors.paleSlate, width: 1.2),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
