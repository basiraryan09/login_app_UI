

import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dar.dart';

class AppElevatedButtonTheme {

  AppElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: appWhiteColor,
        backgroundColor: appSecondaryColor,
        elevation: 0,
        side: BorderSide(color: appSecondaryColor),
        padding: EdgeInsets.symmetric(vertical: appButtonHeight)
    ),
  );



  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: appSecondaryColor,
        backgroundColor: appWhiteColor,
        elevation: 0,
        side: BorderSide(color: appSecondaryColor),
        padding: EdgeInsets.symmetric(vertical: appButtonHeight)
    ),
  );

}