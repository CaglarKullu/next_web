import 'package:flutter/material.dart';

import 'break_points.dart';

class ResponsiveFractionallySizedBox extends StatelessWidget {
  final double xsFraction;
  final double? smFraction;
  final double? mdFraction;
  final double? lgFraction;
  final Widget child;
  final AlignmentGeometry alignment;

  const ResponsiveFractionallySizedBox({
    Key? key,
    required this.xsFraction,
    this.smFraction,
    this.mdFraction,
    this.lgFraction,
    required this.child,
    this.alignment = Alignment.center,
  }) : super(key: key);

  double _getFraction(double width) {
    if (width < Breakpoints.sm) {
      return xsFraction;
    } else if (width < Breakpoints.md) {
      return smFraction ?? xsFraction;
    } else if (width < Breakpoints.lg) {
      return mdFraction ?? smFraction ?? xsFraction;
    } else {
      return lgFraction ?? mdFraction ?? smFraction ?? xsFraction;
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return FractionallySizedBox(
      widthFactor: _getFraction(width),
      alignment: alignment,
      child: child,
    );
  }
}
