import 'package:flutter/material.dart';
import 'package:quizy/theme/quiz_theme.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key, required this.text});

  final String text;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Center(
      child: SizedBox(
        height: screenSize.height * 0.075,
        width: screenSize.width * 0.9,
        child: TextButton(
          child: Text(
            QuizTheme.capitalzed(widget.text),
            style: TextStyle(
              fontSize: screenSize.height * 0.03,
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
