// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({
    super.key,
    required this.text,
    required this.controller,
    required this.obscureText,
  });
  final String text;
  final TextEditingController controller;
  final bool obscureText;
  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        hintText: widget.text,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            20,
          ),
          borderSide: BorderSide(
            color: Colors.blue.withOpacity(0.2),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            20,
          ),
          borderSide: BorderSide(
            color: Colors.blue.withOpacity(0.2),
          ),
        ),
      ),
    );
  }
}
