import 'package:flutter/material.dart';
import 'package:onepass/core/utils/colors.dart';

abstract class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(backgroundColor: Colors.white),
    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStatePropertyAll(AppColors.lightGrey),
      elevation: WidgetStatePropertyAll(0),
      hintStyle: WidgetStatePropertyAll(
        TextStyle(
          color: Colors.grey,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
    ),
  );
}
