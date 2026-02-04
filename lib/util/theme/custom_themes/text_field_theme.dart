import 'package:flutter/material.dart';
import 'package:t_shop/util/constants/colors.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightTextFormFieldTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: TColors.grey,
    suffixIconColor: TColors.grey,
    //constraints: BoxConstraints.expand(height: 14.inputFieldHeight),
    labelStyle: TextStyle().copyWith(fontSize: 14, color: TColors.black),
    hintStyle: TextStyle().copyWith(fontSize: 14, color: TColors.black),
    errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle().copyWith(
      color: TColors.black.withValues(alpha: 0.8),
    ),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: TColors.grey),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: TColors.grey),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: TColors.white),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: TColors.red),
    ),

    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: Colors.orange),
    ),
  );

  static InputDecorationTheme darkTextFormFieldTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: TColors.grey,
    suffixIconColor: TColors.grey,
    //constraints: BoxConstraints.expand(height: 14.inputFieldHeight),
    labelStyle: TextStyle().copyWith(fontSize: 14, color: TColors.white),
    hintStyle: TextStyle().copyWith(fontSize: 14, color: TColors.white),
    errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle().copyWith(
      color: TColors.black.withValues(alpha: 0.8),
    ),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: TColors.grey),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: TColors.grey),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: TColors.white),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: TColors.red),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: Colors.orange),
    ),
  );
}
