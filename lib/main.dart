import 'package:flutter/material.dart';

//FIXME (SDK): Running native debug from Code does not work proper
//             Manual execution  flutter run  after attach via adb
//             works as intended

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.lightBlue),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyFirstApp"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(child: Text("Hello World")),
    );
  }
}
