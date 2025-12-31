import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_extensions.dart';
import 'package:my_portfolio/routes/app_route.dart';

class AppMenuList {
  static List<AppMenu> getItems(BuildContext context) {
    return [
      AppMenu(
        title: context.text.home,
        path: Routes.home,
      ),
      AppMenu(
        title: context.text.about,
        path: Routes.about,
      ),
      AppMenu(
        title: context.text.skills,
        path: Routes.skills,
      ),
      AppMenu(
        title: context.text.projects,
        path: Routes.projects,
      ),
    ];
  }
}

class AppMenu {
  final String title;
  final String path;

  AppMenu({
    required this.title,
    required this.path,
  });
}
