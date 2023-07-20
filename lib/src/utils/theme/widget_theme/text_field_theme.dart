import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';

class AppTextFormFieldTheme{
  AppTextFormFieldTheme._();

  // -- light Form Field
  static InputDecorationTheme lightInputDecorationTheme = const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: appSecondaryColor,
    floatingLabelStyle: TextStyle(color: appSecondaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 2, color: appSecondaryColor
      )
    )
  );


  // --dark form Field
  static InputDecorationTheme darkInputDecorationTheme = const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: appPrimaryColor,
    floatingLabelStyle: TextStyle(color: appPrimaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 2, color: appPrimaryColor
      ),
    ),
  );


}