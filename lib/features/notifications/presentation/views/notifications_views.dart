import 'package:flutter/material.dart';
import 'package:hospital_system/features/notifications/presentation/views/widgets/notification_card.dart';

class NotificationScreen extends StatelessWidget {
  final List<Map<String, String>> notifications = [
    {
      'name': 'Ebrahem Khaled',
      'message': 'You have a new call from manager',
      'time': '02:39 AM',
      'imageUrl': 'assets/images/human.png'
    },
    {
      'name': 'Ebrahem Khaled',
      'message': 'You have a new task from manager',
      'time': '02:39 AM',
      'imageUrl': 'assets/images/human.png'
    },
    {
      'name': 'Ebrahem Khaled',
      'message': 'You have a medical record from analysis employee',
      'time': '02:39 AM',
      'imageUrl': 'assets/images/human.png'
    },
    {
      'name': 'Ebrahem Khaled',
      'message': 'You have a new call from receptionist',
      'time': '02:39 AM',
      'imageUrl': 'assets/images/human.png'
    },
  ];

  NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Notification',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return NotificationCard(
            name: notifications[index]['name']!,
            message: notifications[index]['message']!,
            time: notifications[index]['time']!,
            imageUrl: notifications[index]['imageUrl']!,
          );
        },
      ),
    );
  }
}
