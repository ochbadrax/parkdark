import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:parkdark/authScreens/auth_screen.dart';
import 'package:parkdark/mainScreens/add_card.dart';
import 'package:parkdark/mainScreens/choose_card.dart';
import 'package:parkdark/widgets/my_drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final myImg = [
    Image.asset("assets/images/u1.jpg"),
    Image.asset("assets/images/u1.jpg"),
    Image.asset("assets/images/u1.jpg"),
    Image.asset("assets/images/u1.jpg"),
    Image.asset("assets/images/u1.jpg")
  ];
  int myCurrentIndex = 0;
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  height: 200,
                  autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 1600),
                  autoPlayInterval: const Duration(seconds: 5),
                  enlargeCenterPage: true,
                  aspectRatio: 2,
                  onPageChanged: (index, reason) {
                    setState(() {
                      myCurrentIndex = index;
                    });
                  }
                ),
                items: myImg,
              ),
              const Text(
                "ParkDarkhan.mn",
                style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
