import 'package:flutter/material.dart';
import 'package:hospital_system/core/utils/colors.dart';
import 'package:hospital_system/features/home/presentation/views/widgets/custom_home_item1.dart';
import 'package:hospital_system/features/home/presentation/views/widgets/custom_home_item2.dart';
import 'package:hospital_system/features/home/presentation/views/widgets/custom_home_item3.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
    required this.specialist,
    this.hasFiveItems = false,
    required this.item1ImagePath,
    required this.item1Title,
    required this.item1Color,
    this.item5ImagePath,
    this.item5Title,
    this.item5Color,
  });

  final String specialist;
  final bool hasFiveItems;

  final String item1ImagePath;
  final String item1Title;
  final Color item1Color;
  final String? item5ImagePath;
  final String? item5Title;
  final Color? item5Color;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: width * 0.1,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    CustomHomeItem1(
                      imagePath: item1ImagePath,
                      title: item1Title,
                      color: item1Color,
                    ),
                    const CustomHomeItem2(
                      imagePath: 'assets/icons/report.png',
                      title: 'Reports',
                      color: kPurple,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              const Expanded(
                child: Column(
                  children: [
                    CustomHomeItem2(
                      imagePath: 'assets/icons/task.png',
                      title: 'Tasks',
                      color: kGreen,
                    ),
                    CustomHomeItem1(
                      imagePath: 'assets/icons/attendance.png',
                      title: 'attendance - leaving',
                      color: kMainColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
          hasFiveItems == true
              ? CustomHomeItem3(
                  imagePath: item5ImagePath!,
                  title: item5Title!,
                  color: item5Color!,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
