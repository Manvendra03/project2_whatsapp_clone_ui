import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShowStatus extends StatelessWidget {
  final AssetImage image;

  const ShowStatus({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(image: image, fit: BoxFit.contain),
      ),
    );
  }
}
