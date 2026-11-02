import 'package:flutter/material.dart';

class Breakpoint {
  static const double deskTop = 900;
  static const double tablet = 600;
}

class ResponsiveCenter extends StatelessWidget {
  final double maxContentWidth;
  final EdgeInsetsGeometry padding;
  final Widget child;
  const new({super.key, required this.maxContentWidth, required this.padding, required this.child});

  @override
  Widget build(BuildContext context) => Center(
    child: SizedBox(
      width: maxContentWidth,
      child: Padding(padding: padding, child: child),
    ),
  );
}
