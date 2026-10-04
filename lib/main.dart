import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:audioplayers/audioplayers.dart';

import 'musicinst.dart';

import 'fontweightdef.dart';

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
      title: "Animal Sounds",
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: MusicalInstruments(),
    );
  }
}

// class AnimalSounds extends StatelessWidget {
//   const AnimalSounds({super.key});
//   void playSound(String name) {
//     final AudioPlayer player = AudioPlayer();
//     player.play(AssetSource('$name.wav'));
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text("Animal Sounds", style: TextStyle(fontSize: 24, color: Colors.white)),
//         centerTitle: true,
//         leading: SizedBox(height: 50, width: 150, child: Lottie.asset("lottie/petitcat.json", reverse: true)),
//         actions: [Lottie.asset('lottie/petitcat.json', reverse: true), Icon(Icons.search)],
//       ),
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     GestureDetector(onTap: () => playSound('bear'), child: Image.asset("images/bear.png", height: 100)),
//                     Padding(
//                       padding: EdgeInsets.only(top: 10, bottom: 10),
//                       child: Container(width: 115, height: 5, color: Colors.green),
//                     ),
//                     Text("Bear", style: TextStyle(fontSize: 20)),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     GestureDetector(onTap: () => playSound('fox'), child: Image.asset("images/fox.png", height: 100)),
//                     Padding(
//                       padding: EdgeInsets.only(top: 10, bottom: 10),
//                       child: Container(width: 115, height: 5, color: Colors.green),
//                     ),
//                     Text("Fox", style: TextStyle(fontSize: 20)),
//                   ],
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     GestureDetector(onTap: () => playSound('koala'), child: Image.asset("images/koala.png", height: 100)),
//                     Padding(
//                       padding: EdgeInsets.only(top: 10, bottom: 10),
//                       child: Container(width: 115, height: 5, color: Colors.green),
//                     ),
//                     Text("Koala", style: TextStyle(fontSize: 20)),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     GestureDetector(onTap: () => playSound('kamel'), child: Image.asset("images/camel.png", height: 100)),
//                     Padding(
//                       padding: EdgeInsets.only(top: 10, bottom: 10),
//                       child: Container(width: 115, height: 5, color: Colors.green),
//                     ),
//                     Text("Camel", style: TextStyle(fontSize: 20)),
//                   ],
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     GestureDetector(onTap: () => playSound('lion'), child: Image.asset("images/lion.png", height: 100)),
//                     Padding(
//                       padding: EdgeInsets.only(top: 10, bottom: 10),
//                       child: Container(width: 115, height: 5, color: Colors.green),
//                     ),
//                     Text("Lion", style: TextStyle(fontSize: 20)),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     GestureDetector(onTap: () => playSound('tiger'), child: Image.asset("images/tiger.png", height: 100)),
//                     Padding(
//                       padding: EdgeInsets.only(top: 10, bottom: 10),
//                       child: Container(width: 115, height: 5, color: Colors.green),
//                     ),
//                     Text("Tiger", style: TextStyle(fontSize: 20)),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       backgroundColor: Theme.of(context).colorScheme.primaryContainer,
//     );
//   }
// }
