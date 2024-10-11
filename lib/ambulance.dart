import 'package:flutter/material.dart';
import 'home.dart';
import 'package:Medics/pharmacy.dart';
import 'package:Medics/profile.dart';

class AmbulanceList extends StatelessWidget {
  String pharmacyPic =
      "assets/Pharmacy.png"; // Update your pharmacy image path here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ambulance Services',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF199A8E),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ambulanceCard(
            context,
            'Alkhidmat Ambulance Service',
            '+92 42 111 245 111',
            'Alkhidmat Ambulance Service provides emergency services with trained staff and modern equipment.',
          ),
          ambulanceCard(
            context,
            'Aman Ambulance Service',
            '+92 21 111 262 626',
            'Aman Ambulance Service offers 24/7 assistance and is known for its reliability.',
          ),
          ambulanceCard(
            context,
            'City Ambulance Service',
            '+92 21 111 222 333',
            'City Ambulance Service is known for its quick response and quality care during emergencies.',
          ),
          ambulanceCard(
            context,
            'National Ambulance',
            '+92 51 111 234 234',
            'National Ambulance provides 24/7 emergency services with highly trained staff and modern equipment.',
          ),
          ambulanceCard(
            context,
            'Edhi Ambulance Service',
            '+92 21 111 11 43 11',
            'Edhi Foundation offers free ambulance services across Pakistan, committed to serving the needy.',
          ),
          ambulanceCard(
            context,
            'Chhipa Ambulance Service',
            '+92 21 111 11 33 33',
            'Chhipa provides free emergency ambulance services in Karachi and surrounding areas.',
          ),
          ambulanceCard(
            context,
            'Rescue 1122',
            '1122',
            'Rescue 1122 is a renowned emergency service that operates in several provinces, offering ambulance services along with fire and rescue.',
          ),
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

  Widget ambulanceCard(
      BuildContext context, String name, String contact, String description) {
    return GestureDetector(
      onTap: () {
        // Show dialog with ambulance details
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ambulance Details',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF199A8E),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 8),
                  Center(
                    child: Text(
                      'Contact: \n$contact',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF199A8E),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              actions: [
                Center(
                  child: Container(
                    // Wrap button in a container to set width
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
                'Contact: $contact',
                style: TextStyle(color: Colors.grey[600]),
              ),
              SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
