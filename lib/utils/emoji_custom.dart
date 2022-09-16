import 'package:flutter/material.dart';

class EmojiCustom extends StatelessWidget {
  final String emojiIcon;

  const EmojiCustom({Key? key, required this.emojiIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.blue[600],
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(16),
        child: Text(
          emojiIcon,
          style: TextStyle(
            fontSize: 30,
          ),
        ));
  }
}
