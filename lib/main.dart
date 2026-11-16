import 'package:material_ui/material_ui.dart';
import 'package:flutter_appprogram_20231023/loginpage.dart';

import 'layout.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(colorSchemeSeed: Colors.lightBlue),
    home: Layout(child: LoginPageWrapper()),
  );
}
