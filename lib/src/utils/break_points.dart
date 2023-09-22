import 'package:flutter/material.dart';

class Breakpoints {
  static const double xs = 480.0;
  static const double sm = 768.0;
  static const double md = 992.0;
  static const double lg = 1200.0;
  static const double xl = 1400.0;
}

// get the current screen size and map it to a breakpoint using the enum and media query

enum ScreenSize {
  xs,
  sm,
  md,
  lg,
  xl;

  static ScreenSize getScreenSize(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width < Breakpoints.xs) {
      return ScreenSize.xs;
    } else if (width < Breakpoints.sm) {
      return ScreenSize.sm;
    } else if (width < Breakpoints.md) {
      return ScreenSize.md;
    } else if (width < Breakpoints.lg) {
      return ScreenSize.lg;
    } else {
      return ScreenSize.xl;
    }
  }
}
