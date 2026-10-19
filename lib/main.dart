import 'package:flutter/material.dart';

import 'seatsel.dart';

double cw = 100;
double ch = 100;

/*
FIXME (SDK): Running native debug from Code does not work proper
            Manual execution  flutter run  after attach via adb
            works as intended
            Run  adb usb  prior to  flutter run  to prevent
            unexpected issues
*/

/*
NOTE: Android Emulator를 사용하고 있지 않기 때문에, 네이티브 디버그를 통해 연결 중
      runcmd:
      - adb usb
      - flutter run
*/

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "공연 좌석 선택",
      theme: ThemeData(colorSchemeSeed: Colors.lightGreen),
      home: SeatSelect(),
    );
  }
}
