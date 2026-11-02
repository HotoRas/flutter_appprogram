import 'package:flutter/material.dart';

import 'loginpage.dart';
import 'responsive/responsive_center.dart';

class LoginLayout extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.grey[300],
    body: ResponsiveCenter(maxContentWidth: Breakpoint.deskTop, padding: EdgeInsets.all(16), child: LoginPageWrapper()),
  );
}
