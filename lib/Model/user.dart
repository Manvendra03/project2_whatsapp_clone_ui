import 'package:flutter/cupertino.dart';

class UserProfile {
  final String UserName;
  final String LastMessageTime;
  final AssetImage ProfileImage;
  final String LastMessage;

  UserProfile(
      {required this.UserName,
      required this.LastMessageTime,
      required this.ProfileImage,
      required this.LastMessage});
}

class StatusData {
  final String UserName;
  final String DateTime;
  final AssetImage StatusImage;

  StatusData(this.UserName, this.DateTime, this.StatusImage);
}
