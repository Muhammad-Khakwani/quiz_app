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
          contentPadding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          filled: true,
          fillColor: seondaryColor,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(8)))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(primaryColor),
        foregroundColor: MaterialStatePropertyAll(Colors.white),
      )),
    );
  }
}
