import 'package:flutter/material.dart';

class StatusFABButton extends StatelessWidget {
  const StatusFABButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          child: Icon(
            Icons.edit,
            size: 28,
            color: Color.fromARGB(255, 81, 80, 80),
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
            color: Color.fromARGB(255, 191, 194, 194),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Icon(
            Icons.camera_alt,
            size: 25,
            color: Colors.white,
          ),
          height: 60,
          width: 60,
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
        ),
      ],
    );
  }
}
