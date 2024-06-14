import 'package:flutter/material.dart';
import 'package:nexteon_group_packages/src/sajin/core/const/my_colors.dart';

class MyTextSTyles {
  ///fontsize 45, fontweight700, color black,used in larger text in the ui
  static TextStyle mainText = TextStyle(
      fontSize: 45, color: MyColors.black, fontWeight: FontWeight.w700);

  /// fontsize 25, fontweight700, color black,
  static TextStyle headerText = TextStyle(
    fontSize: 14,
    color: MyColors.black,
    fontWeight: FontWeight.w700,
  );

  ///fontsize 15, fontweight400, color black,
  static var subText = TextStyle(
      color: MyColors.black, fontWeight: FontWeight.w400, fontSize: 15);

  ///fontsize 16 fontweight400,color black mostly used in textfield
  static var textFieldText = TextStyle(
      color: MyColors.black, fontWeight: FontWeight.w400, fontSize: 16);

  ///fontsize 14,fontweight400,color black mostly used in blackbutton text in outline button
  static var blackButtonText = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: MyColors.black,
  );

  ///fontsize 16,fontweight400,color white mostly used in whitebutton text in filledbutton
  static var whiteButtonText = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: MyColors.white,
  );

  /// fontsize 16, fontweight500,color grey used  in text button
  static var greyButtonText = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: MyColors.grey,
  );

  /// fontsize 18, fontweight400,color blueText used  in text button
  static var blueButtonText = TextStyle(
      color: MyColors.blueText, fontSize: 18, fontWeight: FontWeight.w400);
}
