import 'package:flutter/material.dart';
import 'package:quizy/cutom_widget/custom_button.dart';
import 'package:quizy/cutom_widget/custom_card.dart';
import 'package:quizy/cutom_widget/custom_list_tile.dart';

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
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: const Drawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(screenSize.width * 0.05),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                        icon: Icons.aod_outlined,
                      ),
                      CustomCard(
                        text: "1 vs 1 battle",
                        icon: Icons.aod_outlined,
                      ),
                      CustomCard(
                        text: "group battle",
                        icon: Icons.aod_outlined,
                      ),
                      CustomCard(
                        text: "random battle",
                        icon: Icons.aod_outlined,
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
                        icon: Icons.aod_outlined,
                      ),
                      CustomCard(
                        text: "old online test",
                        icon: Icons.aod_outlined,
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
                        icon: Icons.aod_outlined,
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
