library theme;

import 'package:emaya/src/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:emaya/src/core/constants/constants.dart';

class AppTheme {
  static ThemeData lightThemeData = ThemeData(
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.lightBackGroundColor, 
      titleTextStyle: TextStyle(
        color: AppColor.black, 
        fontSize: 24, 
      ),
    ),
    scaffoldBackgroundColor: AppColor.lightBackGroundColor,
    primaryColor: AppColor.lightPrimaryColor,
    textTheme: TextTheme(
      labelSmall: TextStyle(color: AppColor.black, fontSize: 14),
      labelMedium: TextStyle(color: AppColor.black, fontSize: 18),
      labelLarge: TextStyle(color: AppColor.black,fontSize: 20),
    ),
    cardColor: AppColor.lightCardColor,
    canvasColor: AppColor.lightCanvasColor,
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColor.lightNavBackGroundColor,
      shadowColor: AppColor.darkTextColor,
      indicatorColor: AppColor.lightIndicatorColor,
      labelTextStyle:
          MaterialStateProperty.all(const TextStyle(color: Colors.black)),
      iconTheme: MaterialStateProperty.all(
        IconThemeData(color: AppColor.black),
      ),
    ),
  );

  static ThemeData darkThemeData = ThemeData(
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.darkBackGroundColor, 
      titleTextStyle: TextStyle(
        color: AppColor.white, 
        fontSize: 24, 
      ),
    ),
    scaffoldBackgroundColor: AppColor.darkBackGroundColor,
    primaryColor: AppColor.darkPrimaryColor,
    textTheme: TextTheme(
      labelSmall: TextStyle(color: AppColor.white),
      labelMedium: TextStyle(color: AppColor.white),
      labelLarge: TextStyle(color: AppColor.white),
    ),
    cardColor: AppColor.darkCardColor,
    canvasColor: AppColor.darkCanvasColor,
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColor.darkNavBackGroundColor,
      shadowColor: AppColor.lightTextColor,
      indicatorColor: AppColor.darkIndicatorColor,
      labelTextStyle:
          MaterialStateProperty.all(const TextStyle(color: Colors.white)),
      iconTheme: MaterialStateProperty.all(
        IconThemeData(color: AppColor.white),
      ),
    ),
  );
}
