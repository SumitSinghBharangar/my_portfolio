import 'package:flutter/widgets.dart';

class Insets {
  static double get xs => 4;
  static double get lg => 16;
  static double get xl => 24;
  static double get xxl => 32;
  static double get xxxl => 80;

  static double get med => 12;
  static const double maxwidth = 1200;
}

abstract class AppInsets {
  double get padding;
  double get appBarHeight;
  double get cardPadding;
}

class LargeInsets extends AppInsets {
  @override
  double get padding => 80;

  @override
  double get appBarHeight => 64;

  @override
  double get cardPadding => Insets.xl;
}

class SmallInsets extends AppInsets {
  @override
  double get padding => 16;

  @override
  double get appBarHeight => 56;

  @override
  double get cardPadding => Insets.lg;
}
