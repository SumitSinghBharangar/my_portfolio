import 'package:flutter/material.dart';

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
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.07),
      child: SizedBox(
        width: size.width * 0.8,
        height: size.height * 0.5,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 10.0, // Spacing between columns
            mainAxisSpacing: 10.0, // Spacing between rows
            childAspectRatio: 1.0, // Aspect ratio of each item
          ),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Card(
              child: Center(
                child: Text(list[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
