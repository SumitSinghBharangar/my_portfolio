import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class Styles{
  static const BoxDecoration gradientDecoration = BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.ebony,
              AppColors.studio,
            ],
          ),
        );
}