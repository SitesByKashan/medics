import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Medics/onBoarding%204.dart';
import 'pharmacy.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String PharmacyPic = "assets/Pharmacy.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF199A8E),
      body: Column(
        children: [
          Container(
            width: 435,
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/Profile.png",
                  height: 80,
                  width: 80,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Amelia Renata",
                  style: GoogleFonts.inter(
                    color: Color(0xFFFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 330,
                  height: 71,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 62,
                        height: 71,
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/Heartbeat.png",
                            ),
                            Text(
                              "Heart Rate",
                              style: GoogleFonts.inter(
                                color: Color(0xFFC1F3EF),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "215bpm",
                              style: GoogleFonts.inter(
                                color: Color(0xFFFFFFFF),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset("assets/Rectangle 40.png"),
                      Container(
                        width: 115,
                        height: 71,
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/Fire.png",
                            ),
                            Text(
                              "Calories",
                              style: GoogleFonts.inter(
                                color: Color(0xFFC1F3EF),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "756cal",
                              style: GoogleFonts.inter(
                                color: Color(0xFFFFFFFF),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset("assets/Rectangle 40.png"),
                      Container(
                        width: 62,
                        height: 71,
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/Barbell.png",
                            ),
                            Text(
                              "Weight",
                              style: GoogleFonts.inter(
                                color: Color(0xFFC1F3EF),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "103lbs",
                              style: GoogleFonts.inter(
                                color: Color(0xFFFFFFFF),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 480,
            width: 430,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
              color: Color(0xFFE8F3F1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 335,
                  height: 43,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/Group 49.png",
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Text(
                        "My Saved",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF101623),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(80),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF199A8E),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "assets/Rectangle 41.png",
                  color: Color(0xFF199A8E),
                ),
                Container(
                  width: 335,
                  height: 43,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/Group 106.png",
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Text(
                        "Appointment",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF101623),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(65),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF199A8E),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "assets/Rectangle 41.png",
                  color: Color(0xFF199A8E),
                ),
                Container(
                  width: 335,
                  height: 43,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/Group 107.png",
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Text(
                        "Payment Method",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF101623),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(50),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF199A8E),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "assets/Rectangle 41.png",
                  color: Color(0xFF199A8E),
                ),
                Container(
                  width: 335,
                  height: 43,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/Group 108.png",
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Text(
                        "FAQs",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF101623),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(98),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF199A8E),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "assets/Rectangle 41.png",
                  color: Color(0xFF199A8E),
                ),
                Container(
                  width: 335,
                  height: 43,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/Group 109.png",
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      InkWell(
                        child: Text(
                          "Logout",
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFF5C5C),
                          ),
                        ),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              backgroundColor: Color(0xFFFFFFFF),
                              content: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset("assets/Group 135.png"),
                                  Container(
                                    width: 273,
                                    height: 135,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Are you sure to Logout of \n your account?",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.inter(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF101623),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => OnBoarding_4()),
                                      (route) => false,
                                    );
                                  },
                                  child: Center(
                                    child: Container(
                                      width: 183,
                                      height: 56,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xFF199A8E),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Logout",
                                          style: GoogleFonts.inter(
                                            color: Color(0xFFFFFFFF),
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.all(90),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF199A8E),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 79,
                  width: 400,
                  color: Color(0xFFFFFFFF),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Icon(
                          Icons.home_outlined,
                          color: Color(0xFF199A8E),
                          size: 30,
                        ),
                      ),
                      InkWell(
                        child: Icon(
                          Icons.message_outlined,
                          color: Color(0xFF199A8E),
                        ),
                      ),
                      InkWell(
                        child: Image.asset(
                          PharmacyPic,
                          height: 25,
                          width: 25,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Pharmacy()));
                        },
                      ),
                      InkWell(
                        child: Icon(
                          Icons.person_3_rounded,
                          color: Color(0xFF199A8E),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile()));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
