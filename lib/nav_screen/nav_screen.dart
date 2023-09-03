import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invest_app/nav_screen/pr_Screen.dart';
import 'package:invest_app/nav_screen/profile_screen.dart';
import 'package:invest_app/nav_screen/trScreen.dart';

import '../screens/homePage.dart';

class HomePage_Screen extends StatefulWidget {
  List<String> plancardslist = ["gold", "silver", "platinum"];
  HomePage_Screen({super.key});

  @override
  State<HomePage_Screen> createState() => _HomePage_ScreenState();
}

// ignore: camel_case_types
class _HomePage_ScreenState extends State<HomePage_Screen> {
  int currentIndex = 0;

  List<Widget> _screens = [
    homePageScreen(),
    productScreen(),
    transactionscreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            selectedItemColor: Colors.green,
            selectedLabelStyle: TextStyle(color: Colors.green),
            unselectedItemColor: Colors.grey[700],
            unselectedLabelStyle: TextStyle(color: Colors.grey[700]),
            iconSize: 30,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: "Product",
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.import_export,
                  ),
                  label: "Trasaction"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: "Account"),
            ]),
        body: _screens[currentIndex]);
  }
}

