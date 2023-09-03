import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invest_app/screens/homePage.dart';

class MyAssetScreen extends StatefulWidget {
  const MyAssetScreen({super.key});

  @override
  State<MyAssetScreen> createState() => _MyAssetScreenState();
}

class _MyAssetScreenState extends State<MyAssetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => homePageScreen()));
                });
              },
              child: Image.asset(
                "assets/images/cross.png",
                width: 80,
                height: 80,
              ))
        ],
        backgroundColor: Colors.white,
        title: Text(
          "My Asset",
          style: GoogleFonts.lato(
            fontSize: 25,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 117),
            child: const Text("Your total asset portfolio"),
          ),
          Container(
            margin: EdgeInsets.only(left: 55),
            child: Row(
              children: [
                Text(
                  "N203,935",
                  style: GoogleFonts.dmSans(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Image.asset(
                    "assets/images/percent.png",
                    width: 70,
                    height: 70,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 150),
            child: Text(
              "Current Plans",
              style: GoogleFonts.dmSans(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset(
            "assets/images/golder.png",
          ),
          Center(
            child: Text(
              "See All →",
              style: GoogleFonts.dmSans(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.pink[400],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 200),
            child: Text(
              "History",
              style: GoogleFonts.dmSans(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ListTile(
              title: Text("Rp 200.000"),
              subtitle: Text('\"bUY APPL Stock\"'),
              //  '\"I love you 3000!\"'),
              trailing: Text("TUE 22 Jun 2020 "),
            ),
          ),
          Divider(
            thickness: 0.5,
            indent: 30,
            endIndent: 30,
            height: 5,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ListTile(
              title: Text(
                "Rp 150.000",
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('\"Sell TLKM Stock\"'),
              trailing: Text("TUE 22 Jun 2020 "),
            ),
          ),
          Divider(
            thickness: 0.5,
            indent: 30,
            endIndent: 30,
            height: 5,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ListTile(
              title: Text("Rp 1.240.000"),
              subtitle: Text('\"Sell FB Stock\"'),
              trailing: Text("TUE 22 Jun 2020 "),
            ),
          ),
          Divider(
            thickness: 1,
            indent: 30,
            endIndent: 30,
            height: 5,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ListTile(
              title: Text(
                "Rp 1.200.240",
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('\"Sell APPL Stock\"'),
              trailing: Text("TUE 22 Jun 2020 "),
            ),
          ),
          Divider(
            thickness: 1,
            indent: 30,
            endIndent: 30,
            height: 5,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
