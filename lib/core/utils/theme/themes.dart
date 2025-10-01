import 'package:flutter/material.dart';

import 'app_colors.dart';

final redColors = AppColors(
  background: Color(0xFF1E0E12),
  surface: Color(0xFF3B1E25),
  surfaceAlt: Color(0xFF522F36),
  primary: Color(0xFFFFA726),
  onPrimary: Color(0xFF1E0E12),
  secondary: Color(0xFF795548),
  onSecondary: Color(0xFFFFFFFF),
  text: Color(0xFFFFFFFF),
  textMuted: Color(0xFFBBBBBB),
  border: Color(0xFF444444),
);

final purpleColors =  AppColors(
  background: Color(0xFFFFFFFF),
  surface: Color(0xFFF5F5FF),
  surfaceAlt: Color(0xFFE0E0FF),
  primary: Color(0xFF6B4EFF),
  onPrimary: Color(0xFFFFFFFF),
  secondary: Color(0xFFAAA5FF),
  onSecondary: Color(0xFF000000),
  text: Color(0xFF000000),
  textMuted: Color(0xFF666666),
  border: Color(0xFFCCCCCC),
);

final pdfPalette = const AppColors(
  background: Color(0xFFFFFFFF),
  surface: Color(0xFFFFFFFF),
  surfaceAlt: Color(0xFFF5F5F5),
  primary: Color(0xFF886F6B),
  onPrimary: Color(0xFFFFFFFF),
  secondary: Color(0xFFA99E9B),
  onSecondary: Color(0xFF0B0B0B),
  text: Colors.black,
  textMuted: Color(0xFFA99E9B),
  border: Colors.black,
);


final ThemeData portfolioTheme = ThemeData(
  textTheme: const TextTheme(
    // Main name (Hero Section)
    headlineLarge: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.5,
    ),

    // Role (e.g. Senior Flutter Developer)
    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),

    // Section titles (Experience, Technologies, etc.)
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),

    // Subsections (company, course, project)
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),

    // Body text (descriptions, details)
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      height: 1.5,
    ),

    // Slightly smaller normal text
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      height: 1.5,
    ),

    // Metadata (dates, location, email, phone, etc.)
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  ),
);
