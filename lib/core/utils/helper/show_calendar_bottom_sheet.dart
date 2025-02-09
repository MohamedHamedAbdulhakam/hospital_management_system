import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/reports/presentation/cubit/calender/calendar_cubit.dart';
import '../../../features/reports/presentation/views/widgets/calendar_bottom_sheet.dart';

void showCalendarBottomSheet(BuildContext context) {
  final callCubit = context.read<CalendarCubit>();

  showModalBottomSheet(
    context: context,
    builder: (_) => CalendarBottomSheet(
      selectedDate: callCubit.state.selectedDate,
      onDateSelected: (date) {
        callCubit.updateSelectedDate(date);
      },
    ),
  );
}
