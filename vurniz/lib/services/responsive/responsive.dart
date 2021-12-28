import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobilesd;
  final Widget mobile;
  final Widget tablet;
  final Widget destop;

  const Responsive(
      {Key? key,
      required this.mobilesd,
      required this.mobile,
      required this.tablet,
      required this.destop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1100) {
          return destop;
        } else if (constraints.maxWidth >= 630) {
          return tablet;
        } else if (constraints.maxWidth >= 430) {
          return mobile;
        } else {
          return mobilesd;
        }
      }
    );
  }
}
