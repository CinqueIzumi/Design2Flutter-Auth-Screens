import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          style: TextStyle(
            fontSize: 14,
            color: Colors.white.withOpacity(0.4),
          ),
          children: [
            TextSpan(text: '----------------------------------'),
            TextSpan(
              text: '    Or    ',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            TextSpan(text: '---------------------------------'),
          ]),
    );
  }
}
