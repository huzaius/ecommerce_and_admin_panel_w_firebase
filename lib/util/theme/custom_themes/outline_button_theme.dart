import 'package:flutter/material.dart';
import 'package:t_shop/util/constants/colors.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._(); //TO avoid class initialization

  //Initialized once at runtime and cannot be changed
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.black,
      side: BorderSide(color: TColors.red),
      textStyle: TextStyle(
        fontSize: 16,
        color: TColors.black,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.white,
      side: BorderSide(color: TColors.red),
      textStyle: TextStyle(
        fontSize: 16,
        color: TColors.black,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    ),
  );
}
