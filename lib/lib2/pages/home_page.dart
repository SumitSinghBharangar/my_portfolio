import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/styles.dart';
import 'package:my_portfolio/lib2/constants/navitems.dart';
import 'package:my_portfolio/lib2/widgets/desktop_header.dart';
import 'package:my_portfolio/lib2/widgets/header_mobile.dart';
import 'package:my_portfolio/lib2/widgets/site_logo.dart';

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
    return Scaffold(
        key: scaffoldkey,
        endDrawer: Drawer(
          backgroundColor: AppColors.capeCod,
          child: ListView(
            children: [
              for (int i = 0; i < navIcons.length; i++)
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  leading: Icon(
                    navIcons[i],
                    color: Colors.white,
                  ),
                  title: Text(
                    navItems[i],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
            ],
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: Styles.gradientDecoration,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // main

              // DesktopHeader(size: size),
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldkey.currentState?.openEndDrawer();
                },
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
