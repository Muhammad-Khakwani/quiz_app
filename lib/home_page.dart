import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizy/cutom_widget/custom_button.dart';
import 'package:quizy/cutom_widget/custom_card.dart';
import 'package:quizy/cutom_widget/custom_list_tile.dart';
import 'package:quizy/theme/quiz_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * 0.05,
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.gear,
                          color: QuizTheme.primaryColor,
                        ),
                      )
                    ],
                  ),
                  CustomListTile(
                    circularImage: AssetImage("assets/avatar.png"),
                    title: "muhammad khan",
                  ),
                  CustomButton(
                    text: "start practice",
                  ),
                  const Text(
                    "Play Zone",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Wrap(
                    spacing: screenSize.width * 0.03,
                    runSpacing: screenSize.width * 0.03,
                    runAlignment: WrapAlignment.center,
                    children: [
                      CustomCard(
                        text: "online quiz",
                        icon: FontAwesomeIcons.battleNet,
                      ),
                      CustomCard(
                        text: "1 vs 1 battle",
                        icon: FontAwesomeIcons.restroom,
                      ),
                      CustomCard(
                        text: "group battle",
                        icon: FontAwesomeIcons.users,
                      ),
                      CustomCard(
                        text: "random battle",
                        icon: FontAwesomeIcons.shuffle,
                      ),
                    ],
                  ),
                  const Text(
                    "Test Zone",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Wrap(
                    spacing: screenSize.width * 0.03,
                    runSpacing: screenSize.width * 0.03,
                    runAlignment: WrapAlignment.center,
                    children: [
                      CustomCard(
                        text: "daily quiz",
                        icon: FontAwesomeIcons.anchor,
                      ),
                      CustomCard(
                        text: "old online test",
                        icon: FontAwesomeIcons.calendarDays,
                      ),
                    ],
                  ),
                  const Text(
                    "Contest Zone",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Wrap(
                    spacing: screenSize.width * 0.03,
                    runSpacing: screenSize.width * 0.03,
                    runAlignment: WrapAlignment.center,
                    children: [
                      CustomCard(
                        text: "free contest",
                        icon: Icons.aod_outlined,
                      ),
                      CustomCard(
                        text: "paid contest",
                        icon: FontAwesomeIcons.magnifyingGlassDollar,
                      ),
                    ],
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
