import 'package:flutter/material.dart';
import 'package:quiz_app/cutom_widget/bulb_icon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFB933)),
        useMaterial3: true,
      ),
      home: BulbIcon(),
    );
  }
}
