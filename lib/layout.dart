import 'package:material_ui/material_ui.dart';

import 'responsive/responsive_center.dart';

class Layout extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  const new({super.key, this.padding = EdgeInsets.zero, required this.child});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.grey[300],
    body: ResponsiveCenter(maxContentWidth: Breakpoint.deskTop, padding: padding, child: child),
  );
}
