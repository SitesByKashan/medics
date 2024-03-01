import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Medics/appointment1.dart';
import 'package:Medics/appointment2.dart';
import 'package:Medics/appointment3.dart';
import 'package:Medics/appointment4.dart';
import 'package:Medics/appointment5.dart';
import 'pharmacy.dart';
import 'profile.dart';

class Doctors extends StatefulWidget {
  const Doctors({super.key});

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  String PharmacyPic = "assets/Pharmacy.png";
  String Star = "assets/Star.png";
  String Location = "assets/Location.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Top Doctors",
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Color(0xFF101623),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: Center(
                child: Container(
                  width: 334,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFFE8F3F1),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/Doctors1.png"),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr.Marcus Horizon",
                            style: GoogleFonts.inter(
                              color: Color(0xFF101623),
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Chardiologist",
                            style: GoogleFonts.inter(
                              color: Color(0xFFADADAD),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8F3F1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(Star),
                                Text(
                                  "4.9",
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF199A8E),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(Location),
                              Text(
                                "1,5km Away",
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  color: Color(0xFFADADAD),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Appointment1())));
              },
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: Center(
                child: Container(
                  width: 334,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFFE8F3F1),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/Doctors2.png"),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr.Maria Elena",
                            style: GoogleFonts.inter(
                              color: Color(0xFF101623),
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Psychologist",
                            style: GoogleFonts.inter(
                              color: Color(0xFFADADAD),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8F3F1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(Star),
                                Text(
                                  "4.7",
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF199A8E),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(Location),
                              Text(
                                "1,3km Away",
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  color: Color(0xFFADADAD),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Appointment2())));
              },
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: Center(
                child: Container(
                  width: 334,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFFE8F3F1),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/Doctors3.png"),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr.Stefi Jessi",
                            style: GoogleFonts.inter(
                              color: Color(0xFF101623),
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Orthopedist",
                            style: GoogleFonts.inter(
                              color: Color(0xFFADADAD),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8F3F1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(Star),
                                Text(
                                  "4.8",
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF199A8E),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(Location),
                              Text(
                                "800m Away",
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  color: Color(0xFFADADAD),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Appointment3())));
              },
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: Center(
                child: Container(
                  width: 334,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFFE8F3F1),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/Doctors4.png"),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr.Gerty Cori",
                            style: GoogleFonts.inter(
                              color: Color(0xFF101623),
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Orthopedist",
                            style: GoogleFonts.inter(
                              color: Color(0xFFADADAD),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8F3F1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(Star),
                                Text(
                                  "4.9",
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF199A8E),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(Location),
                              Text(
                                "2km Away",
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  color: Color(0xFFADADAD),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Appointment4())));
              },
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: Center(
                child: Container(
                  width: 334,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFFE8F3F1),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/Doctors5.png"),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr.Diandra",
                            style: GoogleFonts.inter(
                              color: Color(0xFF101623),
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Psychologist",
                            style: GoogleFonts.inter(
                              color: Color(0xFFADADAD),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8F3F1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(Star),
                                Text(
                                  "4.6",
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF199A8E),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(Location),
                              Text(
                                "1,4km Away",
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  color: Color(0xFFADADAD),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Appointment5())));
              },
            ),
            Container(
              height: 79,
              width: 375,
              color: Color(0xFFFFFFFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Icon(
                      Icons.home_outlined,
                      color: Color(0xFF199A8E),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Pharmacy()));
                    },
                  ),
                  InkWell(
                    child: Icon(
                      Icons.person_2_outlined,
                      color: Color(0xFF199A8E),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
