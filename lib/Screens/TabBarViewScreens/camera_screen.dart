import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_2_whatsapp_clone/Screens/TabBarViewScreens/chats_screen.dart';
import 'package:project_2_whatsapp_clone/Screens/home_screen.dart';

class Camera_Screen extends StatefulWidget {
  const Camera_Screen({Key? key}) : super(key: key);

  @override
  State<Camera_Screen> createState() => _Camera_ScreenState();
}

class _Camera_ScreenState extends State<Camera_Screen> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print("Failed to pick image $e");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    pickImage();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Stack(),
      onWillPop: () async {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: ((context) => HomeScreen())),
            (route) => false);
        return true;
      },
    );
  }
}
