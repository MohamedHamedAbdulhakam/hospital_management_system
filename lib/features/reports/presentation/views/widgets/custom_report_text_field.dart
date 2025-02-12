import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class CustomReportTextField extends StatelessWidget {
  const CustomReportTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
  });

  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data!.isEmpty) {
          return 'Field Is Required';
        }
        return null;
      },
      cursorColor: kMainColor,
      maxLines: maxLines,
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
    );
  }
}
