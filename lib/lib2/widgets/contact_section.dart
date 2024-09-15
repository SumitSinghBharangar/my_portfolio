import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/lib2/constants/size.dart';

import '../../constants/colors.dart';
import '../../constants/styles.dart';
import '../../screens/widgets/social_widget.dart';
import 'custom_textfield.dart';

class ContactSection extends StatelessWidget {
  final Size size;
  const ContactSection({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: Styles.gradientDecoration,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
        child: Column(
          children: [
            const Text(
              "Get in touch...",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 700,
                maxHeight: 100,
              ),
              child: LayoutBuilder(builder: (context, constraints) {
                return constraints.maxWidth >= kMinDesktopWidth
                    ? buildNameEmailFieldDesktop()
                    : buildNameEmailFieldMobile();
              }),
            ),
            const SizedBox(
              height: 40,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: const CustomTextfield(
                hintText: "Your Message",
                maxLine: 20,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 700,
              ),
              child: CupertinoButton(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 223, 214, 127),
                    ),
                    child: const Center(
                      child: Text(
                        "Get In touch",
                        style: TextStyle(fontSize: 23, color: AppColors.studio),
                      ),
                    ),
                  ),
                  onPressed: () {}),
            ),
            const SizedBox(
              height: 20,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300),
              child: const SocialWidget(),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return Row(
      children: [
        Flexible(
          child: CustomTextfield(hintText: "Your name"),
        ),
        SizedBox(
          width: 50,
        ),
        Flexible(
          child: CustomTextfield(hintText: "Your email"),
        ),
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return Column(
      children: [
        Flexible(
          child: CustomTextfield(hintText: "Your name"),
        ),
        SizedBox(
          height: 20,
        ),
        Flexible(
          child: CustomTextfield(hintText: "Your email"),
        ),
      ],
    );
  }
}
