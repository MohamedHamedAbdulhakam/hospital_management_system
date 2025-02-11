import 'package:flutter/material.dart';
import 'package:hospital_system/core/utils/colors.dart';
import 'package:hospital_system/core/utils/styles.dart';

class CustomReplay extends StatelessWidget {
  const CustomReplay({super.key, required this.specialist});

  final String specialist;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/icons/replay.png'),
        Text(
          'Replay - $specialist',
          style: Styles.light10.copyWith(
            color: kLightGrey,
          ),
        ),
      ],
    );
  }
}
