import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/styles.dart';
import 'package:my_portfolio/lib2/constants/size.dart';
import 'package:my_portfolio/lib2/widgets/desktop_header.dart';
import 'package:my_portfolio/lib2/widgets/desktop_home_widget.dart';

import 'package:my_portfolio/lib2/widgets/drawer_mobile.dart';
import 'package:my_portfolio/lib2/widgets/header_mobile.dart';
import 'package:my_portfolio/lib2/widgets/mobile_home_widget.dart';
import 'package:my_portfolio/screens/widgets/avatar_img_widget.dart';
import 'package:my_portfolio/screens/widgets/download_cv_widget.dart';
import 'package:my_portfolio/screens/widgets/header_text_widget.dart';
import 'package:my_portfolio/screens/widgets/social_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldkey,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : const DrawerMobile(),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: Styles.gradientDecoration,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                // main
                if (constraints.maxWidth >= kMinDesktopWidth)
                  DesktopHeader(size: size)
                else
                  HeaderMobile(
                    size: size,
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldkey.currentState?.openEndDrawer();
                    },
                  ),
                // SizedBox(
                //   height: 30,
                // ),
                if (constraints.maxWidth >= kMinDesktopWidth)
                  DesktopHomeWidget(size: size)
                else
                  MobileHomePage(size: size),

                // if (constraints.maxWidth >= kMinDesktopWidth)
                //   DesktopHomeWidget(size: size)
                // else
                //   MobileHomeWidget(size: size * 2),

                // Container(
                //   child: Row(
                //     children: [
                //       Text(
                //         "Hi, \nI'm Sumit Singh \nA Flutter Developer",
                //         style: TextStyle(color: Colors.white),
                //       )
                //     ],
                //   ),
                // ),

                // about
                Container(
                  height: 500,
                  width: double.maxFinite,
                  decoration: Styles.gradientDecoration,
                ),
                //  skill
                Container(
                  height: 500,
                  width: double.maxFinite,
                  decoration: Styles.gradientDecoration,
                ),
                // projects
                Container(
                  height: 500,
                  width: double.maxFinite,
                  decoration: Styles.gradientDecoration,
                ),
                //  contact
                Container(
                  height: 500,
                  width: double.maxFinite,
                  decoration: Styles.gradientDecoration,
                ),
              ],
            ),
          ));
    });
  }
}
