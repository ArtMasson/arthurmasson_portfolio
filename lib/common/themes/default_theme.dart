import 'package:arthurmasson_portfolio/common/themes/colors.dart';
import 'package:flutter/material.dart';

final defaultTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.backgroundColor,
  brightness: Brightness.light,
  primaryColor: AppColors.onBackgroundColor,
  accentColor: AppColors.onPurpleColor,
  fontFamily: 'Poppins',
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          primary: AppColors.purpleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ))),
);
