import 'package:flutter/material.dart';
import 'package:task/core/constants/app_colors.dart';

class AppTheme {
  static final ThemeData appTheme = ThemeData(
    primaryColor: AppColors.primary,
    primaryTextTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w200,
      ),
      titleMedium: TextStyle(fontSize: 18, color: Colors.white),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: TextStyle(fontSize: 18, color: Colors.white),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    fontFamily: 'Poppins', // Set default font family
  );
}
