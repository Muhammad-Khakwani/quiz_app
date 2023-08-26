import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class QuizTheme {
  static const Color primaryColor = Color(0xFFFFB933);
  static const Color seondaryColor = Color(0xFFF0F0F0);
  static const Color errorColor = Color(0xFFFF3838);

  ThemeData toThemeData() {
    return ThemeData(
      useMaterial3: true,
      textTheme: GoogleFonts.robotoCondensedTextTheme(),
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        shadowColor: Colors.amber,
      ),
      inputDecorationTheme: InputDecorationTheme(
        errorStyle: const TextStyle(color: errorColor),
        contentPadding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        filled: true,
        fillColor: seondaryColor,
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: errorColor),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          disabledBackgroundColor: seondaryColor,
          disabledForegroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
