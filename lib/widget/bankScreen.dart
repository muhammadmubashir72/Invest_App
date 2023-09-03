import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invest_app/nav_screen/profile_screen.dart';

class bankAccountInfo extends StatefulWidget {
  const bankAccountInfo({super.key});

  @override
  State<bankAccountInfo> createState() => _bankAccountInfoState();
}

class _bankAccountInfoState extends State<bankAccountInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Bank of Account Info",
          style: GoogleFonts.lato(
              fontWeight: FontWeight.w700, color: Colors.black, fontSize: 20),
        ),
        leading: IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {
            setState(() {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()));
            });
          },
          icon:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            width: 350,
            height: 80,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.shade100,
              )
            ]),
            child: ListTile(
                leading: Image.asset("assets/images/bank1.png"),
                title: Text(
                  "Bank of Amrica-0182128xxx ",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text("Jonas Macroni"),
                trailing: Image.asset("assets/images/dot.png")),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: 350,
            height: 80,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.shade100,
              )
            ]),
            child: ListTile(
                leading: Image.asset("assets/images/bank2.png"),
                title: Text(
                  "Zenith Bank - 0182128xxx ",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text("Jonas Macroni"),
                trailing: Image.asset("assets/images/dot.png")),
          ),
          Container(
              margin: const EdgeInsets.only(top: 420),
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
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //             const ));
                    });
                  },
                  child: Text(
                    "Add Account",
                    style: GoogleFonts.dmSans(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
