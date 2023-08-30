import 'package:flutter/material.dart';
import 'package:quizy/theme/quiz_theme.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    this.circularImage,
    required this.title,
  });

  final ImageProvider<Object>? circularImage;
  final String title;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.width * 0.05,
        vertical: screenSize.width * 0.02,
      ),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 10,
        children: [
          CircleAvatar(
            backgroundImage: circularImage,
            backgroundColor: (circularImage == null)
                ? Colors.deepPurple.withOpacity(0.5)
                : Colors.deepPurple,
            child: (circularImage == null)
                ? Text(
                    QuizTheme.initials(title),
                  )
                : null,
            radius: screenSize.width * 0.09,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                QuizTheme.capitalzed(title),
                style: TextStyle(
                  fontSize: screenSize.width * 0.055,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Wrap(
                spacing: 10,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Icon(
                    Icons.emoji_events_outlined,
                    size: screenSize.width * 0.068,
                  ),
                  Text(
                    "65874",
                    style: TextStyle(
                      fontSize: screenSize.width * 0.045,
                      color: QuizTheme.primaryColor,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
