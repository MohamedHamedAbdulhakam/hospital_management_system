import 'package:flutter_bloc/flutter_bloc.dart';

part 'calendar_state.dart';

class CalendarCubit extends Cubit<CalendarState> {
  CalendarCubit() : super(CalendarState(selectedDate: DateTime.now()));

  void updateSelectedDate(DateTime date) {
    emit(state.copyWith(selectedDate: date));
  }
}
