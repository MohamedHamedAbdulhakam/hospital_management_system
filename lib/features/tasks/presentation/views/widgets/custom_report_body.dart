import 'package:flutter/material.dart';
import 'package:hospital_system/core/utils/styles.dart';
import 'package:hospital_system/features/reports/presentation/views/widgets/custom_user_details_bar.dart';

class CustomReportBody extends StatelessWidget {
  const CustomReportBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomUserDetailsBar(
          profileImagePath: 'assets/images/human.png',
          specialist: 'Doctor',
          name: 'Mahmoud Ahmed',
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(right: 45),
          child: Text(
              'Details note : Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry',
            style: Styles.regular12,
          ),
        ),
      ],
    );
  }
}
