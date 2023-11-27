import 'package:flutter/material.dart';

class responsive {
  static const double zeroPadding = 0;

  static const double defaultPadding = 8.0;

  static const double smallPadding = 4.0;

  static const double largePadding = 16.0;

  static const double zeroMargin = 0;

  static const double defaultMargin = 16.0;

  static const double xSmallMargin = 4.0;

  static const double smallMargin = 8.0;

  static const double largeMargin = 32.0;

  static var screenWidth = MediaQueryData.fromView(WidgetsBinding.instance.window).size.width;

  static var screenHeight = MediaQueryData.fromView(WidgetsBinding.instance.window).size.height;


  static const double smallBorderRadius = 4.0;
}
