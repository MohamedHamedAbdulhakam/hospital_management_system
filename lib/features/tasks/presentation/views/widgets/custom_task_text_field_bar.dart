import 'package:flutter/material.dart';
import 'package:hospital_system/core/utils/styles.dart';

import '../../../../../core/utils/colors.dart';

class CustomTaskTextFieldBar extends StatelessWidget {
  const CustomTaskTextFieldBar(
      {super.key, this.maxLines = 1, required this.hintText});

  final int maxLines;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        contentPadding: const EdgeInsets.only(left: 10),
        hintText: hintText,
        hintStyle: Styles.medium14,
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
