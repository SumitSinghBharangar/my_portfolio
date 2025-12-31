import 'package:go_router/go_router.dart';
import 'package:my_portfolio/features/about/presentation/about_page.dart';

import 'package:my_portfolio/features/home/presentation/home_screen.dart';
import 'package:my_portfolio/features/projects/presentation/project_page.dart';
import 'package:my_portfolio/features/skills/presentation/skills_page.dart';

class Routes {
  static const String home = '/';
  static const String about = '/about';
  static const String skills = '/skills';
  static const String projects = '/projects';
  static const String contact = '/contact';
}

class AppRoutes {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.home,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: HomeScreen(),
        ),
      ),
      GoRoute(
        path: Routes.about,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: AboutPage(),
        ),
      ),
      GoRoute(
        path: Routes.skills,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: SkillsPage(),
        ),
      ),
      GoRoute(
        path: Routes.projects,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ProjectPage(),
        ),
      ),
    ],
  );
}
