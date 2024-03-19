import 'package:flutter/material.dart';
import 'package:portfolio/config/colors/app_colors.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  primaryColor: AppColors.mainBackground,
  primaryColorDark: AppColors.mainBackground,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.mainText,
    surface: AppColors.mainYellow,
    primary: AppColors.mainBackground,
    secondary: AppColors.mainContent,
  ),
  tabBarTheme: const TabBarTheme(
    unselectedLabelColor: AppColors.mainText,
    indicatorColor: AppColors.mainYellow,
    dividerColor: AppColors.mainText,
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: AppColors.mainYellow,
  ),
  textTheme: const TextTheme(
    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: AppColors.mainText,
    ),
    bodyMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: AppColors.mainText,
    ),
  ),
);
