import 'package:flutter/material.dart';

/*
FIXME (SDK): Running native debug from Code does not work proper
            Manual execution  flutter run  after attach via adb
            works as intended
            Run  adb usb  prior to  flutter run  to prevent
            unexpected issues
*/

//NOTE: Android Emulator를 사용하고 있지 않기 때문에, 네이티브 디버그를 통해 연결 중

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.pinkAccent),
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
        title: Text("20231023 전도현의 Flutter App"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Center(
        child: Text(
          "running on native Android",
          style: TextStyle(fontSize: 16.0),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
