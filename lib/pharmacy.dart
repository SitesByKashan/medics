import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'DrugDetailed.dart';

class Pharmacy extends StatefulWidget {
  const Pharmacy({super.key});

  @override
  State<Pharmacy> createState() => _PharmacyState();
}

class _PharmacyState extends State<Pharmacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Pharmacy",
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Color(0xFF101623),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(
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
                    "Search Drugs, Category",
                    style: GoogleFonts.inter(
                        fontSize: 12, color: Color(0xFFADADAD)),
                  ),
                ],
              ),
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
                      "Order quickly with \n Prescription",
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
                      width: 132,
                      height: 29,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFF199A8E),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Upload Prescription",
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
                Image.asset(
                  "assets/contractrqe 1.png",
                  width: 140,
                  height: 159.84,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
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
                      "Popular Products",
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
                              Image.asset("assets/Flechos.png"),
                              Text(
                                "Panadol",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF3B4453)),
                              ),
                              Text(
                                "20pcs",
                                style: GoogleFonts.inter(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFADADAD)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Rs 40",
                                    style: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  InkWell(
                                    child: Icon(
                                      Icons.add_box,
                                      color: Color(0xFF199A8E),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DrugDetailed()));
                                    },
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
                              Image.asset("assets/Lysine.png"),
                              Text(
                                "Bodrex Herbal",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF3B4453)),
                              ),
                              Text(
                                "100ml",
                                style: GoogleFonts.inter(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFADADAD)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Rs 500",
                                    style: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  InkWell(
                                    child: Icon(
                                      Icons.add_box,
                                      color: Color(0xFF199A8E),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DrugDetailed()));
                                    },
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
                              Image.asset("assets/Vitamin D.png"),
                              Text(
                                "Konidin",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF3B4453)),
                              ),
                              Text(
                                "3pcs",
                                style: GoogleFonts.inter(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFADADAD)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Rs 999",
                                    style: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  InkWell(
                                    child: Icon(
                                      Icons.add_box,
                                      color: Color(0xFF199A8E),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DrugDetailed()));
                                    },
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
          SizedBox(
            height: 20,
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
                      "Product on Sale",
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
                              Image.asset("assets/Calvit.png"),
                              Text(
                                "OBH Combi",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF3B4453)),
                              ),
                              Text(
                                "75ml",
                                style: GoogleFonts.inter(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFADADAD)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Rs 1200",
                                    style: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  InkWell(
                                    child: Icon(
                                      Icons.add_box,
                                      color: Color(0xFF199A8E),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DrugDetailed()));
                                    },
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
                              Image.asset("assets/Lysine.png"),
                              Text(
                                "Betadine",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF3B4453)),
                              ),
                              Text(
                                "50ml",
                                style: GoogleFonts.inter(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFADADAD)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Rs 600",
                                    style: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  InkWell(
                                    child: Icon(
                                      Icons.add_box,
                                      color: Color(0xFF199A8E),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DrugDetailed()));
                                    },
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
                              Image.asset("assets/Vitamin D.png"),
                              Text(
                                "Bodrexin",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF3B4453)),
                              ),
                              Text(
                                "75ml",
                                style: GoogleFonts.inter(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFADADAD)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Rs 1700",
                                    style: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  InkWell(
                                    child: Icon(
                                      Icons.add_box,
                                      color: Color(0xFF199A8E),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DrugDetailed()));
                                    },
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
        ],
      ),
    );
  }
}
