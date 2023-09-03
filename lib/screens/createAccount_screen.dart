import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invest_app/screens/signup_screen.dart';

import '../nav_screen/nav_screen.dart';

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

// ignore: camel_case_types
class CreateAccount_Screen extends StatefulWidget {
  const CreateAccount_Screen({super.key});

  @override
  State<CreateAccount_Screen> createState() => _CreateAccount_ScreenState();
}

// ignore: camel_case_types
class _CreateAccount_ScreenState extends State<CreateAccount_Screen> {
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const signupScreen()));
            });
          },
          icon:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 6),
              child: Text(
                "Create an Account",
                style: GoogleFonts.dmSans(
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff000000)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 6),
              child: Text(
                "Invest and double your income now",
                style: GoogleFonts.dmSans(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff4F4F4F)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 60),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: TextField(
                  cursorColor: const Color(0xff828282),
                  controller: nameController,
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
                    hintText: "Full Name",
                    hintStyle: TextStyle(
                      color: Color(0xff828282),
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      //                 )
                    ),
                  ),
                ),
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
                margin: const EdgeInsets.only(top: 25),
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
                        // ignore: avoid_print
                        print(nameController.text);
                        // ignore: avoid_print
                        print(emailController.text);
                        // ignore: avoid_print
                        print(passwordController.text);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage_Screen()));
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
              margin: const EdgeInsets.only(top: 25),
              child: TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    "Already have an account?",
                    style: GoogleFonts.lato(color: const Color(0xff31A062)),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
