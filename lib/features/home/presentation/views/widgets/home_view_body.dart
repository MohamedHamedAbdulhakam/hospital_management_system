import 'package:flutter/material.dart';
import 'package:hospital_system/core/utils/colors.dart';
import 'package:hospital_system/features/attendence/presentation/views/attendence_view.dart';
import 'package:hospital_system/features/home/presentation/views/widgets/custom_home_item1.dart';
import 'package:hospital_system/features/home/presentation/views/widgets/custom_home_item2.dart';
import 'package:hospital_system/features/home/presentation/views/widgets/custom_home_item3.dart';
import 'package:hospital_system/features/reports/presentation/views/reports_view.dart';
import 'package:hospital_system/features/tasks/presentation/views/tasks_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
    required this.specialist,
    this.hasFiveItems = false,
    required this.item1ImagePath,
    required this.item1Title,
    required this.item1Color,
    this.item1OnTap,
    this.item5ImagePath,
    this.item5Title,
    this.item5Color,
    this.item5OnTap,
  });

  final String specialist;
  final bool hasFiveItems;

  final String item1ImagePath;
  final String item1Title;
  final Color item1Color;
  final Function()? item1OnTap;

  final String? item5ImagePath;
  final String? item5Title;
  final Color? item5Color;
  final Function()? item5OnTap;

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
                      onTap: item1OnTap,
                      hasSubTitle: true,
                      subTitle: 'You have new +1 Request',
                      
                      
                    ),
                    CustomHomeItem2(
                      imagePath: 'assets/icons/report.png',
                      title: 'Reports',
                      color: kPurple,
                      hasSubTitle: true,
                      subTitle: 'You have new +3 Report',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const ReportsView();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  children: [
                    CustomHomeItem2(
                      imagePath: 'assets/icons/task.png',
                      title: 'Tasks',
                      color: kGreen,
                      hasSubTitle: true,
                      subTitle: 'You have new +1 Task',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return TasksView(
                                specialist: specialist,
                              );
                            },
                          ),
                        );
                      },
                    ),
                     CustomHomeItem1(
                      imagePath: 'assets/icons/attendance.png',
                      title: 'attendance - leaving',
                      color: kMainColor,
                      isAttendance: true,
                      onTap:  () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return AttendanceScreen(
                                
                              );
                            },
                          ),
                        );
                      },
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
                  onTap: item5OnTap,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
