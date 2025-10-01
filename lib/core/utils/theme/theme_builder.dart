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
    extensions: [colors],
  );
}
