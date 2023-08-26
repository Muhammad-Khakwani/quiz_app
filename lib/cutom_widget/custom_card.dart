import 'package:flutter/material.dart';
import 'package:quiz_app/theme/quiz_theme.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({super.key});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    double cardSize = 100;

    return Material(
      child: Center(
        child: Container(
          height: cardSize,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: QuizTheme.seondaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(cardSize * 0.2),
                ),
              ),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Icon(
                    Icons.language,
                    size: cardSize * 0.7,
                    color: Colors.grey.shade400,
                  ),
                  Text(
                    "Online Quiz",
                    style: TextStyle(
                      fontSize: cardSize * 0.2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
