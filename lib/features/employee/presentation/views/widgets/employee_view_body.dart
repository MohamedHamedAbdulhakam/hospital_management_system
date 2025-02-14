import 'package:flutter/material.dart';
import 'package:hospital_system/core/widgets/custom_app_bar.dart';
import 'package:hospital_system/features/employee/presentation/views/widgets/custom_employee_list_view.dart';
import 'package:hospital_system/features/employee/presentation/views/widgets/custom_filter_tabs.dart';
import 'package:hospital_system/features/employee/presentation/views/widgets/custom_search_text_field.dart';

class EmployeeViewBody extends StatelessWidget {
  const EmployeeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                CustomAppBar(title: 'Employee'),
                SizedBox(
                  height: 24,
                ),
                CustomSearchTextField(hintText: 'Employee'),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(child: CustomFilterTabs()),
        const SliverToBoxAdapter(child: CustomEmployeeListView()),
      ],
    );
  }
}
