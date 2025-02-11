import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_system/features/tasks/presentation/views/widgets/tasks_view_body.dart';

import '../../../reports/presentation/cubit/calender/calendar_cubit.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key, required this.specialist});

  final String specialist;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => CalendarCubit(),
        child: TasksViewBody(
          specialist: specialist,
        ),
      ),
    );
  }
}
