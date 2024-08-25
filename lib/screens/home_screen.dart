import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/large_screen/desktop_layout_screen.dart';
import 'package:my_portfolio/screens/mobile/mobile_layout_screen.dart';
import 'package:my_portfolio/screens/tablet/tablet_layout_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.minWidth > 950){
        return const DesktopLayoutScreen();
      }
      else if(constraints.minWidth > 600){
        return const TabletLayoutScreen();
      }
      else{
        return const MobileLayoutScreen();
      }
    });
  }
}