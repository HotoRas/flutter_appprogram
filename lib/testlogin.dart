import 'package:flutter/material.dart';

import 'basicnavigator.dart';

class LoginTemplate extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text('Log In'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'ID', border: OutlineInputBorder()),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 12,
              children: [
                FilledButton(
                  onPressed: () => Navigator.pop(context),
                  style: FilledButton.styleFrom(backgroundColor: Colors.redAccent),
                  child: Text('Cancel'),
                ),
                FilledButton(
                  onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (c) => const MypageError(reason: 'Actual log in not yet implemented')),
                  ),
                  child: Text('Log In'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
