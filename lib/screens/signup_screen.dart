import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:invest_app/screens/createAccount_screen.dart';
import 'package:invest_app/screens/homePage.dart';
import 'package:invest_app/screens/loinScreen.dart';

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

// ignore: camel_case_types
class signupScreen extends StatefulWidget {
  const signupScreen({super.key});

  @override
  State<signupScreen> createState() => _signupScreenState();
}

// ignore: camel_case_types
class _signupScreenState extends State<signupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Asset1.png",
            ),
            Container(
              margin: const EdgeInsets.only(top: 44.27, left: 41),
              child: Text(
                "Stay on top of your finance with us.",
                style: GoogleFonts.dmSans(
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff000000)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 22, left: 41),
              child: const Text(
                "We are your new financial Advisors to recommed the best investments for you.",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff4F4F4F),
                    fontFamily: "SF UI Text"),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 60),
                width: 340,
                height: 58,
                decoration: const BoxDecoration(
                    color: Color(0xff31A062),
                    borderRadius: BorderRadius.all(Radius.circular(18))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 17, horizontal: 50),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CreateAccount_Screen()));
                      });
                    },
                    child: Text(
                      "Create Account",
                      style: GoogleFonts.dmSans(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
            Container(
                margin: const EdgeInsets.only(top: 15),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => loginPageScreen()));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Color(0xff31A062),
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        fontFamily: "SF UI Text"),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
