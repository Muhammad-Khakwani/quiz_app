import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizy/cutom_widget/custom_bottom_nav.dart';
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
      bottomNavigationBar: const CustomBottomNav(
        index: 0,
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
                        icon: const FaIcon(
                          FontAwesomeIcons.gear,
                          color: QuizTheme.primaryColor,
                        ),
                      )
                    ],
                  ),
                  const CustomListTile(
                    circularImage: AssetImage("assets/avatar.png"),
                    title: "muhammad khan",
                  ),
                  const CustomButton(
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
                    children: const [
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
                    children: const [
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
                    children: const [
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
