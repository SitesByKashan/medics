import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Medics/doctors.dart';

class Appointment2 extends StatefulWidget {
  const Appointment2({super.key});

  @override
  State<Appointment2> createState() => _Appointment2State();
}

class _Appointment2State extends State<Appointment2> {
  String Star = "assets/Star.png";
  String Location = "assets/Location.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Appointment",
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
            SizedBox(
              height: 20,
            ),
            Center(
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
            SizedBox(
              height: 20,
            ),
            Container(
              width: 334,
              height: 99,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ABOUT",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF101623),
                    ),
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and \n typesetting industry. Lorem Ipsum has been the \n industry's it to make a type specimen... ",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF717784),
                    ),
                  ),
                  Text(
                    "Read More",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF199A8E),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 335,
              height: 154,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Payment Details",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF101623),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Consultation",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFA1A8B0),
                        ),
                      ),
                      Text(
                        "Rs 1800",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF101623),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Admin Fees",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFA1A8B0),
                        ),
                      ),
                      Text(
                        "Rs 500",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF101623),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Aditional Discount",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFA1A8B0),
                        ),
                      ),
                      Text(
                        " - ",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF101623),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF101623),
                        ),
                      ),
                      Text(
                        "Rs 2300",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF199A8E),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 334,
              height: 83,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Payment Method",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF101623),
                    ),
                  ),
                  Container(
                    width: 334,
                    height: 49,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Color(0xFFE8F3F1),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                          ),
                          child: Text(
                            "VISA",
                            style: GoogleFonts.inter(
                              fontStyle: FontStyle.italic,
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF1A1F71),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 20,
                          ),
                          child: Text(
                            "Change",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFADADAD),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 77,
                  height: 51,
                  child: Column(
                    children: [
                      Text(
                        "Total",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Color(0xFFADADAD),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Rs 2300",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          color: Color(0xFF199A8E),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: Color(0xFFFFFFFF),
                        content: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/Done.png"),
                            Container(
                              width: 273,
                              height: 135,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Payment Success",
                                    style: GoogleFonts.inter(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF101623),
                                    ),
                                  ),
                                  Text(
                                    "Your payment has been successful, you can have \n a consultation session \n with your trusted doctor",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFA1A8B0),
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
                                    builder: (context) => Doctors()),
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
                                    "Back To Home",
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
                  child: Container(
                    width: 192,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFF199A8E),
                    ),
                    child: Center(
                      child: Text(
                        "Book Appointment",
                        style: GoogleFonts.inter(
                          color: Color(0xFFFFFFFF),
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
