import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_size.dart';
import 'package:my_portfolio/constants/app_text_style.dart';
import 'package:my_portfolio/l10n/app_localizations.dart';

enum FormFactorType {
  mobile,
  tablet,
  desktop,
}

extension StyledContext on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);
  double get width => mq.size.width;
  double get height => mq.size.height;

  ThemeData get theme => Theme.of(this);

  FormFactorType get formFactor {
    if (width < 600) {
      return FormFactorType.mobile;
    } else if (width < 900) {
      return FormFactorType.tablet;
    } else {
      return FormFactorType.desktop;
    }
  }

  bool get isMobile => formFactor == FormFactorType.mobile;
  bool get isTablet => formFactor == FormFactorType.tablet;
  bool get isDesktop => formFactor == FormFactorType.desktop;

  AppTextStyle get textStyle {
    switch (formFactor) {
      case FormFactorType.mobile:
      case FormFactorType.tablet:
        return SmallTextStyles();
      case FormFactorType.desktop:
        return LargeTextStyle();
    }
  }

  AppInsets get insets {
    switch (formFactor) {
      case FormFactorType.mobile:
        return SmallInsets();
      case FormFactorType.tablet:
      case FormFactorType.desktop:
        return LargeInsets();
    }
  }

  ColorScheme get colorScheme => theme.colorScheme;

  AppLocalizations get text =>
      AppLocalizations.of(this) ??
      lookupAppLocalizations(
        const Locale('en'),
      );
}
