
import 'package:flutter/material.dart';

class AttendenceAppBar extends StatelessWidget {
  const AttendenceAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/human.png'),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ebrahem Elzainy",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              "Specialist, Doctor",
              style: TextStyle(color: Colors.green, fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }
}