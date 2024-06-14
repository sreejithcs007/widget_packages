import 'package:flutter/material.dart';
import 'package:nexteon_group_packages/nexteon_group_packages.dart';
import 'package:nexteon_group_packages/src/sajin/core/const/my_text_style.dart';
import 'package:nexteon_group_packages/src/sajin/text/custom_text.dart';
import 'package:nexteon_group_packages/src/sreejith/src/textformfield/custom_textfield.dart';

class CustomLoginTextField extends StatelessWidget {
  const CustomLoginTextField(
      {super.key,
      required this.text,
      this.controller,
      this.hintText,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.style,
      this.hintcolor,
      this.validator});

  final String text;
  final TextEditingController? controller;
  final String? hintText;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextStyle? style;
  final Color? hintcolor;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: text,
          style: TextStyle(
                  color: color ?? MyColors.black,
                  fontSize: fontSize ?? MyTextSTyles.greyButtonText.fontSize,
                  fontWeight:
                      fontWeight ?? MyTextSTyles.greyButtonText.fontWeight)
              .merge(style),
        ),

        ///need to do gap
        const SizedBox(
          height: 10,
        ),

        CustomTextFormField(
          validator: validator,
          enabled: true,
          controller: controller,
          hintText: hintText,
          hintStyle: TextStyle(
              color: hintcolor ?? MyColors.grey),
        )
      ],
    );
  }
}
