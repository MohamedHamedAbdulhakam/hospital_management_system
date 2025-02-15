import 'package:flutter/material.dart';
import 'package:hospital_system/features/auth/presentation/views/login_view.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class CustomSpecialistButton extends StatelessWidget {
  const CustomSpecialistButton({super.key, required this.specialist});

  final String specialist;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return LoginView(specialist: specialist);
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: kLightGrey,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: Text(
            specialist,
            style: Styles.light14.copyWith(color: kMainColor),
          ),
        ),
      ),
    );
  }
}
