import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'layout.dart';
import 'registerpage.dart';
import 'loginmaterial.dart';

class LoginPageWrapper extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPageWrapper> createState() => _LoginState();
}

class _LoginState extends State<LoginPageWrapper> {
  String username = '';
  //TODO password hashed storage

  @override
  Widget build(BuildContext context) {
    final double currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 25,
            children: [
              SizedBox(height: 80),
              Text('Display Width: ${currentWidth.toString()}', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
              Image.asset('images/codingchef.png', width: 150, height: 150)
                  .animate()
                  .fade()
                  .slideY(begin: -3, end: 0)
                  .animate(onPlay: (c) => c.repeat())
                  .shake(hz: 4, curve: Curves.easeInOutQuad, duration: 1800.ms),
              GreyText(
                'Welcome back',
                size: 20,
                weight: FontWeight.w500,
              ).animate().fade(delay: 500.ms).slideX(begin: -2, end: 0).tint(color: Colors.purple, delay: 1000.ms),
              GreyText('로그인하여 계속하기').animate().fade(delay: 500.ms).slideX(begin: 2, end: 0),
              LoginInput('Username', onSubmit: (u) => setState(() => username = u)),
              LoginInput('Password', isPassword: true),
              LoginContainer(
                width: 120,
                height: 50,
                bgColor: Colors.orange[300],
                radius: 20,
                icon: Icon(Icons.arrow_forward),
              ).animate().fade(delay: 1000.ms),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GreyText('계정이 없으신가요??').animate().fade().slideX(begin: -2, end: 0, duration: 300.ms),
                  TextButton(
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (c) => Layout(child: RegisterPage()))),
                    child: Text(
                      '지금 가입하기',
                      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ).animate().fade().slideX(begin: 3, end: 0, duration: 300.ms),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 30),
                  Text('20231023 전도현', style: TextStyle(fontSize: 11)).animate().fade().slideX(begin: -3, end: 0, delay: 300.ms),
                  LoginContainer(width: 50, bgColor: Colors.grey[200], imagePath: 'assets/image/pf.jpg')
                      .animate()
                      .slideX(begin: 3, end: 0, duration: 300.ms)
                      .animate(onPlay: (c) => c.repeat())
                      .shimmer(delay: 1000.ms, duration: 1800.ms),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
