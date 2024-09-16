import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../constants/navitems.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({
    super.key,
    required this.onNavItemTap,
  });
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.capeCod,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
          ),
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
              onTap: () {
                onNavItemTap(i);
              },
            ),
        ],
      ),
    );
  }
}
