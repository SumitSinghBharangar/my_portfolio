import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    this.controller,
    this.maxLine =1,
    this.hintText,
  });
  final TextEditingController? controller;
  final int maxLine;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLine,
      style: const TextStyle(color: AppColors.valhalla),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          filled: true,
          fillColor: AppColors.paleSlate,
          focusedBorder: getInputBorder,
          enabledBorder: getInputBorder,
          border: getInputBorder,
          hintText:hintText,
          hintStyle: const TextStyle(color: AppColors.studio)),
    );
  }

  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }
}
