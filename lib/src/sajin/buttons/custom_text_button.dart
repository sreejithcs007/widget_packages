
import 'package:flutter/material.dart';
import 'package:nexteon_group_packages/src/sajin/core/const/my_text_style.dart';
import 'package:nexteon_group_packages/src/sajin/text/custom_text.dart';


class CustomTextButton extends StatelessWidget {
  final void Function()? onPressed;
  final String? buttonText;
  final double? textFontSize;
  final Color? textColor;
  final ButtonStyle? buttonStyle;
  final FontWeight? textFontWeight;
  final bool underline;
  final double underlineThickness;
  final double underlineGap;

  CustomTextButton({
    Key? key,
    this.onPressed,
    this.textFontSize,
    this.textColor,
    this.buttonStyle,
    this.textFontWeight,
    this.buttonText,
    this.underline = false,
    this.underlineThickness = 1.2,
    this.underlineGap = 1.5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: buttonStyle,
      child: CustomPaint(
        painter: underline ? TextUnderlinePainter(textColor ?? MyTextSTyles.blueButtonText.color , underlineThickness, underlineGap) : null,
        
        child: CustomText(
          text: buttonText??null,
         fontSize:textFontSize?? MyTextSTyles.blueButtonText.fontSize,
              fontWeight:textFontWeight?? MyTextSTyles.blueButtonText.fontWeight,
              textColor:textColor ??MyTextSTyles.blueButtonText.color,
          style: TextStyle(
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}

class TextUnderlinePainter extends CustomPainter {
  final Color? underlineColor;
  final double underlineThickness;
  final double underlineGap;

  TextUnderlinePainter(this.underlineColor, this.underlineThickness, this.underlineGap);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = underlineColor ?? Colors.black
      ..strokeWidth = underlineThickness
      ..style = PaintingStyle.stroke;

    final textBottom = size.height - underlineGap;
    canvas.drawLine(Offset(0, textBottom), Offset(size.width, textBottom), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

