import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Medics/onBoarding%203.dart';

class OnBoarding_2 extends StatefulWidget {
  const OnBoarding_2({super.key});

  @override
  State<OnBoarding_2> createState() => _OnBoarding_2State();
}

class _OnBoarding_2State extends State<OnBoarding_2> {
  String Doctor = "assets/Doctor 2.png";
  String load1 = "assets/Rectangle 952.png";
  String load2 = "assets/Rectangle 951.png";
  String load3 = "assets/Rectangle 949.png";

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
              Image.asset(
                Doctor,
                height: 468,
                width: 311,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            height: 226,
            width: 321,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Color(0xFFF5F7FF),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Find a lot of specialist doctors in one place",
                  style: GoogleFonts.inter(
                    color: Color(0xFF101623),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(load1),
                        Image.asset(load2),
                        Image.asset(load3),
                      ],
                    ),
                    Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFF199A8E),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OnBoarding_3()),
                                (route) => false,
                              );
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
