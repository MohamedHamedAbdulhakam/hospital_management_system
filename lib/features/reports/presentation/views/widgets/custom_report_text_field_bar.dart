import 'package:flutter/material.dart';
import 'package:hospital_system/core/utils/styles.dart';

import '../../../../../core/utils/colors.dart';

class CustomReportTextFieldBar extends StatelessWidget {
  const CustomReportTextFieldBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
        filled: true,
        contentPadding: const EdgeInsets.only(left: 10),
        hintText: 'Report Name',
        hintStyle: Styles.medium14,
        suffixIcon: GestureDetector(
          child: Container(
              margin: const EdgeInsets.all(0),
              width: 45,
              height: 36,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Text(
                  'End',
                  style: Styles.medium14.copyWith(
                    color: Colors.white,
                  ),
                ),
              )),
          onTap: () {},
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 2,
            color: kMainColor,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
