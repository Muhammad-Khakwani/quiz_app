import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: const Drawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                leading: CircleAvatar(),
                title: Text("Muhammad Khan"),
                subtitle: Row(
                  children: [Icon(Icons.book), Text("65981")],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Start Practice"),
              ),
              const Text("Play Zone"),
              const Text("Test Zone"),
              const Text("Contest Zone"),
            ],
          ),
        ),
      ),
    );
  }
}
