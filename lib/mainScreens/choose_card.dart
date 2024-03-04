import 'package:flutter/material.dart';

class ChooseCard extends StatefulWidget {
  const ChooseCard({super.key});

  @override
  State<ChooseCard> createState() => _ChooseCardState();
}

class _ChooseCardState extends State<ChooseCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Choose card",
          style: TextStyle(
            fontFamily: "Lobster",
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
