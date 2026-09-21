import 'package:flutter/material.dart';

import 'fontweightdef.dart';

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
    return MaterialApp(home: Character());
  }
}

class Character extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BBANTO ID CARD',
          style: TextStyle(
            color: Colors.white,
            fontWeight: fontWeightBold,
            letterSpacing: 2,
          ),
        ),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
      ),
      backgroundColor: Colors.amber[900],

      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset('images/ch1.png', width: 200, height: 200),
            ),
            Divider(height: 40, color: Colors.white, thickness: 0.5),
            Text("NAME", style: TextStyle(color: Colors.white)),
            SizedBox(height: 10),
            Text(
              "BAANTO",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: fontWeightBold,
              ),
            ),
            SizedBox(height: 10),
            Text("BAANTO POWER LEVEL", style: TextStyle(color: Colors.white)),
            SizedBox(height: 10),
            Text(
              "10",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: fontWeightBold,
              ),
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 15),
                Text("Using Lightsaber", style: TextStyle(fontSize: 20)),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 15),
                Text("Hero Face Tatto", style: TextStyle(fontSize: 20)),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 15),
                Text("Fire Flames", style: TextStyle(fontSize: 20)),
              ],
            ),
            SizedBox(height: 25),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/ch2.png'),
                backgroundColor: Colors.amber[800],
                radius: 70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
