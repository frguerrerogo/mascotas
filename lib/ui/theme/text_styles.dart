import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  //static String? get fontFamily => GoogleFonts.openSans().fontFamily;
  //static String? get fontFamily => GoogleFonts.yanoneKaffeesatz().fontFamily;

  // Google font
  //static TextStyle get defaultFontStyle => GoogleFonts.openSans();

  // if we need to change a style

  // Headline 1
  static TextStyle get headline1 => GoogleFonts.pacifico(
        color: Color.fromARGB(255, 255, 224, 130),
        fontSize: 60,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
      );

  // Headline 2
  static TextStyle get headline2 => GoogleFonts.pacifico(
        color: Color.fromARGB(255, 255, 224, 130),
        fontSize: 38,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
      );
  // Headline 3
  static TextStyle get headline3 => GoogleFonts.questrial(
        color: Colors.amber,
        fontSize: 21,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
      );
  static TextStyle get headline4 => GoogleFonts.pacifico(
        color: Colors.cyan[300],
        fontSize: 35,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal,
      );
  static TextStyle get headline5 => GoogleFonts.questrial(
        color: Colors.cyan,
        fontSize: 17,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
      );
  // Button
  static TextStyle get button => GoogleFonts.questrial(
        color: Colors.cyan,
        fontSize: 25,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
      );

  static TextTheme get textTheme => TextTheme(
        headline1: headline1,
        headline2: headline2,
        headline3: headline3,
        headline4: headline4,
        headline5: headline5,
        button: button,
      );
}
