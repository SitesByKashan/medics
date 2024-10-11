import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Medics/onBoarding%204.dart';
import 'doctorProfile.dart';
import 'home.dart';
import 'pharmacy.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String pharmacyPic = "assets/Pharmacy.png";
  List<Map<String, dynamic>> healthRecords = []; // To store health records

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF199A8E),
      body: SingleChildScrollView(
        child: Column(
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
                  const SizedBox(height: 20),
                  Text(
                    "Amelia Renata",
                    style: GoogleFonts.inter(
                      color: const Color(0xFFFFFFFF),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: 330,
                    height: 71,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildHealthMetric(
                          image: "assets/Heartbeat.png",
                          label: "Heart Rate",
                          value: "215bpm",
                        ),
                        Image.asset("assets/Rectangle 40.png"),
                        buildHealthMetric(
                          image: "assets/Fire.png",
                          label: "Calories",
                          value: "756cal",
                        ),
                        Image.asset("assets/Rectangle 40.png"),
                        buildHealthMetric(
                          image: "assets/Barbell.png",
                          label: "Weight",
                          value: "103lbs",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 433,
              width: 430,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
                color: const Color(0xFFE8F3F1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 20),
                  buildHealthOption(
                    label: "My Health",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MedicalReportScreen(healthRecords: healthRecords),
                        ),
                      );
                    },
                  ),
                  buildDivider(),
                  buildHealthOption(
                    label: "Blood Pressure",
                    onTap: () {
                      showInputForm("Blood Pressure", (value, date) {
                        // Handle blood pressure value submission
                        healthRecords.add({
                          "type": "Blood Pressure",
                          "value": value,
                          "date": date
                        });
                      });
                    },
                  ),
                  buildDivider(),
                  buildHealthOption(
                    label: "Sugar",
                    onTap: () {
                      showInputForm("Sugar", (value, date) {
                        healthRecords.add(
                            {"type": "Sugar", "value": value, "date": date});
                      });
                    },
                  ),
                  buildDivider(),
                  buildHealthOption(
                    label: "Cholesterol",
                    onTap: () {
                      showInputForm("Cholesterol", (value, date) {
                        healthRecords.add({
                          "type": "Cholesterol",
                          "value": value,
                          "date": date
                        });
                      });
                    },
                  ),
                  buildDivider(),
                  buildHealthOption(
                    label: "Logout",
                    onTap: () {
                      showLogoutDialog(context);
                    },
                  ),
                ],
              ),
            ),
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(user: null),
                  ),
                );
              },
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

  Widget buildHealthMetric(
      {required String image, required String label, required String value}) {
    return Container(
      width: 62,
      height: 71,
      child: Column(
        children: [
          Image.asset(image),
          Text(
            label,
            style: GoogleFonts.inter(
              color: const Color(0xFFC1F3EF),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            value,
            style: GoogleFonts.inter(
              color: const Color(0xFFFFFFFF),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHealthOption(
      {required String label, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 335,
        height: 43,
        child: Row(
          children: [
            Image.asset("assets/Group 49.png"),
            const Padding(padding: EdgeInsets.all(10)),
            Text(
              label,
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF101623),
              ),
            ),
            const Spacer(),
            Icon(Icons.arrow_forward_ios, color: const Color(0xFF199A8E)),
          ],
        ),
      ),
    );
  }

  Widget buildDivider() {
    return Image.asset("assets/Rectangle 41.png",
        color: const Color(0xFF199A8E));
  }

  Future<void> showInputForm(String title, Function(String, String) onSubmit) {
    String inputValue = '';
    String day = '';
    String month = '';
    String year = '';

    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            title,
            style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter your $title',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xFF199A8E)),
                    ),
                  ),
                  onChanged: (value) {
                    inputValue = value;
                  },
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Day',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: const Color(0xFF199A8E)),
                          ),
                        ),
                        onChanged: (value) {
                          day = value;
                        },
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Month',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: const Color(0xFF199A8E)),
                          ),
                        ),
                        onChanged: (value) {
                          month = value;
                        },
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Year',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: const Color(0xFF199A8E)),
                          ),
                        ),
                        onChanged: (value) {
                          year = value;
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Cancel',
                style: TextStyle(color: Colors.red),
              ),
            ),
            TextButton(
              onPressed: () {
                if (inputValue.isNotEmpty &&
                    day.isNotEmpty &&
                    month.isNotEmpty &&
                    year.isNotEmpty) {
                  String date = '$day/$month/$year';
                  onSubmit(inputValue, date);
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Submit'),
            ),
          ],
        );
      },
    );
  }

  void showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Logout"),
          content: const Text("Are you sure you want to log out?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => OnBoarding_4()),
                  (route) => false,
                );
              },
              child: const Text(
                "Logout",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }
}

// Medical Report Screen
class MedicalReportScreen extends StatelessWidget {
  final List<Map<String, dynamic>> healthRecords;

  const MedicalReportScreen({Key? key, required this.healthRecords})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Medical Reports",
          style: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF199A8E),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: healthRecords.map((record) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              elevation: 4,
              child: ListTile(
                title: Text(
                  "${record['type']}: ${record['value']}",
                  style: GoogleFonts.inter(fontSize: 18),
                ),
                subtitle: Text(
                  "Date: ${record['date']}",
                  style: GoogleFonts.inter(fontSize: 14),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
