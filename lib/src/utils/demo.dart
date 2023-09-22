import 'dart:html';

import 'package:flutter/material.dart';

import 'adaptive_grid.dart';
import 'sized_box.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveGrid(
      mobileChildren: [
        ResponsiveFractionallySizedBox(
            xsFraction: 0.90,
            child: Container(color: Colors.blue, child: Text("kMobile"))),
        ResponsiveFractionallySizedBox(
            xsFraction: 0.90,
            child: Container(color: Colors.blue, child: Text("kMobile"))),
        ResponsiveFractionallySizedBox(
            xsFraction: 0.90,
            child: Container(color: Colors.blue, child: Text("kMobile"))),
        ResponsiveFractionallySizedBox(
            xsFraction: 0.90,
            child: Container(color: Colors.blue, child: Text("kMobile"))),
      ],
      tabletChildren: [
        ResponsiveFractionallySizedBox(
            xsFraction: 0.9,
            child: Container(color: Colors.red, child: Text("kTablet"))),
        ResponsiveFractionallySizedBox(
            xsFraction: 0.9,
            child: Container(color: Colors.red, child: Text("kTablet"))),
        ResponsiveFractionallySizedBox(
            xsFraction: 0.9,
            child: Container(color: Colors.red, child: Text("kTablet"))),
        ResponsiveFractionallySizedBox(
            xsFraction: 0.9,
            child: Container(color: Colors.red, child: Text("kTablet"))),
        ResponsiveFractionallySizedBox(
            xsFraction: 0.9,
            child: Container(color: Colors.red, child: Text("kTablet"))),
        ResponsiveFractionallySizedBox(
            xsFraction: 0.9,
            child: Container(color: Colors.red, child: Text("kTablet"))),
      ],
      desktopChildren: [
        ResponsiveFractionallySizedBox(
            xsFraction: 0.9,
            child: Container(color: Colors.green, child: Text("kDesktop"))),
        ResponsiveFractionallySizedBox(
            xsFraction: 0.9,
            child: Container(color: Colors.green, child: Text("kDesktop"))),
        ResponsiveFractionallySizedBox(
            xsFraction: 0.9,
            child: Container(color: Colors.green, child: Text("kDesktop"))),
        ResponsiveFractionallySizedBox(
            xsFraction: 0.9,
            child: Container(color: Colors.green, child: Text("kDesktop"))),
        ResponsiveFractionallySizedBox(
            xsFraction: 0.9,
            child: Container(color: Colors.green, child: Text("kDesktop"))),
        ResponsiveFractionallySizedBox(
            xsFraction: 0.9,
            child: Container(color: Colors.green, child: Text("kDesktop"))),
      ],
    );
  }
}
