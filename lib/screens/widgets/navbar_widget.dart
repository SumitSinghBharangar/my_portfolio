import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/about_screen/about_screen.dart';
import 'package:my_portfolio/screens/home_screen/home_screen.dart';
import 'package:my_portfolio/utils/utils.dart';

class NavbarWidgetLarge extends StatelessWidget {
  final Size size;
  const NavbarWidgetLarge({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.12,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.transparent.withOpacity(0.3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          NavWidget1(size: size),
          Navwidget2(size: size),
        ],
      ),
    );
  }
}

class NavWidget1 extends StatelessWidget {
  final Size size;

  const NavWidget1({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        MaterialButton(
          onPressed: () {},
          child: Text(
            "Sumit Singh </>",
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.02,
            ),
          ),
        ),
      ],
    );
  }
}

class Navwidget2 extends StatelessWidget {
  final Size size;
  const Navwidget2({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        MaterialButton(
          onPressed: () {
            Utils.go(context: context, screen: const HomeScreen());
          },
          child: Text(
            "Home",
            style: TextStyle(color: Colors.white, fontSize: size.width * 0.02),
          ),
        ),
        MaterialButton(
          onPressed: () {
            Utils.go(context: context, screen: const AboutScreen());
          },
          child: Text(
            "About",
            style: TextStyle(color: Colors.white, fontSize: size.width * 0.02),
          ),
        ),
        MaterialButton(
          onPressed: () {},
          child: Text(
            "Skills",
            style: TextStyle(color: Colors.white, fontSize: size.width * 0.02),
          ),
        ),
        MaterialButton(
          onPressed: () {},
          child: Text(
            "Projects",
            style: TextStyle(color: Colors.white, fontSize: size.width * 0.02),
          ),
        ),
        MaterialButton(
          onPressed: () {},
          child: Text(
            "Contact",
            style: TextStyle(color: Colors.white, fontSize: size.width * 0.02),
          ),
        ),
      ],
    );
  }
}
