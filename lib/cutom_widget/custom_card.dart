import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizy/theme/quiz_theme.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    double cardSize = MediaQuery.of(context).size.width * 0.435;

    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          hover = value;
        });
      },
      hoverColor: null,
      child: Container(
        height: cardSize * 0.64,
        width: cardSize,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: hover ? QuizTheme.primaryColor : QuizTheme.seondaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(cardSize * 0.1),
          ),
        ),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            FaIcon(
              widget.icon,
              size: cardSize * 0.4,
              color: hover
                  ? QuizTheme.primaryColor.withGreen(150)
                  : Colors.grey.shade400,
            ),
            Text(
              QuizTheme.capitalzed(widget.text),
              style: TextStyle(
                color: hover ? Colors.white : null,
                fontSize: cardSize * 0.13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
