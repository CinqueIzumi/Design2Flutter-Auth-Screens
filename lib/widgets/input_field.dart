import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final bool isPassword;
  final TextEditingController controller;
  final String label;
  final ImageIcon icon;

  InputTextField({
    required this.isPassword,
    required this.controller,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: this.isPassword,
      controller: this.controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(26),
        fillColor: Colors.white,
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(37),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(37),
          borderSide: BorderSide(color: Colors.white),
        ),
        labelText: this.label,
        labelStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 15,
          color: Color(0xFF3C3C43),
        ),
        prefixIcon: this.icon,
      ),
    );
  }
}
