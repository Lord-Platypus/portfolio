import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

final ThemeData portfolioTheme = ThemeData(
  textTheme: GoogleFonts.interTextTheme().copyWith(
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


final minimalPalette = const AppColors(
  background: Color(0xFFFFFFFF),
  surface: Color(0xFFFFFFFF),
  surfaceAlt: Color(0xFFF5F5F5),
  primary: Color(0xFFE8431D),
  onPrimary: Color(0xFFFFFFFF),
  secondary: Colors.black,
  onSecondary: Color(0xFFFFFFFF),
  text: Colors.black,
  textMuted: Color(0xFFA99E9B),
  border: Colors.black,
);

