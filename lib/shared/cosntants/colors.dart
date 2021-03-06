import 'package:flutter/material.dart';

class AppColors {
  static final Map<int, Color> maindColorMap = {
    50: Color.fromRGBO(226, 0, 116, .1),
    100: Color.fromRGBO(226, 0, 116, .2),
    200: Color.fromRGBO(226, 0, 116, .3),
    300: Color.fromRGBO(226, 0, 116, .4),
    400: Color.fromRGBO(226, 0, 116, .5),
    500: Color.fromRGBO(226, 0, 116, .6),
    600: Color.fromRGBO(226, 0, 116, .7),
    700: Color.fromRGBO(226, 0, 116, .8),
    800: Color.fromRGBO(226, 0, 116, .9),
    900: Color.fromRGBO(226, 0, 116, 1),
  };
  static final MaterialColor primaryColor =
      MaterialColor(0xFFE20074, maindColorMap);

  static final Color purple = Color(0xFF8257E5);
  static final Color white = Color(0xFFFFFFFF);
  static final Color black = Color(0xFF514766);
  static final Color grey = Color(0xFF6E6680);
  static final Color lightGrey = Color(0xFFA6A1B2);
  static final Color border = Color(0xFFE1E1E6);
  static final Color chartSecondary = Color(0xFFE1E6E3);
  static final Color chartPrimary = darkGreen;

  //Greens
  static final Color lightGreen = Color(0xFFE1F5EC);
  static final Color green = Color(0xFFB8DBCB);
  static final Color darkGreen = Color(0xFF04D361);

  //Reds
  static final Color lightRed = Color(0xFFF5E9EC);
  static final Color red = Color(0xFFE5C5CF);
  static final Color darkRed = Color(0xFFCC3750);
}
