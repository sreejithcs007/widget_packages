import 'package:flutter/material.dart';
import 'package:nexteon_group_packages/src/sajin/core/const/my_icon_style.dart';


class CustomIconButton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onPressed;
  final Color? iconColor;
  final double? iconSize;

  const CustomIconButton(
      {super.key,
      this.icon,
      this.onPressed,
      this.iconColor,
      this.iconSize // Default icon size
      });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: iconColor ?? MyIconStyle.iconBlack.color,
          size: iconSize ?? MyIconStyle.iconBlack.size,
        ));
  }
}
