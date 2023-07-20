import 'package:flutter/material.dart';
import 'package:login_app/src/utils/theme/widget_theme/elevated_button_theme.dart';
import 'package:login_app/src/utils/theme/widget_theme/outlined_button_theme.dart';
import 'package:login_app/src/utils/theme/widget_theme/text_field_theme.dart';
import 'package:login_app/src/utils/theme/widget_theme/text_theme.dart';

class AppTheme {

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
    textTheme: AppTextTheme.lightTextTheme,
   outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
  );


  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
    textTheme: AppTextTheme.darkTextTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
  elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme
  );
}
