import 'package:auth_screens_challenge/ui/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Screen Challenge',
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
    );
  }
}

