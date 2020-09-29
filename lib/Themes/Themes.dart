import 'package:flutter/material.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: Color(0xff000000),
    indicatorColor: Color(0xffFFFFFF),
    canvasColor: Colors.white,
    accentColor: Color(0xffdcdde1),
  );
}
