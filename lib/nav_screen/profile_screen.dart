import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invest_app/widget/bankScreen.dart';

import '../widget/bottomScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: TextButton(
          onPressed: () {
            setState(() {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyAssetScreen()));
            });
          },
          child: Image.asset(
            "assets/images/Vector.png",
            width: 6,
            height: 12,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 230, bottom: 10),
              child: Text(
                "Profile",
                style: GoogleFonts.dmSans(
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff000000)),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/person.png",
                    width: 150,
                    height: 150,
                  ),
                  Text(
                    "Jonas Macroni",
                    style: GoogleFonts.dmSans(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff000000)),
                  ),
                  Text(
                    "Expert",
                    style: GoogleFonts.dmSans(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff000000)),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade100,
                    )
                  ]),
                  child: ListTile(
                    // tileColor: Colors.black,
                    // iconColor: Colors.black,
                    leading: Icon(Icons.contacts, color: Colors.black),
                    title: Text(
                      "Contact Info",
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing:
                        Icon(Icons.arrow_forward_ios, color: Colors.black),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade100,
                    )
                  ]),
                  child: ListTile(
                    leading:
                        Icon(Icons.import_export_rounded, color: Colors.black),
                    title: Text(
                      "Source of Funding Info",
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing:
                        Icon(Icons.arrow_forward_ios, color: Colors.black),
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade100,
                      )
                    ]),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const bankAccountInfo()));
                        });
                      },
                      child: ListTile(
                        leading:
                            Icon(Icons.account_balance, color: Colors.black),
                        title: Text(
                          "Bank Account Info",
                          style: TextStyle(color: Colors.black),
                        ),
                        trailing:
                            Icon(Icons.arrow_forward_ios, color: Colors.black),
                      ),
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade100,
                    )
                  ]),
                  child: ListTile(
                    leading: Icon(Icons.description, color: Colors.black),
                    title: Text(
                      "Document Info",
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing:
                        Icon(Icons.arrow_forward_ios, color: Colors.black),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade100,
                    )
                  ]),
                  child: ListTile(
                    leading: Icon(Icons.settings, color: Colors.black),
                    title: Text(
                      "Settings",
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing:
                        Icon(Icons.arrow_forward_ios, color: Colors.black),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
