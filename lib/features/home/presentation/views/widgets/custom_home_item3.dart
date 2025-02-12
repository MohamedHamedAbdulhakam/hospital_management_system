import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomHomeItem3 extends StatelessWidget {
  const CustomHomeItem3(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.color,
      this.onTap});

  final String imagePath;
  final String title;
  final Color color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          height: width * 0.35,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style: Styles.regular14.copyWith(color: Colors.white),
              ),
              const SizedBox(),
              Image.asset(
                imagePath,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
