import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {
  final Size size;
  final int currentIndex;
  final List<String> list;
  final void Function(int index) onItemTap;
  const NavBarWidget({
    super.key,
    required this.size,
    required this.list,
    required this.currentIndex,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.24,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: SafeArea(child: LayoutBuilder(builder: (context, constraints) {
        double linesize = constraints.maxWidth / list.length;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: list.map((e) {
                int index = list.indexOf(e);
                bool selected = currentIndex == index;
                return SizedBox(
                  width: linesize,
                  child: CupertinoButton(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        e,
                        style: TextStyle(
                            fontSize: size.width * 0.04,
                            color:
                                selected ? Colors.yellowAccent : Colors.white,
                            decoration: selected
                                ? TextDecoration.underline
                                : TextDecoration.none,
                            fontWeight:
                                selected ? FontWeight.bold : FontWeight.normal,
                            fontFamily: "Poppins"),
                      ),
                      onPressed: selected
                          ? null
                          : () {
                              onItemTap(index);
                            }),
                );
              }).toList(),
            )
          ],
        );
      })),
    );
  }
}
