import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomHomeItem2 extends StatelessWidget {
  const CustomHomeItem2(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.color,
      this.onTap,
      this.subTitle,
      this.hasSubTitle = false});

  final String imagePath;
  final String title;
  final String? subTitle;
  final Color color;
  final Function()? onTap;
  final bool? hasSubTitle;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: onTap,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: Styles.regular14.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    ' .',
                    style: Styles.bold20.copyWith(color: Colors.white),
                  ),
                ],
              ),
              hasSubTitle == true
                  ? Text(
                      subTitle!,
                      style: Styles.light10.copyWith(color: Colors.white),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
