import 'package:flutter/material.dart';
import 'package:parkdark/mainScreens/add_card.dart';
import 'package:parkdark/mainScreens/choose_card.dart';
import 'package:parkdark/widgets/my_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text(
          "Park Dark",
          style: TextStyle(
            fontFamily: "Lobster",
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AddtoCard()));
              },
              child: const Text("Карт нэмэх"),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ChooseCard()));
              },
              child: const Text("Карт Сонгох"),
            ),
          ],
        ),
      ),
    );
  }
}
