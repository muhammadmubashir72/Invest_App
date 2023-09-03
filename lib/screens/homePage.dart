import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invest_app/widget/bottomScreen.dart';

class homePageScreen extends StatefulWidget {
  const homePageScreen({super.key});

  @override
  State<homePageScreen> createState() => _homePageScreenState();
}

class _homePageScreenState extends State<homePageScreen> {
  var imginvest = [
    "assets/images/invest1.png"
        "assets/images/invest2.png"
  ];

  var imgList = [
    'assets/images/gold.png',
    'assets/images/silver.png',
    'assets/images/platinum.png',
    // Add more image paths as needed
  ];

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
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => const signupScreen()));
            });
          },
          icon: const Icon(Icons.menu_rounded, color: Colors.black),
        ),
        actions: [
          IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              setState(() {
                // Navigator.push(context,MaterialPageRoute(builder: (context) => const signupScreen()));
              });
            },
            icon: const Icon(
              Icons.notifications_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Text(
                "Welcome, Jessie.",
                style: GoogleFonts.dmSans(
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff000000)),
              ),
            ),
            //-------------------------Container Green----------------------------

            Container(
                margin: const EdgeInsets.only(top: 25),
                width: 354,
                height: 146,
                decoration: const BoxDecoration(
                    color: Color(0xff31A062),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TextButton(
                  onPressed: () {
                    showBottomSheet(
                      context: context,
                      builder: (context) => MyAssetScreen(),
                    );
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25, right: 76),
                        child: Text(
                          "Yout total asset portfolio",
                          style: GoogleFonts.dmSans(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12, left: 39),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 36),
                              child: Text(
                                "N203,935",
                                style: GoogleFonts.dmSans(
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 95,
                              height: 34,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Invest Now",
                                    style: GoogleFonts.dmSans(
                                      // fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xff31A062),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            //------------------------Slider----------------------------
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 30),
                  child: Text(
                    "Best Plans",
                    style: GoogleFonts.dmSans(
                      fontSize: 27,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 111),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All →",
                      style: GoogleFonts.dmSans(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.pink[400],
                      ),
                    ),
                  ),
                )
              ],
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 25),
                    height: 250,
                    width: 150,
                    child: Image.asset("assets/images/gold.png"),
                  ),
                  Container(
                    height: 250,
                    width: 150,
                    child: Image.asset("assets/images/silver.png"),
                  ),
                  Container(
                    height: 254,
                    width: 150,
                    child: Image.asset("assets/images/platinum.png"),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 25, right: 99),
              child: Text("Invesment Guide",
                  style: GoogleFonts.dmSans(
                    fontSize: 27,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                  title: Text("Basic type of investments"),
                  subtitle: Text(
                    "This is how you set your foot for 2020 Stock market recession. What's next...",
                  ),
                  trailing: Image.asset("assets/images/invest1.png")),
            ),
            Divider(
              thickness: 0.5,
              indent: 30,
              endIndent: 30,
              height: 5,
              color: Colors.grey,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                title: Text("How much can you start wit.."),
                subtitle: Text(
                    "What do you like to see? It's a very different market from 2018. The way..."),
                trailing: Image.asset("assets/images/invest2.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
