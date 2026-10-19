import 'package:flutter/material.dart';

//import 'basicnavigator.dart';

class ButtonsExample extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text('Buttons'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 4,
          children: [
            Text('Higher Priority'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),
                ElevatedButton(onPressed: null, child: Text('Disabled')),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: Text('Warning', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10)),
                fixedSize: Size(250, 30),
                elevation: 0,
              ),
              child: Text('rect r=10 size 250,30 elev none'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4,
              children: [
                FilledButton(onPressed: () {}, child: Text('Filled Button')),
                FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(backgroundColor: Colors.amber, foregroundColor: Colors.blueAccent),
                  child: Text('skyblue on yellow'),
                ),
              ],
            ),
            Text('High Priority'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4,
              children: [
                OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.blue, width: 3)),
                  child: Text('side blue,3f'),
                ),
              ],
            ),
            Text('Medium Priority'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4,
              children: [
                FilledButton.tonal(onPressed: () {}, child: Text('Filled Button @tonal')),
                FilledButton.tonal(
                  onPressed: () {},
                  style: FilledButton.styleFrom(foregroundColor: Colors.grey[70]),
                  child: Text('next'),
                ),
              ],
            ),
            Text('Low Priority'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4,
              children: [
                TextButton(onPressed: () {}, child: Text('Text Button')),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(fixedSize: Size(180, 30)),
                  child: Text('some other text button'),
                ),
              ],
            ),
            Text('Others'),
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.home_rounded, size: 40, color: Colors.deepOrange),
            ),
            Container(
              width: 250,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: BoxBorder.all(color: Colors.amber, width: 2),
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Colors.blue, Colors.red]),
              ),
              child: Text('Decorated Custom ButtonLike', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton.small(heroTag: 'restore', onPressed: () {}, child: Icon(Icons.restore)),
          FloatingActionButton(heroTag: 'backspace', onPressed: () {}, child: Icon(Icons.backspace)),
          FloatingActionButton.large(heroTag: 'backpack', onPressed: () {}, child: Icon(Icons.backpack)),
          FloatingActionButton.extended(
            heroTag: 'add',
            onPressed: () {},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            backgroundColor: Colors.red,
            icon: Icon(Icons.add, color: Colors.white),
            label: Text('Add', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
