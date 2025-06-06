import 'package:flutter/material.dart';
import 'package:mobile_hydromelon/apps/constant/constant.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: kPrimaryColor,
    focusColor: kPrimaryColor,
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    fontFamily: "Poppins",
    scaffoldBackgroundColor: Colors.white,
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: Colors.orange.shade100,
      indicatorColor: Colors.orange.shade700,
    ),
  );
}

TextTheme textTheme() {
  return const TextTheme(
      bodyLarge: TextStyle(color: kTextColor1),
      bodyMedium: TextStyle(color: kTextColor2));
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 1,
    iconTheme: IconThemeData(color: Colors.grey),
  );
}
