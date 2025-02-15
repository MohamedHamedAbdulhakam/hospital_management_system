import 'package:flutter/material.dart';
import 'package:hospital_system/core/utils/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Background color
          Container(
            color: Colors.teal,
            height: MediaQuery.of(context).size.height,
          ),

          // Profile Card
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(
                  top: 150), // Adjusts the card's position
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 60), // Space for the image overlap
                  const Text(
                    'Ebrahem Elzainy',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.teal,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Specialist - Doctor',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  buildProfileItem(Icons.male, 'Male'),
                  buildProfileItem(Icons.calendar_today, '29-03-1997'),
                  buildProfileItem(Icons.location_on, 'Mansoura, Shirben'),
                  buildProfileItem(Icons.favorite, 'Single'),
                  buildProfileItem(Icons.email, 'ebrahemelzainy@gmail.com'),
                  buildProfileItem(Icons.phone, '096521145523'),
                ],
              ),
            ),
          ),

          // Profile Picture
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(top: 100), // Position the circle
              child: const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage(
                    'assets/images/human.png', // Replace with the actual image URL
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProfileItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.teal),
          SizedBox(width: 16),
          Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
