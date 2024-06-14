import 'package:flutter/material.dart';

class CustomCheckboxWithText extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool?> onChanged;
  final String text;
  final TextStyle? textStyle;
  final BorderSide? side;
  final OutlinedBorder? shape;

  ///THis Checkbox comes with TEXT widget
  const CustomCheckboxWithText({
    super.key,

    ///isChecked inu some value assign chy-nm
    required this.isChecked,
    required this.onChanged,
    required this.text,
    this.textStyle,
    this.shape,
    this.side,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: onChanged,
          side: side ??
              WidgetStateBorderSide.resolveWith(
                (states) {
                  return const BorderSide(color: Color(0XFFBDBDBD), width: .5);
                },
              ),
          shape: shape ??
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
        ),
        Text(
          text,
          style: textStyle,
        ),
      ],
    );
  }
}
