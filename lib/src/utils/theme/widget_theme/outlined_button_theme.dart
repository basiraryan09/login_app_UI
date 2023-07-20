

import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dar.dart';

class AppOutlinedButtonTheme {

  AppOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: appSecondaryColor,
        side: BorderSide(color: appSecondaryColor),
        padding: EdgeInsets.symmetric(vertical: appButtonHeight)
    ),

  );



  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: appWhiteColor,
        side: BorderSide(color: appWhiteColor),
        padding: EdgeInsets.symmetric(vertical: appButtonHeight)
    ),
  );

}