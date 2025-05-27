import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/styles.dart';

import 'package:my_portfolio/lib2/constants/size.dart';
import 'package:my_portfolio/lib2/widgets/contact_section.dart';
import 'package:my_portfolio/lib2/widgets/desktop_about_widget.dart';
import 'package:my_portfolio/lib2/widgets/desktop_header.dart';
import 'package:my_portfolio/lib2/widgets/desktop_home_widget.dart';
import 'package:my_portfolio/lib2/widgets/drawer_mobile.dart';
import 'package:my_portfolio/lib2/widgets/footer.dart';
import 'package:my_portfolio/lib2/widgets/header_mobile.dart';
import 'package:my_portfolio/lib2/widgets/mobile_about_widget.dart';
import 'package:my_portfolio/lib2/widgets/mobile_home_widget.dart';
import 'package:my_portfolio/lib2/widgets/project_widget.dart';
import 'package:my_portfolio/lib2/widgets/skills_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navBarKeys = List.generate(5, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldkey,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : DrawerMobile(
                  onNavItemTap: (int navIndex) {
                    scaffoldkey.currentState?.closeEndDrawer();
                    scrollToSection(navIndex);
                  },
                ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: Styles.gradientDecoration,
            child: SingleChildScrollView(
              controller: scrollController,
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    key: navBarKeys.first,
                  ),
                  // main
                  if (constraints.maxWidth >= kMinDesktopWidth)
                    DesktopHeader(
                      size: size,
                      onNavMenuTap: (int navIndex) {
                        scrollToSection(navIndex);
                      },
                    )
                  else
                    HeaderMobile(
                      size: size,
                      onLogoTap: () {},
                      onMenuTap: () {
                        scaffoldkey.currentState?.openEndDrawer();
                      },
                    ),

                  if (constraints.maxWidth >= kMinDesktopWidth)
                    DesktopHomeWidget(size: size)
                  else
                    MobileHomePage(size: size),

                  SizedBox(
                    height: size.height * 0.05,
                  ),

                  Padding(
                    key: navBarKeys[1],
                    padding: EdgeInsets.only(left: size.width * 0.06),
                    child: const Text(
                      "About. . .",
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                  ),

                  // about

                  if (constraints.maxWidth >= 600)
                    DesktopAboutWidget(size: size)
                  else
                    MobileAboutWidget(size: size * 2),

                  // skills
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    key: navBarKeys[2],
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.06),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Skills...",
                          style: TextStyle(fontSize: 26, color: Colors.white),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SkillsWidget(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  // projects

                  Padding(
                    key: navBarKeys[3],
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.06),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Projects...",
                          style: TextStyle(fontSize: 26, color: Colors.white),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ProjectWidget(),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: size.height * 0.2,
                  ),

                  //  contact

                  ContactSection(
                    size: size,
                    key: navBarKeys[4],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  // footer

                  const Footer(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void scrollToSection(int navIndex) {
    final key = navBarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
