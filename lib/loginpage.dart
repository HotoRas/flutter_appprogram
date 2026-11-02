import 'package:flutter/material.dart';

class LoginPageWrapper extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text('Log In'), centerTitle: true),
      body: SafeArea(child: Placeholder()),
    );
  }
}
