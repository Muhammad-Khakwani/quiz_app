import 'package:flutter/material.dart';
import 'package:quiz_app/login_page.dart';
import 'package:quiz_app/sign_up_page.dart';
import 'package:quiz_app/theme/quiz_theme.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    const quizTheme = QuizTheme();
    return MaterialApp(
      title: 'Quiz',
      theme: quizTheme.toThemeData(),
      home: const SignUpPage(),
    );
  }
}
