import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class productScreen extends StatefulWidget {
  const productScreen({super.key});

  @override
  State<productScreen> createState() => _productScreenState();
}

class _productScreenState extends State<productScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "Product Screen",
        style: GoogleFonts.dmSans(
            fontSize: 54,
            fontWeight: FontWeight.w900,
            color: const Color(0xff000000)),
      ),
    );
  }
}
