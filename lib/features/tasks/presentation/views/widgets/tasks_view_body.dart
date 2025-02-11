import 'package:flutter/material.dart';
import 'package:hospital_system/core/widgets/custom_app_bar.dart';
import 'package:hospital_system/features/reports/presentation/views/widgets/custom_nav_bar.dart';

import '../create_task_view.dart';
import 'custom_tasks_list_view.dart';

class TasksViewBody extends StatelessWidget {
  const TasksViewBody({super.key, required this.specialist});

  final String specialist;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const CustomAppBar(title: 'Tasks'),
          const SizedBox(
            height: 24,
          ),
          CustomNavBar(
            canAdd: specialist == 'Manger' ? true : false,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const CreateTaskView();
                  },
                ),
              );
            },
          ),
          const SizedBox(
            height: 36,
          ),
          CustomTasksListView(
            specialist: specialist,
          ),
        ],
      ),
    );
  }
}
