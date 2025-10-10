import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'themes.dart';

ThemeData buildTheme(AppColors colors) {
  return portfolioTheme.copyWith(
    scaffoldBackgroundColor: colors.background,
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: colors.primary,
      strokeCap: StrokeCap.round,
      strokeWidth: 5,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: colors.primary,
      foregroundColor: colors.onPrimary,
    ),
    cardColor: colors.surface,
    dividerTheme: DividerThemeData(
      color: colors.onSecondary,
      radius: BorderRadius.circular(16),
      space: 64,
      thickness: 1,
    ),
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
        borderRadius: BorderRadius.circular(16),
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
        borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
      ),
      tabAlignment: TabAlignment.start,
      labelPadding: const EdgeInsets.symmetric(horizontal: 4),
      splashBorderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        backgroundColor: WidgetStatePropertyAll(colors.primary),
        foregroundColor: WidgetStatePropertyAll(colors.secondary),
      ),
    ),

    extensions: [colors],
  );
}
