import 'package:flutter/material.dart';
import 'package:hospital_system/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:hospital_system/features/home/presentation/views/widgets/home_view_body.dart';

import '../../../../core/utils/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.specialist});

  final String specialist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomHomeAppBar(
            profileImagePath: 'assets/images/human.png',
            specialist: specialist,
            name: 'Mahmoud Ahmed',
          ),
          specialist == 'Doctor'
              ? HomeViewBody(
                  specialist: specialist,
                  item1ImagePath: 'assets/icons/call.png',
                  item1Title: 'Calls',
                  item1Color: kBlue,
                  hasFiveItems: true,
                  item5ImagePath: 'assets/icons/case.png',
                  item5Title: 'Cases',
                  item5Color: kBrown,
                )
              : specialist == 'Receptionist'
                  ? HomeViewBody(
                      specialist: specialist,
                      item1ImagePath: 'assets/icons/call.png',
                      item1Title: 'Calls',
                      item1Color: kBlue,
                    )
                  : specialist == 'Nurse'
                      ? HomeViewBody(
                          specialist: specialist,
                          item1ImagePath: 'assets/icons/call.png',
                          item1Title: 'Calls',
                          item1Color: kBlue,
                          hasFiveItems: true,
                          item5ImagePath: 'assets/icons/case.png',
                          item5Title: 'Cases',
                          item5Color: kBrown,
                        )
                      : specialist == 'Analysis Employee'
                          ? HomeViewBody(
                              specialist: specialist,
                              item1ImagePath: 'assets/icons/case.png',
                              item1Title: 'Cases',
                              item1Color: kBlue,
                            )
                          : specialist == 'Manger'
                              ? HomeViewBody(
                                  specialist: specialist,
                                  item1ImagePath: 'assets/icons/case.png',
                                  item1Title: 'Cases',
                                  item1Color: kBlue,
                                  hasFiveItems: true,
                                  item5ImagePath: 'assets/icons/employee.png',
                                  item5Title: 'Employee',
                                  item5Color: kBrown,
                                )
                              : HomeViewBody(
                                  specialist: specialist,
                                  item1ImagePath: 'assets/icons/employee.png',
                                  item1Title: 'Employee',
                                  item1Color: kBrown,
                                ),
        ],
      ),
    );
  }
}
