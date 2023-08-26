import 'package:flutter/material.dart';
import 'package:quiz_app/cutom_widget/custom_card.dart';
import 'package:quiz_app/theme/quiz_theme.dart';

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
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ListTile(
                  leading: CircleAvatar(
                    foregroundImage: AssetImage("assets/avatar.jpg"),
                  ),
                  title: Text(
                    "Muhammad Khan",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.book),
                      Text(
                        "65981",
                        style: TextStyle(
                          color: QuizTheme.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Start Practice"),
                ),
                const Text("Play Zone"),
                for (int i = 0; i < 2; i++)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomCard(
                        text: "1 Vs 1 Battle",
                        cardSize: screenSize.height * 0.15,
                        icon: Icons.air,
                      ),
                      CustomCard(
                        text: "1 Vs 1 Battle",
                        cardSize: screenSize.height * 0.15,
                        icon: Icons.air,
                      ),
                    ],
                  ),
                const Text("Test Zone"),
                const Text("Contest Zone"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
