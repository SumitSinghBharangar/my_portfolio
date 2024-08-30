import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

import 'package:my_portfolio/screens/navbar_screens.dart/about_screen.dart';
import 'package:my_portfolio/screens/navbar_screens.dart/home_screen.dart';
import 'package:my_portfolio/screens/navbar_screens.dart/skill_screen.dart';
import 'package:my_portfolio/screens/widgets/navbar_widget.dart';

class DesktopLayoutScreen extends StatefulWidget {
  const DesktopLayoutScreen({
    super.key,
  });

  @override
  State<DesktopLayoutScreen> createState() => _DesktopLayoutScreenState();
}

class _DesktopLayoutScreenState extends State<DesktopLayoutScreen> {
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final List<Widget> screens = [
      HomeScreen(size: size),
      AboutScreen(size: size),
      SkillScreen(size: size),
      SkillScreen(size: size),
      SkillScreen(size: size),
    ];
    return Scaffold(
        appBar: AppBar(
          title: CupertinoButton(
            padding: const EdgeInsets.symmetric(vertical: 8),
            onPressed: () {},
            child: Text(
              "Sumit singh </>",
              style:
                  TextStyle(fontSize: size.width * 0.022, color: Colors.white),
            ),
          ),
          backgroundColor: AppColors.revolver,
          actions: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NavBarWidget(
                  size: size / 2,
                  list: ["Home", "About", "Skills", "Projects", "Contact  "],
                  currentIndex: _selected,
                  onItemTap: (index) {
                    setState(() {
                      _selected = index;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
        body: screens[_selected]);
  }
}
