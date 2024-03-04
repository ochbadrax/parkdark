import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:parkdark/widgets/custom_text_field.dart';
import 'package:http/http.dart' as http;

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();

  Future<void> _registerUser() async {
    String apiUrl = 'https://aboutassam.in/flutter_app/api/register.php';
    try {
      var response = await http.post(Uri.parse(apiUrl), body: {
        'user_name': nameTextEditingController.text,
        'user_email': emailTextEditingController.text,
        'user_mobile': phoneTextEditingController.text,
        'user_password': passwordTextEditingController.text,
      });
      var responseData = json.decode(response.body);
      if (responseData['success']) {
        // Registration successful, handle navigation or any other action
        Fluttertoast.showToast(msg: 'Амжилттай бүртгэгдлээ!');
        nameTextEditingController.clear();
        emailTextEditingController.clear();
        phoneTextEditingController.clear();
        passwordTextEditingController.clear();
        confirmPasswordTextEditingController.clear();
      } else {
        // Registration failed, show error message
        Fluttertoast.showToast(msg: 'Алдаа: ${responseData['message']}');
        nameTextEditingController.clear();
        emailTextEditingController.clear();
        phoneTextEditingController.clear();
        passwordTextEditingController.clear();
        confirmPasswordTextEditingController.clear();
      }
    } catch (e) {
      Fluttertoast.showToast(msg: 'Алдаа :: $e');
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
                  textEditingController: nameTextEditingController,
                  iconData: Icons.person,
                  hintString: "Нэрээ оруулна уу",
                  isObsecre: false,
                  enabled: true,
                ),
                CustomTextField(
                  textEditingController: emailTextEditingController,
                  iconData: Icons.email,
                  hintString: "Цахим шуудан",
                  isObsecre: false,
                  enabled: true,
                ),
                CustomTextField(
                  textEditingController: phoneTextEditingController,
                  iconData: Icons.call,
                  hintString: "Утасны дугаар",
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
                CustomTextField(
                  textEditingController: confirmPasswordTextEditingController,
                  iconData: Icons.lock,
                  hintString: "Нууц үгээ давт",
                  isObsecre: true,
                  enabled: true,
                ),
                ElevatedButton(
                  onPressed: () {
                    _registerUser();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                  ),
                  child: const Text(
                    "Бүртгүүлэх",
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
