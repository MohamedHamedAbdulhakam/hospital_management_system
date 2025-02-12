import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class CustomReplayTextField extends StatelessWidget {
  const CustomReplayTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        contentPadding: const EdgeInsets.only(left: 16),
        hintText: 'Type your Replay',
        hintStyle: Styles.regular14.copyWith(
          color: kLightGrey,
        ),
        suffixIcon: Image.asset(
          'assets/icons/upload.png',
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
