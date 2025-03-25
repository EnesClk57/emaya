library app_colors;

import 'package:flutter/material.dart';

class AppColor {
  static Color black = const Color(0xFF000000);
  static Color white = const Color(0xFFFFFFFF);
  
  // thème light
  static Color lightBackGroundColor = const Color(0xFFFCF8EC);
  static Color lightPrimaryColor = const Color.fromARGB(255, 83, 146, 58);
  static Color lightCardColor = const Color.fromARGB(255, 216, 244, 192);
  static Color lightTextColor = const Color.fromARGB(255, 10, 19, 2);
  static Color lightCanvasColor = Colors.white;
  static Color lightIndicatorColor = const Color.fromARGB(255, 193, 245, 148);  // indicateur menu actif
  static Color lightNavBackGroundColor = const Color.fromARGB(255, 251, 242, 216);

  // thème dark
  static Color darkBackGroundColor = const Color(0xFF00001a);
  static Color darkPrimaryColor = const Color.fromARGB(255, 83, 146, 58);
  static Color darkCardColor = const Color.fromARGB(255, 13, 124, 47);
  static Color darkTextColor = const Color.fromARGB(255, 246, 247, 245);
  static Color darkCanvasColor = Colors.black;
  static Color darkIndicatorColor =  AppColor.darkPrimaryColor;  // indicateur menu actif
  static Color darkNavBackGroundColor = const Color.fromARGB(255, 2, 45, 16);

  static var red;
}
