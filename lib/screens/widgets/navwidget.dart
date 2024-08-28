import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {
  final Size size;
  final int currentIndex;
  final List<Widget> list;
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
      height: size.height*0.12,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: SafeArea(

        child: LayoutBuilder(builder: (context,constraints){
          double linesize = constraints.maxWidth / list.length;
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: list.map((e){
                  int index = list.indexOf(e);
                  bool selected = currentIndex == index;
                  return SizedBox(
                    list.indexOf(e) == currentIndex ? linesize+20: linesize -5,

                  )

                }).toList(),
              )
            ],
          );
        })
      ),
    );
  }
}
