import 'package:flutter/material.dart';
import 'package:nexteon_group_packages/src/sajin/core/const/my_icon_style.dart';
import 'package:nexteon_group_packages/src/sajin/core/const/my_text_style.dart';
import 'package:nexteon_group_packages/src/sajin/text/custom_text.dart';


class CustomOutlineButton extends StatelessWidget {
  final IconData? icon;
  final double? iconSize;
  final Color? iconColor;

  final VoidCallback? onPressed;
  final String? buttonText;
  final double? textFontSize;
  final Color? textColor;
  final FontWeight? textFontWeight;
  final ButtonStyle? buttonStyle;

  const CustomOutlineButton(
      {super.key,
      this.icon,
      this.iconSize,
      this.iconColor,
      this.onPressed,
      this.buttonText,
      this.textFontSize,
      this.textColor,
      this.textFontWeight,
      this.buttonStyle})
      : assert(icon != null || buttonText != null,
            'At least one value (icon or buttonText) must be provided.');

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: WidgetStateProperty.all(
            EdgeInsets.symmetric(horizontal: 15, vertical: 5)),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.black,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(
                6.0), // Rectangular shape with rounded corners
          ),
        ),
      ).merge(buttonStyle),
      child: Row(
         ///IF THERE is any issue in button calling in login screen commenet this line
        mainAxisSize: MainAxisSize.min,

       
        children: [
          if (icon != null)
            Icon(
              icon,
              size: iconSize ?? MyIconStyle.iconBlack.size,
              color: iconColor ?? MyIconStyle.iconBlack.color
            ),
          if (icon != null && buttonText != null)
            SizedBox(width: size.width * 0.02),
          if (buttonText != null)
            FittedBox(
                child: CustomText(
              text: buttonText ?? null,
              fontSize: textFontSize ?? MyTextSTyles.blackButtonText.fontSize,
              fontWeight:
                  textFontWeight ?? MyTextSTyles.blackButtonText.fontWeight,
              textColor: textColor ?? MyTextSTyles.blackButtonText.color,
            )),
        ],
      ),
    );
  }
}
