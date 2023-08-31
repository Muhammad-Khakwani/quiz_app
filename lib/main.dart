import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizy/home_page.dart';
import 'package:quizy/theme/quiz_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    final quizTheme = QuizTheme();
    return MaterialApp(
      title: 'Quizy',
      theme: quizTheme.toThemeData(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
