import 'package:flutter/material.dart';
import 'chat.dart';
import 'home.dart';
import 'pharmacy.dart';
import 'profile.dart';

class DoctorProfilesScreen extends StatelessWidget {
  final List<Map<String, String>> doctors = [
    {
      'name': 'Dr. Aisha Khan',
      'hospital': 'Shifa International Hospital',
      'image': 'assets/doctor1.jpeg',
    },
    {
      'name': 'Dr. Ahmed Ali',
      'hospital': 'Pakistan Institute of Medical Sciences',
      'image': 'assets/doctor2.jpeg',
    },
    {
      'name': 'Dr. Sarah Malik',
      'hospital': 'Liaquat University Hospital',
      'image': 'assets/doctor3.jpeg',
    },
    {
      'name': 'Dr. Bilal Khan',
      'hospital': 'Aga Khan University Hospital',
      'image': 'assets/doctor4.jpeg',
    },
    {
      'name': 'Dr. Fatima Noor',
      'hospital': 'Khyber Teaching Hospital',
      'image': 'assets/doctor5.jpeg',
    },
    {
      'name': 'Dr. Usman Javed',
      'hospital': 'Pakistan Institute of Medical Sciences',
      'image': 'assets/doctor6.jpeg',
    },
    {
      'name': 'Dr. Noor Ahmad',
      'hospital': 'Punjab Institute of Cardiology',
      'image': 'assets/doctor7.jpeg',
    },
    {
      'name': 'Dr. Sadaf Malik',
      'hospital': 'Jinnah Postgraduate Medical Centre',
      'image': 'assets/doctor8.jpeg',
    },
    {
      'name': 'Dr. Farhan Rehman',
      'hospital': 'Fauji Foundation Hospital',
      'image': 'assets/doctor9.jpeg',
    },
    {
      'name': 'Dr. Hina Aftab',
      'hospital': 'Rafique Hospital',
      'image': 'assets/doctor10.jpeg',
    },
    // Add more doctors as needed
  ];

  String pharmacyPic = "assets/Pharmacy.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messenger',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF199A8E),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true, // Use shrinkWrap to avoid infinite height error
              physics:
                  NeverScrollableScrollPhysics(), // Disable scrolling for the list
              itemCount: doctors.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ChatScreen(doctor: doctors[index]),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 4,
                    margin: EdgeInsets.all(8),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(doctors[index]['image']!),
                      ),
                      title: Text(
                        doctors[index]['name']!,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(doctors[index]['hospital']!),
                      // Removed charges from trailing
                    ),
                  ),
                );
              },
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
}
