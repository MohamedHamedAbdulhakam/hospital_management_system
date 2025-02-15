import 'package:flutter/material.dart';
import 'package:hospital_system/core/utils/colors.dart';
import 'package:hospital_system/features/attendence/presentation/views/attendence_view.dart';

class AttendanceRegisteredScreen extends StatelessWidget {
  const AttendanceRegisteredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor, // Background color
      body: Center(
        // Wrap the Column in a Center widget
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Center content vertically
          crossAxisAlignment:
              CrossAxisAlignment.center, // Center content horizontally
          children: [
            // Checkmark Icon
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 4),
              ),
              child: const Center(
                child: Icon(
                  Icons.check,
                  size: 80,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20), // Spacing

            // Success Message
            const Text(
              "Your attendance has been registered",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold, // Make the text bold
              ),
            ),
            const SizedBox(height: 40), // Additional spacing

            // Arrow Button
            GestureDetector(
              onTap: () {
                print("Next button clicked");
                // Add navigation logic here if needed
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AttendanceScreen()),
                    );
                  },
                  icon: Icon(Icons.arrow_forward),
                  color: Colors.white,
                  iconSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
