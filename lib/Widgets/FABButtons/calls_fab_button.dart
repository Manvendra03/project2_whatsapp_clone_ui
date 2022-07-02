import 'package:flutter/material.dart';

class CallFABButton extends StatelessWidget {
  const CallFABButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        Icons.add_call,
        size: 25,
        color: Colors.white,
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
