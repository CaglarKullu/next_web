import 'dart:html';

import 'package:flutter/material.dart';

import 'break_points.dart';

class ResponsiveGrid extends StatelessWidget {
  final int xs;
  final int sm;
  final int md;
  final int lg;
  final BuildContext context;
  final List<Widget> children;

  const ResponsiveGrid({
    Key? key,
    required this.children,
    this.xs = 1,
    this.sm = 1,
    this.md = 2,
    this.lg = 3,
    required this.context,
  }) : super(key: key);

  int _getColumns() {
    ScreenSize screenSize = ScreenSize.getScreenSize(context);
    switch (screenSize) {
      case ScreenSize.xs:
        return xs;
      case ScreenSize.sm:
        return sm;
      case ScreenSize.md:
        return md;
      case ScreenSize.lg:
        return lg;
      case ScreenSize.xl:
        return lg;
    }
  }

  @override
  Widget build(context) {
    return GridView.count(
      crossAxisCount: _getColumns(),
      children: children,
    );
  }
}
