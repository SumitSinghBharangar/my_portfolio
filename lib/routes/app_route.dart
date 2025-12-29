import 'package:go_router/go_router.dart';
import 'package:my_portfolio/lib2/pages/home_page.dart';

class Routes {
  static const String home = '/';
  static const String about = '/about';
  static const String skills = '/skills';
  static const String projects = '/projects ';
  static const String contact = '/contact';
}

class AppRoutes {
  static final router = GoRouter(routes: [
    GoRoute(path: Routes.home, builder: (context, state) => const HomePage()),
    GoRoute(path: Routes.about),
    GoRoute(path: Routes.skills),
    GoRoute(path: Routes.projects),
    GoRoute(path: Routes.contact),
  ]);
}
