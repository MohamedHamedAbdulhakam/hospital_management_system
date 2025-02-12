import 'package:flutter/material.dart';
import 'package:hospital_system/features/tasks/presentation/views/widgets/task_details_view_body.dart';

class TaskDetailsView extends StatelessWidget {
  const TaskDetailsView({super.key, required this.specialist});

  final String specialist;

  @override
  Widget build(BuildContext context) {
    return TaskDetailsViewBody(
      specialist: specialist,
    );
  }
}
