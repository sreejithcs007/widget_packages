import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? textColor;
  final TextStyle? style;
  final FontWeight? fontWeight;

  const CustomText(
      {super.key,
      this.text,
      this.fontSize,
      this.textColor,
      this.style,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      style: TextStyle(
              color:
                  textColor ,
              fontSize: fontSize ,
              fontWeight: fontWeight )
          .merge(style),
    );

    /// google fonts add akan ondu and enniyum parameters add akan ondu
    ///
  }
}

