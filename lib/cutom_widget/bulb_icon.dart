import 'package:flutter/material.dart';

class BulbIcon extends StatelessWidget {
  const BulbIcon(
      {super.key,
      this.color = Colors.black,
      this.circleRadius = 10.0,
      this.lineHeight});

  final Color color;
  final double circleRadius;
  final double? lineHeight;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 1.0,
        height: lineHeight ?? MediaQuery.of(context).size.height * 0.2,
        decoration: BoxDecoration(color: color),
      ),
      Container(
        width: circleRadius,
        height: circleRadius,
        decoration: BoxDecoration(
            shape: BoxShape.circle, border: Border.all(color: color)),
      )
    ]);
  }
}
