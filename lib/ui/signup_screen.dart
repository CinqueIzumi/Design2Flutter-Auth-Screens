import 'package:auth_screens_challenge/widgets/animated_image.dart';
import 'package:auth_screens_challenge/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromRGBO(145, 131, 222, 1),
          Color.fromRGBO(160, 148, 227, 1),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: topPadding),
              SizedBox(height: 10),
              AnimatedImage(),
            ],
          ),
        ),
      ),
    );
  }
}
