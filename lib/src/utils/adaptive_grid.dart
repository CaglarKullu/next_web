import 'package:flutter/material.dart';

import 'break_points.dart';

class AdaptiveGrid extends StatelessWidget {
  final List<Widget>? mobileChildren;
  final List<Widget>? tabletChildren;
  final List<Widget>? desktopChildren;

  int? xsColumns;
  int? smColumns;
  int? mdColumns;
  int? lgColumns;

  AdaptiveGrid(
      {Key? key,
      this.mobileChildren,
      this.tabletChildren,
      this.desktopChildren,
      this.xsColumns,
      this.smColumns,
      this.mdColumns,
      this.lgColumns})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List<Widget>? children;
    int? columns;
    xsColumns ??= 1;
    smColumns ??= 2;
    mdColumns ??= 3;
    lgColumns ??= 4;

    if (width < Breakpoints.sm) {
      children = mobileChildren;
      columns = xsColumns;
    } else if (width < Breakpoints.md) {
      children = tabletChildren ?? mobileChildren;
      columns = smColumns;
    } else if (width < Breakpoints.lg) {
      children = desktopChildren ?? tabletChildren ?? mobileChildren;
      columns = mdColumns;
    } else {
      children = desktopChildren ?? tabletChildren ?? mobileChildren;
      columns = lgColumns;
    }

    if (children == null) {
      return const SizedBox.shrink();
    }

    return GridView.count(
      crossAxisCount: columns!,
      children: children,
    );
  }
}
