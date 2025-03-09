import 'package:flutter/material.dart';
import 'package:memoplace/shared/theme/components_theme/buttons_theme.dart';
import 'package:memoplace/shared/theme/constants/app_colors.dart';

class AppTheme {
   static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.accent,
      surface: AppColors.background,
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  elevatedButtonTheme: ButtonsTheme.elevatedButtonLightTheme,
  appBarTheme: AppBarTheme(
          color: AppColors.primary,
          iconTheme: IconThemeData(color: AppColors.textSecondary),
          titleTextStyle: TextStyle(color: AppColors.textSecondary, fontSize: 20)
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(size: 30),
          unselectedIconTheme: IconThemeData(size: 30),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: AppColors.dark,
          unselectedItemColor: AppColors.secondary,
          backgroundColor: AppColors.primary,
        )
  );



}