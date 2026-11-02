import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'loginmaterial.dart';
import 'commonmaterial.dart';

class RegisterPage extends StatefulWidget {
  const new({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.grey[300],
    body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 80),
            GreyText(
              'Register',
              size: 20,
              weight: FontWeight.w500,
            ).animate().fade(delay: 500.ms).slideX(begin: -2, end: 0).tint(color: Colors.purple, delay: 1000.ms),
            SizedBox(height: 35),
            LoginInput('Username'),
            SizedBox(height: 15),
            LoginInput('Password', isPassword: true),
            SizedBox(height: 15),
            LoginInput('Confirm Password', isPassword: true),
            SizedBox(height: 15),
            Row(
              children: [
                Checkbox(value: false, onChanged: null),
                Text('I agree'),
                LinkLikeTextButton('Terms of Service', onPressed: () {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GreyText('Already a member?').animate().fade().slideX(begin: -2, end: 0, duration: 300.ms),
                LinkLikeTextButton('Login Here', onPressed: () => Navigator.pop(context)).animate().fade().slideX(begin: 3, end: 0, duration: 300.ms),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
