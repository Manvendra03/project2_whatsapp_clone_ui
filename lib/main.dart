import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_2_whatsapp_clone/Kconstants.dart';
import 'package:project_2_whatsapp_clone/Screens/show_chats.dart';
import 'package:project_2_whatsapp_clone/Screens/show_status.dart';

import 'Screens/home_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: KgreenColor,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: KgreenColor,
      theme: KlightThemeData,
      home: HomeScreen(),
    );
  }
}
