import 'package:flutter/material.dart';
import 'package:memoplace/shared/theme/components/buttons_theme.dart';
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
      bodyLarge: TextStyle(color: AppColors.textPrimary, fontSize: 16),
      bodyMedium: TextStyle(color: AppColors.textPrimary, fontSize: 14),
      bodySmall: TextStyle(color: AppColors.textPrimary, fontSize: 12),
    ),
  elevatedButtonTheme: ButtonsTheme.elevatedButtonLightTheme,

  );
}