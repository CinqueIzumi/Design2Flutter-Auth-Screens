import 'package:auth_screens_challenge/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LargeButton extends StatelessWidget {
  LargeButton(
      {required this.label, required this.color, required this.onPressed});

  final Text label;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: onPressed,
            child: Padding(padding: EdgeInsets.all(26), child: label),
            style: OutlinedButton.styleFrom(
              backgroundColor: this.color,
              primary: Colors.white,
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(37))),
            ),
          ),
        ),
      ],
    );
  }
}
