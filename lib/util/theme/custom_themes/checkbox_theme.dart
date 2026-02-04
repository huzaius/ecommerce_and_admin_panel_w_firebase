import 'package:flutter/material.dart';
import 'package:t_shop/util/constants/colors.dart';

class TCheckboxTheme {
  TCheckboxTheme._(); //TO avoid creating instances

  //light theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return TColors.white;
      }
      return TColors.black;
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return TColors.primary;
      }
      return Colors.transparent;
    }),
  );

  //dark theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return TColors.white;
      }
      return TColors.black;
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return TColors.primary;
      }
      return Colors.transparent;
    }),
  );
}
