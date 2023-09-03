import 'package:flutter/material.dart';
import 'package:invest_app/widget/bankScreen.dart';
import 'package:invest_app/screens/signup_screen.dart';
import 'package:invest_app/widget/bottomScreen.dart';

import '../nav_screen/nav_screen.dart';

// ignore: camel_case_types
class splashScreen extends StatefulWidget {
  const splashScreen({super.key});
  @override
  State<splashScreen> createState() => _splashScreenState();
}

// ignore: camel_case_types
class _splashScreenState extends State<splashScreen> {
  // ignore: non_constant_identifier_names
  void SwitchToSignUpScreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const signupScreen()));
  }

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), SwitchToSignUpScreen);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 139,
                height: 92,
              ),
            ],
          )
        ],
      ),
    );
  }
}
