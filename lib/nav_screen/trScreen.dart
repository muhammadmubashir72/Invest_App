import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class transactionscreen extends StatefulWidget {
  const transactionscreen({super.key});

  @override
  State<transactionscreen> createState() => _transactionscreenState();
}

class _transactionscreenState extends State<transactionscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "Transaction Screen",
        style: GoogleFonts.dmSans(
            fontSize: 54,
            fontWeight: FontWeight.w900,
            color: const Color(0xff000000)),
      ),
    );
    ;
  }
}
