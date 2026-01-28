import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  // Light Text Themes
  static TextTheme lightTextTheme = TextTheme(
    // Headlines
    headlineLarge: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),

    // Titles
    titleLarge: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),

    //Body
    bodyLarge: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: TextStyle().copyWith(
      color: Colors.black.withValues(alpha: 0.5),
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),

    //Labels
    labelLarge: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    labelMedium: TextStyle().copyWith(
      color: Colors.black.withValues(alpha: 0.5),
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  );

  //Dark Text THemes
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),

    // Titles
    titleLarge: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),

    // Body
    bodyLarge: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),

    bodySmall: TextStyle().copyWith(
      color: Colors.white.withValues(alpha: 0.5),
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),

    //Label
    labelLarge: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    labelMedium: TextStyle().copyWith(
      color: Colors.white.withValues(alpha: 0.5),
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  );
}
