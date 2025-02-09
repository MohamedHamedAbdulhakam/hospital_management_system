import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../../core/utils/colors.dart';
import '../../cubit/calender/calendar_cubit.dart';
import 'custom_date_text_field.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key, required this.onTap});

  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: BlocBuilder<CalendarCubit, CalendarState>(
            builder: (context, state) {
              return CustomDateTextField(
                selectedDate:
                    DateFormat('dd . MM . yyyy').format(state.selectedDate),
              );
            },
          ),
        ),
        const SizedBox(width: 12),
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.all(0),
            width: 53,
            height: 53,
            decoration: BoxDecoration(
              color: kMainColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 36,
            ),
          ),
        ),
      ],
    );
  }
}
