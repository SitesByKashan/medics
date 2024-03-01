import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Medics/pharmacy.dart';
import 'auth.dart';
import 'doctors.dart';
import 'profile.dart';

class Home extends StatefulWidget {
  final User user;
  const Home({super.key, required this.user});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String HospitalPic = "assets/Hospital.png";
  String AmbulancePic = "assets/Ambulance.png";
  String PharmacyPic = "assets/Pharmacy.png";
  String DoctorPic = "assets/Doctor.png";
  String topDoctor1 = "assets/Top Doctor1.png";
  String topDoctor2 = "assets/Top Doctor2.png";
  String topDoctor3 = "assets/Top Doctor3.png";
  String Star = "assets/Star.png";
  String Location = "assets/Location.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Container(
              width: 331,
              height: 64,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Find your desire \n health solution",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.inter(
                        fontSize: 22,
                        color: Color(0xFF101623),
                        fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    Icons.notifications_active_outlined,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 324,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFFBFBFB),
                border: Border.all(color: Color(0xFFE8F3F1))),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: Icon(
                    Icons.search,
                    color: Color(0xFFADADAD),
                  ),
                ),
                Text(
                  "Search Doctors, Drugs, Articals",
                  style:
                      GoogleFonts.inter(fontSize: 12, color: Color(0xFFADADAD)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 84,
            width: 327,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(DoctorPic),
                      Text("Doctor"),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Doctors()));
                  },
                ),
                InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(PharmacyPic),
                      Text("Pharmacy"),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Pharmacy()));
                  },
                ),
                InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(HospitalPic),
                      Text("Hospital"),
                    ],
                  ),
                ),
                InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(AmbulancePic),
                      Text("Ambulance"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 335,
            height: 135,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFE8F3F1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Early protection for \n your family health",
                      style: GoogleFonts.inter(
                        color: Color(0xFF101623),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 97,
                      height: 29,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFF199A8E),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Learn more",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              color: Color(0xFFFFFFFF),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Image.asset("assets/CTA Doctor.png"),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 383,
            height: 207,
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Doctors",
                      style: GoogleFonts.inter(
                        color: Color(0xFF101623),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      child: Text(
                        "See all",
                        style: GoogleFonts.inter(
                          color: Color(0xFF199A8E),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Doctors()));
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 173,
                    width: 400,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 121,
                          height: 173,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFFFFFFF),
                              border: Border.all(
                                color: Color(0xFFE8F3F1),
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(topDoctor1),
                              Text(
                                "Dr.Maria Elena",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF3B4453)),
                              ),
                              Text(
                                "Psychologist",
                                style: GoogleFonts.inter(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFADADAD)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 19,
                                    width: 39,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xFFE8F3F1),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(Star),
                                        Text(
                                          "4.9",
                                          style: GoogleFonts.inter(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF199A8E),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(Location),
                                      Text(
                                        "1,5km Away",
                                        style: GoogleFonts.inter(
                                          fontSize: 8,
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
                        Container(
                          width: 121,
                          height: 173,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFFFFFFF),
                              border: Border.all(
                                color: Color(0xFFE8F3F1),
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(topDoctor2),
                              Text(
                                "Dr.Marcus Horiz",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF3B4453)),
                              ),
                              Text(
                                "Chardiologist",
                                style: GoogleFonts.inter(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFADADAD)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 19,
                                    width: 39,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xFFE8F3F1),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(Star),
                                        Text(
                                          "4.7",
                                          style: GoogleFonts.inter(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF199A8E),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(Location),
                                      Text(
                                        "800m Away",
                                        style: GoogleFonts.inter(
                                          fontSize: 8,
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
                        Container(
                          width: 121,
                          height: 173,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFFFFFFF),
                              border: Border.all(
                                color: Color(0xFFE8F3F1),
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(topDoctor3),
                              Text(
                                "Dr.Stevi Jessi",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF3B4453)),
                              ),
                              Text(
                                "Orthopedist",
                                style: GoogleFonts.inter(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFADADAD)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 19,
                                    width: 39,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xFFE8F3F1),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(Star),
                                        Text(
                                          "4.9",
                                          style: GoogleFonts.inter(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF199A8E),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(Location),
                                      Text(
                                        "1,5km Away",
                                        style: GoogleFonts.inter(
                                          fontSize: 8,
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
                    Icons.home_filled,
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
    );
  }
}
