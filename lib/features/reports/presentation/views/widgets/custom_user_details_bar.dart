import 'package:flutter/material.dart';
import 'package:hospital_system/core/utils/colors.dart';
import 'package:hospital_system/core/utils/styles.dart';
import 'package:intl/intl.dart';

class CustomUserDetailsBar extends StatelessWidget {
  const CustomUserDetailsBar(
      {super.key,
      required this.profileImagePath,
      required this.specialist,
      required this.name});

  final String profileImagePath;
  final String specialist;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 37,
          height: 37,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(
            profileImagePath,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Styles.regular14,
              ),
              Text(
                'Specialist , $specialist',
                style: Styles.regular10.copyWith(
                  color: kMainColor,
                ),
              ),
            ],
          ),
        ),
        Expanded(child: SizedBox()),
        Text(
          '${DateFormat('dd ${DateFormat.ABBR_MONTH} yyyy').format(DateTime.now())}',
          style: Styles.light10.copyWith(
            color: kLightGrey,
          ),
        ),
      ],
    );
  }
}
