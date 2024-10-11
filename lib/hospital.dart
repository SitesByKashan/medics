import 'package:flutter/material.dart';

import 'doctorProfile.dart';
import 'home.dart';
import 'pharmacy.dart';
import 'profile.dart';

class HospitalList extends StatelessWidget {
  String PharmacyPic = "assets/Pharmacy.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hospitals',
          style: TextStyle(
              color: Colors.white), // Set the title text color to white
        ),
        centerTitle: true, // Center the title
        backgroundColor: Color(0xFF199A8E), // Your theme color
        iconTheme:
            IconThemeData(color: Colors.white), // Set back icon color to white
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          hospitalCard(
            context,
            'Alkhidmat Foundation',
            '2nd Floor, Quba Complex, Street No. 3، Federal B Area Block 13 Gulberg Town, Karachi, Karachi City, Sindh',
            '+92 42 3802 0222',
            4.5,
            'assets/hospital1.jpeg',
            'Alkhidmat Foundation provides healthcare and education services. '
                'They are dedicated to serving the underprivileged communities. '
                'Their hospitals are equipped with modern facilities.',
          ),
          hospitalCard(
            context,
            'Liaquat National Hospital',
            'National Stadium Rd, Liaquat National Hospital, Karachi, Karachi City, Sindh 74800',
            '+92 21 34412526',
            4.7,
            'assets/hospital2.jpeg',
            'Liaquat National Hospital is a leading healthcare institution. '
                'It offers a range of medical services with highly skilled professionals. '
                'The hospital is well-known for its patient care and advanced technology.',
          ),
          hospitalCard(
            context,
            'Shoukat Khanam Hospital',
            'Plot DDCH1, 1st Street Phase VII Extension DHA Near Qayyumabad Karachi, Pakistan.',
            '+92 42 3590 5000',
            4.8,
            'assets/hospital3.jpeg',
            'Shoukat Khanam Hospital specializes in cancer treatment. '
                'It provides comprehensive care and support for cancer patients. '
                'The hospital aims to deliver quality healthcare services.',
          ),
          hospitalCard(
            context,
            'Cancer Foundation',
            'W37V+355, Block 9 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh',
            '(021) 111 435 787',
            4.6,
            'assets/hospital4.jpeg',
            'The Cancer Foundation is committed to fighting cancer. '
                'They provide treatment and support services to patients. '
                'Their aim is to improve the quality of life for cancer patients.',
          ),
          hospitalCard(
            context,
            'Kiran Hospital',
            'W4WV+VV4 Karachi, Gulzar-e-Hijri Gulzar E Hijri Scheme 33, Karachi, Karachi City, Sindh',
            '(021) 99261601',
            4.5,
            'assets/hospital5.jpeg',
            'Kiran Hospital is known for its exceptional healthcare services. '
                'It focuses on patient-centered care and advanced treatment options. '
                'They have a team of dedicated healthcare professionals.',
          ),
          hospitalCard(
            context,
            'Agha Khan Hospital',
            'National Stadium Rd, Aga Khan University Hospital, Karachi, Karachi City, Sindh 74800',
            '(021) 111 911 911',
            4.9,
            'assets/hospital6.jpeg',
            'Agha Khan Hospital is renowned for its quality healthcare. '
                'It offers a wide range of medical services with an emphasis on research. '
                'The hospital is committed to providing the highest standards of care.',
          ),
          // Add more hospital cards if needed
        ],
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
                PharmacyPic,
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

  Widget hospitalCard(BuildContext context, String name, String address,
      String contact, double rating, String image, String description) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              contentPadding: EdgeInsets.all(16.0),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align content to the left
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        image,
                        height: 250,
                        width: 250,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF199A8E),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Center(
                    child: Text(
                      description,
                      style: TextStyle(color: Colors.grey[600]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Address: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF199A8E),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          address,
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF199A8E),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          contact,
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Container(
                      width: 120, // Set the width as needed
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF199A8E),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Close',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  image,
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF199A8E),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      description,
                      style: TextStyle(color: Colors.grey[600]),
                      maxLines: 3, // Show 3 lines of description
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16,
                        ),
                        SizedBox(width: 4),
                        Text(
                          rating.toString(),
                          style: TextStyle(color: Colors.grey[600]),
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
    );
  }
}
