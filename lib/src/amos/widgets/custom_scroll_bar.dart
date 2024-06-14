import 'package:flutter/material.dart';
import 'scrollbar_with_track_radius.dart';

class CustomScrollbarWidget extends StatelessWidget {
  final Widget child;
  final double? mainAxisMargin;
  final double? crossAxisMargin;
  final Radius? radius;
  final Radius? trackRadius;
  final WidgetStateProperty<Color?>? trackColor;

  ///give same controller of scrollable child
  final ScrollController? controller;

  ///Extends [ScrollbarWithTrackRadius] for which track-radius parameter is extra added
  const CustomScrollbarWidget({
    super.key,
    required this.child,
    this.controller,
    this.mainAxisMargin,
    this.crossAxisMargin,
    this.radius,
    this.trackRadius,
    this.trackColor,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollbarTheme(
      data: ScrollbarThemeData(
        mainAxisMargin: mainAxisMargin ?? 3,
        crossAxisMargin: crossAxisMargin ?? 1,
        trackBorderColor: const WidgetStatePropertyAll(Colors.transparent),
        trackColor:
            trackColor ?? const WidgetStatePropertyAll(Color(0XFFD9D9D9)),
      ),
      child: ScrollbarWithTrackRadius(
        radius: radius,
        controller: controller,
        trackRadius: trackRadius ?? const Radius.circular(12),
        thumbVisibility: true,
        interactive: false,
        trackVisibility: true,
        child: child,
      ),
    );
  }
}
