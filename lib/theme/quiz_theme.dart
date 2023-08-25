import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class QuizTheme {
  const QuizTheme(
      {this.primaryColor = const Color(0xFFFFB933),
      this.seondaryColor = const Color(0xFFF0F0F0),
      this.errorColor = const Color(0xFFFF3838)});

  final Color primaryColor, seondaryColor, errorColor;

  ThemeData toThemeData() {
    return ThemeData(
      useMaterial3: true,
      textTheme: GoogleFonts.robotoCondensedTextTheme(),
      appBarTheme: AppBarTheme(backgroundColor: primaryColor),
      inputDecorationTheme: InputDecorationTheme(
          errorStyle: TextStyle(color: errorColor),
          contentPadding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
          filled: true,
          fillColor: seondaryColor,
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: errorColor),
              borderRadius: BorderRadius.circular(8)),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        disabledBackgroundColor: seondaryColor,
        disabledForegroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      )),
    );
  }
}
