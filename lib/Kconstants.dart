import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color KgreenColor = Color(0XFF008069);
Color KwhiteGreyColor = Color(0XFFADD3CC);
TextStyle KtabBarText =
    GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500);

ThemeData KlightThemeData = new ThemeData(
  textTheme: TextTheme(
    headline1: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
    bodyText1: GoogleFonts.roboto(
        color: Colors.black, fontSize: 20, fontWeight: FontWeight.w300),
    bodyText2: GoogleFonts.roboto(
        color: Color(0XFF939799), fontSize: 16, fontWeight: FontWeight.w400),
  ),
  appBarTheme: AppBarTheme(backgroundColor: KgreenColor),
  tabBarTheme: TabBarTheme(
    unselectedLabelColor: KwhiteGreyColor,
    labelColor: Colors.white,
    indicatorSize: TabBarIndicatorSize.tab,
    indicator: UnderlineTabIndicator(insets: EdgeInsets.symmetric(vertical: 2)),
  ),
);

List<Widget> KtabBarList = [
  Icon(Icons.camera_alt_sharp),
  Container(
      width: 90,
      alignment: Alignment.center,
      child: Text(
        "Chats".toUpperCase(),
        style: KtabBarText,
      )),
  Container(
      width: 90,
      alignment: Alignment.center,
      child: Text(
        "Status".toUpperCase(),
        style: KtabBarText,
      )),
  Container(
      width: 90,
      alignment: Alignment.center,
      child: Text(
        "Calls".toUpperCase(),
        style: KtabBarText,
      )),
];
