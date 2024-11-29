import 'package:flutter/material.dart';
import 'package:movie_app/core/configs/theme/app_color.dart';

class AppTheme {
  static final appTheme = ThemeData(
      primaryColor: AppColor.primary,
      scaffoldBackgroundColor: AppColor.background,
      brightness: Brightness.dark,
      snackBarTheme: SnackBarThemeData(
          backgroundColor: AppColor.background,
          contentTextStyle: TextStyle(color: AppColor.text)),
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColor.secondBackground,
          hintStyle:
              TextStyle(color: Color(0xffA7A7A7), fontWeight: FontWeight.w400),
          contentPadding: EdgeInsets.all(16),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.primary,
              elevation: 0,
              textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)))));
}