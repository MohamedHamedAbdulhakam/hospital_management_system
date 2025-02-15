
import 'package:flutter/material.dart';
import 'package:hospital_system/core/widgets/custom_app_bar.dart';
import 'package:hospital_system/features/reports/presentation/views/create_report_view.dart';
import 'package:hospital_system/features/reports/presentation/views/widgets/custom_nav_bar.dart';
import 'package:hospital_system/features/reports/presentation/views/widgets/custom_reports_list_view.dart';

class ReportsViewBody extends StatelessWidget {
  const ReportsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const CustomAppBar(title: 'calls'),
          const SizedBox(
            height: 24,
          ),
          CustomNavBar(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const CreateReportView();
                  },
                ),
              );
            },
          ),
          const SizedBox(
            height: 36,
          ),
          const CustomReportsListView(),
        ],
      ),
    );
  }
}
