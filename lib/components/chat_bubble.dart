import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String user;
  final String message;
  final Color color;
  const ChatBubble(
      {super.key,
      required this.message,
      required this.color,
      required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 260,
      ),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          8,
        ),
        color: color,
      ),
      child: Column(
        children: [
          Text(
            user.split('@')[0].toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            message,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
