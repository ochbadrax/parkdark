import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:parkdark/mainScreens/home_screen.dart';
import 'package:parkdark/widgets/custom_text_field.dart';
import 'package:http/http.dart' as http;

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Future<void> _loginUser() async {
    String apiUrl = 'https://aboutassam.in/flutter_app/api/login.php';
    try {
      var response = await http.post(Uri.parse(apiUrl), body: {
        'user_email': emailTextEditingController.text,
        'user_password': passwordTextEditingController.text,
      });

      var responseData = json.decode(response.body);
      if (responseData['success']) {
        // Handle navigation or any other action
        print('Login successful');
        Navigator.push(context, MaterialPageRoute(builder: (c) => const HomeScreen()));
      } else {
        // Login failed, show error message
        print('Login failed: ${responseData['message']}');
      }
    } catch (e) {
      print('Error logging in: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/login.png",
                height: 270,
              ),
            ),
          ),
          Form(
            key: formKey,
            child: Column(
              children: [
                CustomTextField(
                  textEditingController: emailTextEditingController,
                  iconData: Icons.email,
                  hintString: "Цахим шуудан",
                  isObsecre: false,
                  enabled: true,
                ),
                CustomTextField(
                  textEditingController: passwordTextEditingController,
                  iconData: Icons.lock,
                  hintString: "Нууц үг",
                  isObsecre: true,
                  enabled: true,
                ),
                ElevatedButton(
                  onPressed: _loginUser,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                  ),
                  child: const Text(
                    "Нэвтрэх",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
