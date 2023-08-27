import 'package:flutter/material.dart';
import 'package:quiz_app/theme/quiz_theme.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 10,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/avatar.jpg"),
            radius: screenSize.width * 0.09,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Muhammad Khan",
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
