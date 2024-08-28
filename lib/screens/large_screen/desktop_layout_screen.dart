import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:my_portfolio/constants/styles.dart';
import 'package:my_portfolio/screens/widgets/avatar_img_widget.dart';

import '../widgets/header_text_widget.dart';

class DesktopLayoutScreen extends StatefulWidget {
  final List<Widget> list;
  const DesktopLayoutScreen({
    super.key,
    required this.list,
  });

  @override
  State<DesktopLayoutScreen> createState() => _DesktopLayoutScreenState();
}

class _DesktopLayoutScreenState extends State<DesktopLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: widget.list.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Iconsax.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Iconsax.personalcard),
              text: "About",
            ),
            // Tab(
            //   icon: Icon(Iconsax.profile),
            //   text: "Skills",
            // ),
            // Tab(
            //   icon: Icon(Iconsax.tag),
            //   text: "Projects",
            // ),
            // Tab(
            //   icon: Icon(Iconsax.info_circle),
            //   text: "Contact",
            // ),
          ]),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: Styles.gradientDecoration,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: size.height * 0,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  HeaderTextWidget(
                                    size: size,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  //
                                ],
                              ),
                              Social_Large(size: size)
                            ],
                          ),
                          Expanded(
                              child: Container(
                            height: size.height * 0.75,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // RotatingImageContainer(),
                                AvatarImgWidget()
                              ],
                            ),
                          ))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
