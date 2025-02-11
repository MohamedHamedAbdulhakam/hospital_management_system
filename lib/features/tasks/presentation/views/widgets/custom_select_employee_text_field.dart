import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class CustomSelectEmployeeTextField extends StatelessWidget {
  const CustomSelectEmployeeTextField(
      {super.key, required this.hintText, required this.items});

  final String hintText;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    String? selectedGender;
    return DropdownButtonFormField<String>(
      iconSize: 24,
      icon: const Icon(
        Icons.arrow_drop_down_outlined,
        color: kDarkGrey,
      ),
      value: selectedGender,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Styles.regular14.copyWith(color: kLightGrey),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: kLightGrey,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: kLightGrey,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 2,
            color: kMainColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      items: items.map((String gender) {
        return DropdownMenuItem<String>(
          value: gender,
          child: Text(gender),
        );
      }).toList(),
      onChanged: (value) {
        selectedGender = value;
      },
    );
  }
}
