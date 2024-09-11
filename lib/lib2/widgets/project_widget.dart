import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../constants/project_items.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runAlignment: WrapAlignment.center,
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        for (int i = 0; i < projectItems.length; i++)
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 932,
              width: 400,
              margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.studio, width: 1.4),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      projectItems[i].imageAddress.toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    projectItems[i].imageName.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: "Poppins"),
                  )
                ],
              ),
            ),
          )
      ],
    );
  }
}
