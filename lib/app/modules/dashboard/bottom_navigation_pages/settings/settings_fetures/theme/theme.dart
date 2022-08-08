import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Themes {
  static final lightTheme = ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          toolbarTextStyle: TextStyle(color: Colors.red)),
      primaryColor: Colors.blueGrey[300]);
  static final darkTheme = ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          toolbarTextStyle: TextStyle(color: Colors.yellow)),
      primaryColor: Colors.blueGrey[800]);
}
