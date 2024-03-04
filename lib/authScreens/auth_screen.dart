import 'package:flutter/material.dart';
import 'package:parkdark/authScreens/signin_screen.dart';
import 'package:parkdark/authScreens/signup_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "Park Dark",
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
              fontFamily: "Lobster"
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                text: "Нэвтрэх",
              ),
              Tab(
                icon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                text: "Бүртгүүлэх",
              ),
            ],
            indicatorColor: Colors.white38,
            indicatorWeight: 5,
          ),
        ),
        body: Container(
          color: Colors.black87,
          child: const TabBarView(
            children: [
              SigninScreen(),
              SignupScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
