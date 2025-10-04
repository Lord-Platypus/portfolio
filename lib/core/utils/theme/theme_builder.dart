import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/theme/themes.dart';

import 'app_colors.dart';

ThemeData buildTheme(AppColors colors) {
  return portfolioTheme.copyWith(
    scaffoldBackgroundColor: colors.background,
    appBarTheme: AppBarTheme(
      backgroundColor: colors.primary,
      foregroundColor: colors.onPrimary,
    ),
    cardColor: colors.surface,
    dividerColor: colors.border,
    chipTheme: ChipThemeData(
      backgroundColor: colors.primary,
      labelStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: colors.onPrimary,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: colors.onPrimary),
      ),
    ),
    cardTheme: CardThemeData(
      color: colors.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: colors.border, width: 2),
      ),
      elevation: 0,
      margin: EdgeInsets.zero,
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: colors.onPrimary,
      labelStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: colors.onPrimary,
      ),
      dividerColor: colors.border,
      dividerHeight: 2,
      unselectedLabelColor: colors.border,
      indicator: BoxDecoration(
        color: colors.border,
        borderRadius: BorderRadius.circular(8),
      ),
      tabAlignment: TabAlignment.start,
      labelPadding: EdgeInsets.symmetric(horizontal: 4),
      splashBorderRadius: BorderRadius.circular(8),
    ),
    extensions: [colors],
  );
}
