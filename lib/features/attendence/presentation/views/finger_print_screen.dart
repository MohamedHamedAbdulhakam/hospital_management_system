import 'package:flutter/material.dart';
import 'package:hospital_system/core/utils/colors.dart';
import 'package:hospital_system/features/attendence/presentation/views/attenedence_registered_screen.dart';

class FingerprintScreen extends StatelessWidget {
  const FingerprintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor, // Background color
      body: Stack(
        children: [
          // Bottom Wave Decoration
          Align(
            alignment: Alignment.bottomCenter,
            child: Opacity(
                opacity: 0.2,
                child: IconButton(
                  icon: Image.asset('assets/icons/attendance.png',
                      width: 24, height: 24),
                  onPressed: () {},
                )),
          ),

          // Centered Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Fingerprint Icon

                IconButton(
                  icon: Icon(Icons.fingerprint),
                  iconSize: 120,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AttendanceRegisteredScreen()),
            );
                  },
                ),
                SizedBox(height: 20),

                // Instruction Text
                Text(
                  "Please touch ID sensor to verify registration",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
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
