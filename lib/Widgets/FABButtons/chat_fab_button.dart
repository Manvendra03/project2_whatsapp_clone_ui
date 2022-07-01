import 'package:flutter/material.dart';

class ChatFABButton extends StatelessWidget {
  const ChatFABButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform.rotate(
        angle: 3.14159,
        child: Icon(
          Icons.message,
          size: 25,
          color: Colors.white,
        ),
      ),
      height: 55,
      width: 55,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 9, 9, 9).withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(1, 1),
          )
        ],
        color: Color.fromARGB(255, 0, 187, 152),
        shape: BoxShape.circle,
      ),
    );
  }
}
