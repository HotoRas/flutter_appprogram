import 'package:flutter/material.dart';

import 'testlogin.dart';

// import 'buttons.dart';

class MyHomepage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text('Navigator'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            Text('homepage', style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginTemplate())),
              child: Text('Log In...'),
            ),
            // TextButton(
            //   onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (c) => ButtonsExample())),
            //   child: Text('buttons example page'),
            // ),
            FilledButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (c) => MypageError(reason: 'You asked me to crash'))),
              style: FilledButton.styleFrom(backgroundColor: Colors.redAccent),
              child: Text('Intentionally crash (internal)'),
            ),
          ],
        ),
      ),
    );
  }
}

class MypageError extends StatelessWidget {
  final String reason;
  const new({super.key, required this.reason});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onError,
        title: Text('Something happened'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Text('An error has been occured.', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(reason),
            //force go root
            FilledButton(onPressed: () => Navigator.popUntil(context, (route) => route.isFirst), child: Text('Return to homepage')),
          ],
        ),
      ),
    );
  }
}
