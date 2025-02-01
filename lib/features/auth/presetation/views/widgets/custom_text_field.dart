import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.iconPath,
    required this.hintText,
  });

  final String iconPath;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        validator: (data) {
          if (data!.isEmpty) {
            return 'Field Is Required';
          }
          return null;
        },
        cursorColor: kMainColor,
        decoration: InputDecoration(
          prefixIcon: SizedBox(
            width: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  iconPath,
                  fit: BoxFit.fitHeight,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/icons/cursor.png',
                  fit: BoxFit.fitHeight,
                ),
              ],
            ),
          ),
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
      ),
    );
  }
}
