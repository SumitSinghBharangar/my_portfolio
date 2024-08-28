import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:my_portfolio/constants/styles.dart';
import 'package:my_portfolio/screens/navbar_screens.dart/about_screen.dart';
import 'package:my_portfolio/screens/navbar_screens.dart/home_screen.dart';
import 'package:my_portfolio/screens/widgets/navbar_widget.dart';

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
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final List<Widget> screens = [
      HomeScreen(size: size),
      AboutScreen(size: size)
    ];
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: size.height * 0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: size.height * 0.08,
                      child: Center(
                        child: CupertinoButton(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          onPressed: () {},
                          child: Text(
                            "Sumit singh </>",
                            style: TextStyle(
                                fontSize: size.width * 0.022,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    NavBarWidget(
                      size: size / 2,
                      list: [
                        "Home",
                        "About",
                        "Skills",
                        "Projects",
                        "Contact  "
                      ],
                      currentIndex: _selected,
                      onItemTap: (index) {
                        setState(() {
                          _selected = index;
                        });
                      },
                    ),
                  ],
                ),
                screens[_selected]
              ],
            ),
          ),
        ),
      ),
    );
  }
}
