import 'package:flutter/material.dart';
import 'package:hospital_system/features/attendence/presentation/views/widgets/AttendenceAppBar.dart';
import 'package:hospital_system/features/attendence/presentation/views/widgets/attendence_card.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const AttendenceAppBar(),
        actions: [
          const Icon(Icons.notifications_none, color: Colors.black),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Note Container
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Note",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange[800],
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Details note: Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Attendance Card
              const AttendanceCard(
                title: "Attendance",
                time: "09:00 am",
                icon: Icons.check_circle,
                iconColor: Colors.green,
              ),

              const SizedBox(height: 10),

              // Leaving Card
              const AttendanceCard(
                title: "Leaving",
                time: "04:00 pm",
                icon: Icons.cancel,
                iconColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
