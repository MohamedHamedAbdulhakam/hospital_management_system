import 'package:flutter/material.dart';
import 'package:hospital_system/core/utils/colors.dart';
import 'package:hospital_system/features/attendence/presentation/views/finger_print_screen.dart';

class AttendanceCard extends StatelessWidget {
  final String title;
  final String time;
  final IconData icon;
  final Color iconColor;

  const AttendanceCard({super.key, 
    required this.title,
    required this.time,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  time,
                  style: TextStyle(color: Colors.blue),

                ),
                  ElevatedButton(
                  onPressed: () { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FingerprintScreen()),
            );},
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(12),
                    backgroundColor:kMainColor,
                  ),
                  child: const Icon(Icons.arrow_forward, color: Colors.white),
                  
                ),
              ],
            ),
            Row(
              children: [
                Icon(icon, color: iconColor),
              const   SizedBox(width: 10),
              
              ],
            ),
          ],
        ),
      ),
    );
  }
}
