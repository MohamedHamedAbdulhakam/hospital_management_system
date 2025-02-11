import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class CustomDateDropDown extends StatefulWidget {
  const CustomDateDropDown({
    super.key,
    this.iconPath,
    required this.hintText,
    this.onDateSelected,
  });

  final String? iconPath;
  final String hintText;
  final Function(String)? onDateSelected;

  @override
  State<CustomDateDropDown> createState() => _CustomAuthTextFieldState();
}

class _CustomAuthTextFieldState extends State<CustomDateDropDown> {
  final TextEditingController _controller = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(picked);
      setState(() {
        _controller.text = formattedDate;
      });
      if (widget.onDateSelected != null) {
        widget.onDateSelected!(formattedDate);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      readOnly: true,
      validator: (data) {
        if (data!.isEmpty) {
          return 'Field is required';
        }
        return null;
      },
      cursorColor: kMainColor,
      onTap: () => _selectDate(context),
      decoration: InputDecoration(
        prefixIcon: SizedBox(
          width: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.date_range_outlined,
                color: kMainColor,
              ),
              const SizedBox(width: 10),
              Image.asset(
                'assets/icons/cursor.png',
                fit: BoxFit.fitHeight,
              ),
            ],
          ),
        ),
        suffixIcon: const Icon(
          Icons.arrow_drop_down_outlined,
          color: kDarkGrey,
        ),
        hintText: widget.hintText,
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
