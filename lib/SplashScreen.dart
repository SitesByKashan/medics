import 'package:flutter/material.dart';
import 'package:Medics/onBoarding%201.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String Logo = "assets/Splash Logo.png";

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnBoarding_1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF199A8E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Logo),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Medics",
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 50.11,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
