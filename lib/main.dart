import 'package:flutter/material.dart';

import 'loginpage.dart';

double cw = 100;
double ch = 100;

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.lightBlue),
      home: LoginPageWrapper(),
    );
  }
}
