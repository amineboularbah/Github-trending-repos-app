import 'package:flutter/material.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      primaryColor: Color(0xffFFFFFF),
      indicatorColor: Color(0xff000000),
      scaffoldBackgroundColor: Color(0xfff4f4f4),
      canvasColor: Colors.grey,
      accentColor: Color(0xff000000),
      appBarTheme: AppBarTheme(
          textTheme: TextTheme(
              headline6: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: Colors.black)),
          color: Colors.transparent,
          elevation: 0),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey));
}

ThemeData darkTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      primaryColor: Colors.black,
      indicatorColor: Colors.black,
      cardColor: Color(0xff212121),
      scaffoldBackgroundColor: Color(0xff333333),
      canvasColor: Colors.white,
      accentColor: Color(0xffffffff),
      appBarTheme: AppBarTheme(
          textTheme: TextTheme(
              headline6: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: Colors.white)),
          color: Colors.transparent,
          elevation: 0),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey));
}
