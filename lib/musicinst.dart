import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';
import 'package:lottie/lottie.dart';

double imgwid = 100;

class MusicalInstruments extends StatelessWidget {
  const MusicalInstruments({super.key});
  void playSound(String name) {
    final AudioPlayer p = AudioPlayer();
    p.play(AssetSource('$name.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          "Musical Instruments",
          style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: SizedBox(),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              //Row 1
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      //Organ
                      children: [
                        GestureDetector(
                          onTap: () => playSound('organ'),
                          child: Image.asset('images/organ.png', height: imgwid, width: imgwid),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(width: imgwid + 15, height: 5, color: Colors.purpleAccent),
                        ),
                        Text('Organ*', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      //Drum
                      children: [
                        GestureDetector(
                          onTap: () => playSound('drum'),
                          child: Image.asset('images/drum.png', height: imgwid, width: imgwid),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(width: imgwid + 15, height: 5, color: Colors.purpleAccent),
                        ),
                        Text('Drum', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      //Violin
                      children: [
                        GestureDetector(
                          onTap: () => playSound('violin'),
                          child: Image.asset('images/violin.png', height: imgwid, width: imgwid),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(width: imgwid + 15, height: 5, color: Colors.purpleAccent),
                        ),
                        Text('Violin', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            Column(
              //Row 2
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      //maracas
                      children: [
                        GestureDetector(
                          onTap: () => playSound('maracas'),
                          child: Image.asset('images/maracas.png', height: imgwid, width: imgwid),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(width: imgwid + 15, height: 5, color: Colors.purpleAccent),
                        ),
                        Text('Maracas', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      //guitar
                      children: [
                        GestureDetector(
                          onTap: () => playSound('guitar'),
                          child: Image.asset('images/guitar.png', height: imgwid, width: imgwid),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(width: imgwid + 15, height: 5, color: Colors.purpleAccent),
                        ),
                        Text('Guitar', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      //piano
                      children: [
                        GestureDetector(
                          onTap: () => playSound('piano'),
                          child: Image.asset('images/piano.png', height: imgwid, width: imgwid),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(width: imgwid + 15, height: 5, color: Colors.purpleAccent),
                        ),
                        Text('Piano', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(
              width: 300,
              child: Text("Image asset from Unsplash\nSound asset from Pixabay", style: TextStyle(fontSize: 12, color: Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}
