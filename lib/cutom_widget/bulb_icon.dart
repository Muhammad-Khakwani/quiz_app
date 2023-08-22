import 'package:flutter/material.dart';

class BulbIcon extends StatelessWidget {
  const BulbIcon(
      {super.key,
      this.color = Colors.black,
      this.circleRadius = 10.0,
      this.lineHeight = 100.0});

  final Color color;
  final double circleRadius;
  final double lineHeight;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        Container(
          width: 1.0,
          height: lineHeight,
          decoration: BoxDecoration(color: color),
        ),
        Container(
          width: circleRadius,
          height: circleRadius,
          decoration: BoxDecoration(
              shape: BoxShape.circle, border: Border.all(color: color)),
        )
      ]),
    );
  }
}
