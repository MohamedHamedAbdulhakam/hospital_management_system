import 'package:flutter/material.dart';
import 'package:hospital_system/core/utils/colors.dart';
import 'package:hospital_system/core/utils/styles.dart';
import 'package:hospital_system/features/notifications/presentation/views/notifications_views.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
    required this.profileImagePath,
    required this.specialist,
    required this.name,
  });

  final String profileImagePath;
  final String specialist;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Profile Image
            Container(
              width: 37,
              height: 37,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                profileImagePath,
                fit: BoxFit.contain,
              ),
            ),

            // Name and Specialist
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Styles.regular14,
                  ),
                  Text(
                    'Specialist, $specialist',
                    style: Styles.regular10.copyWith(
                      color: kMainColor,
                    ),
                  ),
                ],
              ),
            ),

            // Notification Icon Button
            IconButton(
              icon: Image.asset(
                'assets/images/notification.png',
                fit: BoxFit.cover,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
