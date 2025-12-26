import 'package:flutter/material.dart';

class Insets {
  static const double maxwidth = 1200;
}

abstract class AppInsets {
  double get padding;
  double get appBarHeight;
}

class LargeInsets extends AppInsets {
  @override
  double get padding => 80;

  @override
  double get appBarHeight => 64;
}

class SmallInsets extends AppInsets {
  @override
  double get padding => 16;

  @override
  double get appBarHeight => 56;
}
