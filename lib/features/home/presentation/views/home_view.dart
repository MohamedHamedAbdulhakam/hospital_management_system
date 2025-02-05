import 'package:flutter/material.dart';
import 'package:hospital_system/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:hospital_system/features/home/presentation/views/widgets/home_view_body.dart';

import '../../../../core/utils/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.specialist});

  final String specialist;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomHomeAppBar(
            profileImagePath: 'assets/images/human.png',
            specialist: 'Doctor',
            name: 'Mahmoud Ahmed',
          ),
          HomeViewBody(
            specialist: 'Doctor',
            item1ImagePath: 'assets/icons/case.png',
            item1Title: 'Cases',
            item1Color: kBlue,
            hasFiveItems: true,
            item5ImagePath: 'assets/icons/employee.png',
            item5Title: 'Employee',
            item5Color: kBrown,
          ),
        ],
      ),
    );
  }
}
