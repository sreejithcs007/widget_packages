import 'package:flutter/material.dart';
import 'package:nexteon_group_packages/src/sajin/core/const/my_colors.dart';
import 'package:nexteon_group_packages/src/sajin/core/const/my_text_style.dart';
import 'package:nexteon_group_packages/src/sajin/text/custom_text.dart';


class CustomRadioButton extends StatelessWidget {
  final String? buttonText;
  final bool? isSelected;
  final Function? onTap;
  final double? textFontSize;
  final Color? textColor;
  final FontWeight? textFontWeight;

  const CustomRadioButton({
    super.key,
    this.buttonText,
    this.isSelected,
    this.onTap,
    this.textFontSize,
    this.textColor,
    this.textFontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap!(),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 8.0),
            height: 22.0,
            width: 22.0,
            decoration: BoxDecoration(
              color: isSelected! ? Theme.of(context).primaryColor : Colors.grey,
              border: Border.all(
                color: isSelected! ? Colors.white : Colors.white,
                width: 5.0,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: isSelected!
                ? Center(
                    child: Container(
                      height: 11.0,
                      width: 11.0,
                      decoration: BoxDecoration(
                        color: MyColors.secondaryBlue,
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                  )
                : null,
          ),
          CustomText(
              text: buttonText ?? "",
              fontSize: textFontSize ?? MyTextSTyles.blackButtonText.fontSize,
              fontWeight:
                  textFontWeight ?? MyTextSTyles.blackButtonText.fontWeight,
              textColor:
                  textColor ?? textColor ?? MyTextSTyles.blackButtonText.color)
        ],
      ),
    );
  }
}
