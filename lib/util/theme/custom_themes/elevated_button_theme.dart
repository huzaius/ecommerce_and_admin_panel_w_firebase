import 'package:flutter/material.dart';
import 'package:t_shop/util/constants/colors.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();
  // "const" for values known at compile time that will never change.
  // "final" for values determined at runtime that should not change after initialization.
  // Light Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.white,
      backgroundColor: TColors.primary,
      disabledBackgroundColor: TColors.grey,
      disabledForegroundColor: TColors.grey,
      side: BorderSide(color: TColors.primary),
      padding: EdgeInsets.symmetric(vertical: 20),
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: TColors.white,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

  // Dark Theme Button
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.white,
      backgroundColor: TColors.primary,
      disabledBackgroundColor: TColors.grey,
      disabledForegroundColor: TColors.grey,
      side: BorderSide(color: TColors.primary),
      padding: EdgeInsets.symmetric(vertical: 20),
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: TColors.white,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}
