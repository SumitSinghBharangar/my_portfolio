import 'package:flutter/material.dart';
import 'package:layout_pro/responsive_layout.dart';

class BoxWidget extends StatelessWidget {
  final List<String> list;
  final Size size;

  const BoxWidget({super.key, required this.list, required this.size});
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileCrossAxisCount: 3,
        mobileRatio: 1.1,
        largeMobileRatio: 3,
        largeMobileCrossAxisCount: 3,
        tabletCrossAxisCount: 5,
        largeTabletCrossAxisCount: 10,
        largeTabletRatio: 1.1,
        tabletRatio: 1.1,
        desktopScreenCrossAxisCount: 15,
        desktopRatio: 1.1,
        builder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              height: 90,
              width: 90,
              margin: EdgeInsets.only(top: 20, left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.transparent.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(8, 6),
                      blurRadius: 12),
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(-8, -6),
                      blurRadius: 12),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.folder_rounded,
                    size: 40,
                    color: Colors.orangeAccent,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    list[index],
                    style: TextStyle(
                        fontSize: size.width * 0.013, color: Colors.white),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: list.length);
  }
}
