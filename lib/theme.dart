import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

ThemeData theme() {
  return ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    textTheme: TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor),
    ),
    //??? Không hiểu VisualDensity dùng làm gì
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
