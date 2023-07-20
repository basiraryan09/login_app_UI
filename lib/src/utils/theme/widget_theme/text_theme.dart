import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/constants/colors.dart';

class AppTextTheme{
  static TextTheme lightTextTheme = TextTheme(
          headline1: GoogleFonts.montserrat(fontSize: 28, fontWeight: FontWeight.bold, color: appDarkColor),
          headline2: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.w700, color: appDarkColor),
          headline3: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w700, color: appDarkColor),
          headline4: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600, color: appDarkColor),
          headline6: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, color: appDarkColor),
        bodyText1: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.normal, color: appDarkColor),
        bodyText2: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.normal, color: appDarkColor),
          headline5: GoogleFonts.montserrat(color: Colors.black87, fontWeight: FontWeight.bold),
          subtitle1: GoogleFonts.poppins(color: Colors.black87, fontSize: 24));

  static TextTheme darkTextTheme = TextTheme(

      headline1: GoogleFonts.montserrat(fontSize: 28, fontWeight: FontWeight.bold, color: appWhiteColor),
      headline2: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.w700, color: appWhiteColor),
      headline3: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w700, color: appWhiteColor),
      headline4: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600, color: appWhiteColor),
      headline6: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, color: appWhiteColor),
      bodyText1: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.normal, color: appWhiteColor),
      bodyText2: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.normal, color: appWhiteColor),
      headline5: GoogleFonts.montserrat(color: appWhiteColor, fontWeight: FontWeight.bold),
      subtitle1: GoogleFonts.poppins(color: appWhiteColor, fontSize: 24));
}