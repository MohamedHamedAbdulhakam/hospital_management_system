import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomHomeItem2 extends StatelessWidget {
  const CustomHomeItem2(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.color});

  final String imagePath;
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: width * 0.45,
        height: width * 0.45,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: Styles.regular14.copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
