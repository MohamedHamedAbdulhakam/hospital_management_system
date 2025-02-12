part of 'calendar_cubit.dart';

class CalendarState {
  final DateTime selectedDate;

  const CalendarState({required this.selectedDate});

  CalendarState copyWith({DateTime? selectedDate}) {
    return CalendarState(
      selectedDate: selectedDate ?? this.selectedDate,
    );
  }
}
