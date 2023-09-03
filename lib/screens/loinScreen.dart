import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invest_app/screens/signup_screen.dart';

import '../nav_screen/nav_screen.dart';
import 'createAccount_screen.dart';
import 'homePage.dart';

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class loginPageScreen extends StatefulWidget {
  const loginPageScreen({super.key});

  @override
  State<loginPageScreen> createState() => _loginPageScreenState();
}

class _loginPageScreenState extends State<loginPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              setState(() {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const signupScreen()));
              });
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded,
                color: Colors.black),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 6),
                child: Text(
                  "Login Account",
                  style: GoogleFonts.dmSans(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff000000)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 25),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: TextField(
                      cursorColor: const Color(0xff828282),
                      controller: emailController,
                      style: GoogleFonts.dmSans(),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(25),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(width: 1, color: Color(0xff828282))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(width: 1, color: Colors.blueAccent)),
                        hintText: "Email Address",
                        hintStyle: TextStyle(
                          color: Color(0xff828282),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          //                 )
                        ),
                      )),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 25),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: TextField(
                      obscureText: true,
                      cursorColor: const Color(0xff828282),
                      controller: passwordController,
                      style: GoogleFonts.dmSans(),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(25),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(width: 1, color: Color(0xff828282))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(width: 1, color: Colors.blueAccent)),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Color(0xff828282),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          //                 )
                        ),
                      )),
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 17, horizontal: 50),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          if (emailController.text ==
                                  "mubashirkhi72@gmail.com" &&
                              passwordController.text == "123456789") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const homePageScreen()));
                          }
                        });
                      },
                      child: Text(
                        "login",
                        style: GoogleFonts.dmSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: 340,
                  height: 58,
                  decoration: const BoxDecoration(
                      color: Color(0xff31A062),
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 17, horizontal: 50),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgotten password",
                        style: GoogleFonts.dmSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ));
  }
}
