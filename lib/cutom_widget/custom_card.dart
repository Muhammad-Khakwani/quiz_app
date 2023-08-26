import 'package:flutter/material.dart';
import 'package:quiz_app/theme/quiz_theme.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({
    super.key,
    required this.text,
    required this.cardSize,
    required this.icon,
  });

  final String text;
  final IconData icon;
  final double cardSize;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    double cardSize = widget.cardSize;

    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          hover = value;
        });
      },
      hoverColor: Colors.white,
      child: Container(
        height: cardSize,
        child: AspectRatio(
          aspectRatio: 3 / 2,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: hover ? QuizTheme.primaryColor : QuizTheme.seondaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(cardSize * 0.2),
              ),
            ),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Icon(
                  widget.icon,
                  size: cardSize * 0.7,
                  color: hover
                      ? QuizTheme.primaryColor.withGreen(150)
                      : Colors.grey.shade400,
                ),
                Text(
                  widget.text,
                  style: TextStyle(
                    color: hover ? Colors.white : null,
                    fontSize: cardSize * 0.2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
