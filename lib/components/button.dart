
import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({
    super.key,
    required this.label,
    this.onPressed,
  });
  final String label;
  final Function()? onPressed;

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      height: 40,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      onPressed: widget.onPressed,
      color: Colors.blue.withOpacity(
        0.4,
      ),
      child: Text(
        widget.label,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
