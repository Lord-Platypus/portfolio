import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData buildTheme(AppColors colors) {
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: colors.background,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 16),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: colors.primary,
      foregroundColor: colors.onPrimary,
    ),
    cardColor: colors.surface,
    dividerColor: colors.border,
    extensions: [colors],
  );
}
