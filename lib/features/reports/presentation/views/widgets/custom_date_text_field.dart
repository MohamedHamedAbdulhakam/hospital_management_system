import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/helper/show_calendar_bottom_sheet.dart';

class CustomDateTextField extends StatelessWidget {
  const CustomDateTextField({super.key, required this.selectedDate});

  final String selectedDate;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(
        text: selectedDate,
      ),
      readOnly: true,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 16),
        suffixIcon: GestureDetector(
          child: Container(
            margin: const EdgeInsets.all(0),
            width: 53,
            height: 53,
            decoration: BoxDecoration(
              color: kDarkGrey,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Image.asset(
              'assets/icons/calendar.png',
            ),
          ),
          onTap: () => showCalendarBottomSheet(context),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: kLightGrey,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: kLightGrey,
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
        hintText: 'Select Date',
      ),
    );
  }
}
