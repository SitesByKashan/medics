import 'package:flutter/material.dart';

import 'doctorProfile.dart';
import 'home.dart';
import 'pharmacy.dart';
import 'profile.dart';
import 'appointment.dart'; // Import your appointment screen here

void main() {
  runApp(MaterialApp(
    title: 'Doctors List',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: DoctorList(),
  ));
}

class DoctorList extends StatelessWidget {
  String pharmacyPic =
      "assets/Pharmacy.png"; // Update with your pharmacy image path
  final List<Map<String, String>> doctors = [
    {
      'name': 'Dr. Aisha Khan',
      'image': 'assets/doctor1.jpeg', // Update with your image path
      'hospital': 'Shifa International Hospital',
      'about':
          'Dr. Aisha Khan is a renowned cardiologist with over 15 years of experience in treating heart conditions. She is known for her compassionate care and thorough approach.',
      'age': '40',
      'contact': '+92 51 123 4567',
      'charges': '2000 PKR',
      'timing': 'Mon-Fri: 10 AM - 4 PM'
    },
    {
      'name': 'Dr. Ahmed Ali',
      'image': 'assets/doctor2.jpeg', // Update with your image path
      'hospital': 'Pakistan Institute of Medical Sciences',
      'about':
          'Dr. Ahmed Ali specializes in neurology and has a keen interest in neurodegenerative diseases. He is appreciated for his innovative treatment methods.',
      'age': '38',
      'contact': '+92 51 234 5678',
      'charges': '2500 PKR',
      'timing': 'Mon-Sat: 9 AM - 5 PM'
    },
    {
      'name': 'Dr. Sarah Malik',
      'image': 'assets/doctor3.jpeg', // Update with your image path
      'hospital': 'Liaquat University Hospital',
      'about':
          'Dr. Sarah Malik is an experienced endocrinologist, particularly in diabetes management. She aims to empower her patients with knowledge.',
      'age': '35',
      'contact': '+92 51 345 6789',
      'charges': '1800 PKR',
      'timing': 'Tue-Thu: 11 AM - 3 PM'
    },
    {
      'name': 'Dr. Bilal Khan',
      'image': 'assets/doctor4.jpeg', // Update with your image path
      'hospital': 'Aga Khan University Hospital',
      'about':
          'Dr. Bilal Khan is a well-known orthopedic surgeon specializing in joint replacements. He has a vast experience in sports medicine.',
      'age': '45',
      'contact': '+92 51 456 7890',
      'charges': '3000 PKR',
      'timing': 'Mon-Wed: 10 AM - 2 PM'
    },
    {
      'name': 'Dr. Fatima Noor',
      'image': 'assets/doctor5.jpeg', // Update with your image path
      'hospital': 'Khyber Teaching Hospital',
      'about':
          'Dr. Fatima Noor is a pediatrician with a strong background in childhood diseases. She is known for her gentle handling of children.',
      'age': '32',
      'contact': '+92 51 567 8901',
      'charges': '1500 PKR',
      'timing': 'Mon-Fri: 9 AM - 1 PM'
    },
    {
      'name': 'Dr. Usman Javed',
      'image': 'assets/doctor6.jpeg', // Update with your image path
      'hospital': 'Pakistan Institute of Medical Sciences',
      'about':
          'Dr. Usman Javed is a psychiatrist with expertise in treating mental health disorders. He emphasizes holistic treatment approaches.',
      'age': '42',
      'contact': '+92 51 678 9012',
      'charges': '2200 PKR',
      'timing': 'Mon-Fri: 10 AM - 4 PM'
    },
    {
      'name': 'Dr. Noor Ahmad',
      'image': 'assets/doctor7.jpeg', // Update with your image path
      'hospital': 'Punjab Institute of Cardiology',
      'about':
          'Dr. Noor Ahmad is a highly qualified cardiologist focusing on minimally invasive surgeries.',
      'age': '50',
      'contact': '+92 51 789 0123',
      'charges': '2800 PKR',
      'timing': 'Mon-Sat: 10 AM - 3 PM'
    },
    {
      'name': 'Dr. Sadaf Malik',
      'image': 'assets/doctor8.jpeg', // Update with your image path
      'hospital': 'Jinnah Postgraduate Medical Centre',
      'about':
          'Dr. Sadaf Malik is a dermatologist specializing in cosmetic procedures and skin disorders.',
      'age': '30',
      'contact': '+92 51 890 1234',
      'charges': '1900 PKR',
      'timing': 'Tue-Sat: 11 AM - 4 PM'
    },
    {
      'name': 'Dr. Farhan Rehman',
      'image': 'assets/doctor9.jpeg', // Update with your image path
      'hospital': 'Fauji Foundation Hospital',
      'about':
          'Dr. Farhan Rehman is a gastroenterologist with over 20 years of experience in treating digestive disorders.',
      'age': '48',
      'contact': '+92 51 901 2345',
      'charges': '2600 PKR',
      'timing': 'Mon-Fri: 9 AM - 2 PM'
    },
    {
      'name': 'Dr. Hina Aftab',
      'image': 'assets/doctor10.jpeg', // Update with your image path
      'hospital': 'Rafique Hospital',
      'about':
          'Dr. Hina Aftab is an experienced gynecologist specializing in women’s health and prenatal care.',
      'age': '37',
      'contact': '+92 51 012 3456',
      'charges': '2400 PKR',
      'timing': 'Mon-Sun: 10 AM - 5 PM'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Top Doctors in Pakistan',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF199A8E),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          return doctorCard(context, doctors[index]);
        },
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

  Widget doctorCard(BuildContext context, Map<String, String> doctor) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      elevation: 5,
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Centered Doctor Image
                      Center(
                        child: ClipOval(
                          child: Center(
                            child: Image.asset(
                              doctor['image']!,
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      // Doctor Name
                      Text(
                        doctor['name']!,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      // Hospital Name
                      Text(
                        doctor['hospital']!,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5),
                      // About
                      Text(
                        doctor['about']!,
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.5,
                        ),
                      ),
                      SizedBox(height: 10),
                      // Additional Details with spacing
                      Text('Age: ${doctor['age']!}'),
                      SizedBox(height: 5),
                      Text('Timing: ${doctor['timing']!}'),
                      SizedBox(height: 5),
                      Text('Charges: ${doctor['charges']!}',
                          style: TextStyle(color: Colors.green)),
                      SizedBox(height: 5),
                      Text('Contact: ${doctor['contact']!}'),
                      SizedBox(height: 10),
                      // Centered Book Appointment Button
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AppointmentScreen(doctor),
                              ),
                            );
                          },
                          child: Text('Book Appointment'),
                        ),
                      ),

                      SizedBox(height: 10),
                      // Close Text on the right
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop(); // Close the dialog
                          },
                          child: Text(
                            'Close',
                            style: TextStyle(
                              color: Color(
                                  0xFF199A8E), // Change color to match the button
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              ClipOval(
                child: Center(
                  child: Image.asset(
                    doctor['image']!,
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctor['name']!,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      doctor['hospital']!,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Charges: ${doctor['charges']}',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
