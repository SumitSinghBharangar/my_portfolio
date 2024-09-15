import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

import 'package:my_portfolio/constants/styles.dart';

import 'package:my_portfolio/lib2/constants/size.dart';
import 'package:my_portfolio/lib2/widgets/custom_textfield.dart';
import 'package:my_portfolio/lib2/widgets/desktop_about_widget.dart';
import 'package:my_portfolio/lib2/widgets/desktop_header.dart';
import 'package:my_portfolio/lib2/widgets/desktop_home_widget.dart';

import 'package:my_portfolio/lib2/widgets/drawer_mobile.dart';
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
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();

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

                if (constraints.maxWidth >= kMinDesktopWidth)
                  DesktopHomeWidget(size: size)
                else
                  MobileHomePage(size: size),

                SizedBox(
                  height: size.height * 0.05,
                ),

                Padding(
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
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
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
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
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

                //  contact

                SizedBox(
                  height: size.height * 0.2,
                ),

                Container(
                  width: double.maxFinite,
                  decoration: Styles.gradientDecoration,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.06),
                    child: Column(
                      children: [
                        const Text(
                          "Get in touch...",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth: 700,
                          ),
                          child: Row(
                            children: [
                              Flexible(
                                child: CustomTextfield(
                                    controller: _name, hintText: "Your name"),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Flexible(
                                child: CustomTextfield(
                                    controller: _email, hintText: "Your email"),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 700),
                          child: const CustomTextfield(
                            hintText: "Your Message",
                            maxLine: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 700,
                          ),
                          child: CupertinoButton(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:
                                      const Color.fromARGB(255, 223, 214, 127),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Get In touch",
                                    style: TextStyle(
                                        fontSize: 23, color: AppColors.studio),
                                  ),
                                ),
                              ),
                              onPressed: () {}),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ));
    });
  }
}
