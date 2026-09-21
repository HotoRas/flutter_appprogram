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
      // Profile Card
      appBar: AppBar(
        title: Text(
          '20231023 전도현',
          style: TextStyle(
            color: Colors.white,
            fontWeight: fontWeightBold,
            letterSpacing: 2,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 114, 161),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 255, 109, 109),

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
              "전도현",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: fontWeightBold,
              ),
            ),
            /*SizedBox(height: 10),
            Text("BAANTO POWER LEVEL", style: TextStyle(color: Colors.white)),
            SizedBox(height: 10),
            Text(
              "10",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: fontWeightBold,
              ),
            ),*/
            SizedBox(height: 25),
            Row(
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.book_outlined),
                Text(
                  "Department:\nDepartment of Media-Software",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.menu_book_outlined),
                Text(
                  "Lecture\nApp Programming",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.check_circle_outline),
                Text("Week 4", style: TextStyle(fontSize: 20)),
              ],
            ),
            SizedBox(height: 25),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image/pf.jpg'),
                radius: 70,
                backgroundColor: Colors.amber[800], // jpg => no use
              ),
            ),
          ],
        ),
      ),
    );
  }
}
