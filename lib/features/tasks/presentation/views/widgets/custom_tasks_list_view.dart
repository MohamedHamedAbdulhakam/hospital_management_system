import 'package:flutter/material.dart';

import '../task_details_view.dart';
import 'custom_tasks_item.dart';

class CustomTasksListView extends StatelessWidget {
  const CustomTasksListView({super.key, required this.specialist});

  final String specialist;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: 10,
        itemBuilder: (context, index) {
          return CustomTasksItem(
            onTap: () {
              return Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TaskDetailsView(
                      specialist: specialist,
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
