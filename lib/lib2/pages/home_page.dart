import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/styles.dart';
import 'package:my_portfolio/lib2/constants/navitems.dart';
import 'package:my_portfolio/lib2/widgets/desktop_header.dart';
import 'package:my_portfolio/lib2/widgets/site_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: Styles.gradientDecoration,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // main

          // DesktopHeader(size: size),

          Container(
            height: 60,
            margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
            decoration: BoxDecoration(
              color: Colors.transparent.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: AppColors.paleSlate,
                width: 1.4,
              ),
            ),
            child: Row(
              children: [
                SiteLogo(
                  onTap: () {},
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

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
  }
}
