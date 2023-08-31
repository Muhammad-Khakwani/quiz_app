import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizy/home_page.dart';
import 'package:quizy/statistics_page.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key, required this.index});

  final int index;

  void nav(int value, BuildContext context) {
    if (value == 1) {
      return;
    } else if (value == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const StatisticsPage(),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (value) {
        if (index != value) nav(value, context);
      },
      items: const [
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.house),
          label: "Main",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.calendarDay),
          label: "Daily Quiz",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.chartLine),
          label: "Statistics",
        ),
      ],
    );
  }
}
