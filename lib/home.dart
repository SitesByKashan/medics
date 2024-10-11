import 'package:Medics/doctorProfile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ambulance.dart';
import 'auth.dart';
import 'doctors.dart';
import 'hospital.dart';
import 'profile.dart';
import 'pharmacy.dart';

class Home extends StatefulWidget {
  final User? user;
  const Home({super.key, required this.user});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String hospitalPic = "assets/Hospital.png";
  String ambulancePic = "assets/Ambulance.png";
  String pharmacyPic = "assets/Pharmacy.png";
  String doctorPic = "assets/Doctor.png";
  String topDoctor1 = "assets/doctor4.jpeg";
  String topDoctor2 = "assets/doctor2.jpeg";
  String topDoctor3 = "assets/doctor3.jpeg";
  String topDoctor4 = "assets/doctor5.jpeg";
  String topDoctor5 = "assets/doctor6.jpeg";
  String star = "assets/Star.png";
  String location = "assets/Location.png";
  String hospital1 = "assets/hospital1.jpeg";
  String hospital2 = "assets/hospital2.jpeg";
  String hospital3 = "assets/hospital3.jpeg"; // Added hospital 3
  String ambulance1 = "assets/ambulance1.jpeg";
  String ambulance2 = "assets/ambulance2.jpeg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Move the headerSection down here
            SizedBox(height: 60),
            searchBar(),
            SizedBox(height: 20),
            headerSection(), // Moved headerSection below the searchBar
            SizedBox(height: 20),
            categoryIcons(),
            SizedBox(height: 20),
            promoBanner(),
            SizedBox(height: 30),
            sectionTitle("Top Doctors", DoctorList()),
            doctorScroll(),
            SizedBox(height: 30),
            sectionTitle("Top Hospitals", HospitalList()),
            hospitalScroll(),
            SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 79,
        width: double.infinity,
        color: Color(0xFFFFFFFF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: Icon(
                Icons.home_outlined,
                color: Color(0xFF199A8E),
              ),
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => Home(user: null),
              //     ),
              //   );
              // },
            ),
            InkWell(
              child: Icon(
                Icons.message_outlined,
                color: Color(0xFF199A8E),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DoctorProfilesScreen(),
                  ),
                );
              },
            ),
            InkWell(
              child: Image.asset(
                pharmacyPic,
                height: 25,
                width: 25,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pharmacy()),
                );
              },
            ),
            InkWell(
              child: Icon(
                Icons.person_outlined,
                color: Color(0xFF199A8E),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Section Title Method
  Widget sectionTitle(String title, Widget route) {
    return Container(
      width: 383,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
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
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => route)),
          ),
        ],
      ),
    );
  }

  // Header Section
  Widget headerSection() {
    return Center(
      child: Container(
        width: 331,
        height: 64,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Find your desired \n health solution",
              textAlign: TextAlign.start,
              style: GoogleFonts.inter(
                fontSize: 22,
                color: Color(0xFF101623),
                fontWeight: FontWeight.w700,
              ),
            ),
            Icon(Icons.notifications_active_outlined),
          ],
        ),
      ),
    );
  }

  // Search Bar
  Widget searchBar() {
    return Container(
      width: 324,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xFFFBFBFB),
        border: Border.all(color: Color(0xFFE8F3F1)),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
            child: Icon(Icons.search, color: Color(0xFFADADAD)),
          ),
          Text(
            "Search Doctors, Drugs, Articles",
            style: GoogleFonts.inter(fontSize: 12, color: Color(0xFFADADAD)),
          ),
        ],
      ),
    );
  }

  // Category Icons
  Widget categoryIcons() {
    return Container(
      height: 84,
      width: 327,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          categoryIcon(doctorPic, "Doctor", DoctorList()),
          categoryIcon(pharmacyPic, "Pharmacy", Pharmacy()),
          categoryIcon(hospitalPic, "Hospital", HospitalList()),
          categoryIcon(ambulancePic, "Ambulance", AmbulanceList()),
        ],
      ),
    );
  }

  Widget categoryIcon(String imagePath, String label, Widget route) {
    return InkWell(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(imagePath),
          Text(label),
        ],
      ),
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (_) => route)),
    );
  }

  // Promo Banner
  Widget promoBanner() {
    return Container(
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
              SizedBox(height: 10),
              learnMoreButton(),
            ],
          ),
          Image.asset("assets/CTA Doctor.png"),
        ],
      ),
    );
  }

  Widget learnMoreButton() {
    return Container(
      width: 97,
      height: 29,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xFF199A8E),
      ),
      child: Center(
        child: Text(
          "Learn more",
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
    );
  }

  // Horizontal Scroll for Doctors
  Widget doctorScroll() {
    return horizontalScroll([
      topDoctor1,
      topDoctor2,
      topDoctor3,
      topDoctor4,
      topDoctor5
    ], [
      "Dr.Maria Elena",
      "Dr.Marcus Horiz",
      "Dr.Stevi Jessi",
      "Dr.Alex Morgan",
      "Dr.Clara Smith"
    ], [
      "Psychologist",
      "Cardiologist",
      "Orthopedist",
      "Neurologist",
      "Dermatologist"
    ]);
  }

  // Horizontal Scroll for Hospitals
  Widget hospitalScroll() {
    return horizontalScroll(
        [hospital1, hospital2, hospital3],
        ["City Hospital", "LifeCare Hospital", "Metro Hospital"],
        ["General Hospital", "Multi-specialty", "Community Hospital"]);
  }

  // Generalized Horizontal Scroll
  Widget horizontalScroll(
      List<String> images, List<String> names, List<String> descriptions) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(images.length, (index) {
          return doctorCard(images[index], names[index], descriptions[index]);
        }),
      ),
    );
  }

  // Doctor/Hospital Card
  Widget doctorCard(String image, String name, String description) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 121,
      height: 173,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFFFFFFF),
        border: Border.all(color: Color(0xFFE8F3F1)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(image, height: 90, width: 100),
          Text(
            name,
            style: GoogleFonts.inter(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF101623),
            ),
          ),
          Text(
            description,
            style: GoogleFonts.inter(
              fontSize: 12,
              color: Color(0xFFADADAD),
            ),
          ),
        ],
      ),
    );
  }
}
