import 'package:auth_screens_challenge/utils/constants.dart';
import 'package:auth_screens_challenge/widgets/animated_image.dart';
import 'package:auth_screens_challenge/widgets/input_field.dart';
import 'package:auth_screens_challenge/widgets/large_button.dart';
import 'package:auth_screens_challenge/widgets/or_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignUpScreen extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  AnimatedImage(),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Hi there!',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white.withOpacity(0.75),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Let\'s get started',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 37,
                  ),
                  InputTextField(
                    isPassword: false,
                    controller: _usernameController,
                    label: 'Username',
                    icon: ImageIcon(
                      AssetImage('assets/icons/user.png'),
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  InputTextField(
                    isPassword: true,
                    controller: _passwordController,
                    label: 'Password',
                    icon: ImageIcon(
                      AssetImage('assets/icons/key.png'),
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  LargeButton(
                    label: Text('Create an Account'),
                    color: kSignupDarkPurple,
                    onPressed: () {},
                  ),
                  OrDivider(),
                  LargeButton(
                    label: Text('Log In'),
                    color: Colors.white.withOpacity(0.28),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
