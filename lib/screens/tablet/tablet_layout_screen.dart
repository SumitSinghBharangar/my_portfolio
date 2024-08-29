import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/styles.dart';
import '../navbar_screens.dart/about_screen.dart';
import '../navbar_screens.dart/home_screen.dart';
import '../widgets/navbar_widget.dart';

class TabletLayoutScreen extends StatefulWidget {
  const TabletLayoutScreen({super.key});

  @override
  State<TabletLayoutScreen> createState() => _TabletLayoutScreenState();
}

class _TabletLayoutScreenState extends State<TabletLayoutScreen> {
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final List<Widget> screens = [
      HomeScreen(size: size),
      AboutScreen(size: size)
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
