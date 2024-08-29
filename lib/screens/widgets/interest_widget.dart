import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class InterestWidget extends StatelessWidget {
  final Size size;
  final List<String> list;
  const InterestWidget({
    super.key,
    required this.list,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (list.length / 4) * 150,
      width: size.width,
      child: Center(
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 260.0,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 2,
          ),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Bounce(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.transparent.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.studio, width: 1.2)),
                child: Center(
                  child: Text(
                    list[index],
                    style: TextStyle(
                        color: Colors.white, fontSize: size.width * 0.02),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
