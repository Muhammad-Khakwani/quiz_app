import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class QuizTheme {
  static const Color primaryColor = Color(0xFFFFB933);
  static const Color seondaryColor = Color(0xFFF0F0F0);
  static const Color errorColor = Color(0xFFFF3838);

  static String initials(String text) {
    String string = text[0].toUpperCase();
    bool isSpace = false;

    for (int i = 1; i < text.length; i++) {
      var char = text[i];

      if (isSpace) {
        char = char.toUpperCase();
        string += char;
        break;
      }

      if (char == " ") {
        isSpace = true;
      }
    }

    return string;
  }

  static String capitalzed(String text) {
    String string = text[0].toUpperCase();
    bool isSpace = false;

    for (int i = 1; i < text.length; i++) {
      var char = text[i];

      if (isSpace) {
        char = char.toUpperCase();
        isSpace = false;
      }

      if (char == " " && !isSpace) {
        isSpace = true;
      }

      string += char;
    }

    return string;
  }

  ThemeData toThemeData() {
    return ThemeData(
      useMaterial3: true,
      textTheme: GoogleFonts.robotoCondensedTextTheme(),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: seondaryColor,
        selectedItemColor: primaryColor,
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
