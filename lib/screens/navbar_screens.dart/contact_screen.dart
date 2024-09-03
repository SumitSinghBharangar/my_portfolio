import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/styles.dart';
import 'package:my_portfolio/screens/widgets/header_text_widget.dart';
import 'package:my_portfolio/screens/widgets/social_section.dart';
import 'package:my_portfolio/screens/widgets/social_widget.dart';

class ContactScreen extends StatefulWidget {
  final Size size;
  const ContactScreen({
    super.key,
    required this.size,
  });

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final _fKey = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _mail = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _msg = TextEditingController();

  @override
  void dispose() {
    _mail.dispose();
    _name.dispose();
    _phone.dispose();
    _msg.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: widget.size.width,
      decoration: Styles.gradientDecoration,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: widget.size.width * 0.07,
            vertical: widget.size.height * 0.08),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: widget.size.width * 0.35,
              child: Column(
                children: [
                  Text(
                    "Let's discuss on something cool together",
                    style: TextStyle(
                        fontSize: widget.size.width * 0.033,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    children: [
                      Icon(
                        Iconsax.sms,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "bharangarsinghsumit@gmail.com",
                        style: TextStyle(
                          fontSize: widget.size.width * 0.016,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    children: [
                      Icon(
                        Iconsax.location,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Uttar Pradesh, India",
                        style: TextStyle(
                          fontSize: widget.size.width * 0.016,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Expanded(child: SocialWidget())
                ],
              ),
            ),
            Container(
              height: double.infinity,
              width: widget.size.width * 0.43,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.studio, width: 1.2),
              ),
              child: Form(
                  key: _fKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onTapOutside: (event) {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter your name";
                          }
                          if (value.length < 3) {
                            return "Must have at least 3 chars";
                          }
                          return null;
                        },
                        controller: _name,
                        decoration: InputDecoration(
                          hintText: "Full Name",
                          prefixIcon: const Icon(Iconsax.user_octagon),
                          contentPadding: const EdgeInsets.all(10),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onTapOutside: (event) {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter your mail";
                          }

                          return null;
                        },
                        controller: _mail,
                        decoration: InputDecoration(
                          hintText: "mail",
                          prefixIcon: const Icon(Iconsax.user_octagon),
                          contentPadding: EdgeInsets.all(16),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        onTapOutside: (event) {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter your Phone no";
                          }
                          if (value.length != 10) {
                            return "Must have 10 chars";
                          }
                          return null;
                        },
                        controller: _phone,
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          hintText: "Phone",
                          prefixIcon: const Icon(Iconsax.call),
                          contentPadding: EdgeInsets.all(16),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        onTapOutside: (event) {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter your message";
                          }
                          if (value.length < 3) {
                            return "Must have at least 3 chars";
                          }
                          return null;
                        },
                        controller: _msg,
                        decoration: InputDecoration(
                          hintText: "Address",
                          prefixIcon: const Icon(Iconsax.building_4),
                          contentPadding: EdgeInsets.all(16),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
