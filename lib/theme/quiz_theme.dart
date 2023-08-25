import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class QuizTheme {
  const QuizTheme({
    this.primaryColor = const Color(0xFFFFB933),
    this.seondaryColor = const Color(0xFFF0F0F0),
  });

  final Color primaryColor, seondaryColor;

  ThemeData toThemeData() {
    return ThemeData(
      useMaterial3: true,
      textTheme: GoogleFonts.robotoCondensedTextTheme(),
      appBarTheme: AppBarTheme(backgroundColor: primaryColor),
      inputDecorationTheme: InputDecorationTheme(
          errorStyle: const TextStyle(color: Color(0xFFFF3838)),
          contentPadding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
          filled: true,
          fillColor: seondaryColor,
          border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(8)))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
      )),
    );
  }
}
