import 'package:flutter/material.dart';

import 'custom_employee_item.dart';

class CustomEmployeeListView extends StatelessWidget {
  const CustomEmployeeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(0),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const CustomEmployeeItem(
          employeeImage: 'assets/images/human.png',
          status: false,
          specialist: 'Doctor',
          name: 'Salma Ahmed',
        );
      },
    );
  }
}
