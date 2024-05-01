import 'package:appointment/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static get light => ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
      ),
      brightness: Brightness.light,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      }));

  static get dark => ThemeData(
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
      ).copyWith(
        brightness: Brightness.dark,
      ),
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      }));
}
