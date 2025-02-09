import 'package:flutter/material.dart';
import 'package:hospital_system/features/reports/presentation/views/report_details_view.dart';

import 'custom_reports_item.dart';

class CustomReportsListView extends StatelessWidget {
  const CustomReportsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: 10,
        itemBuilder: (context, index) {
          return CustomReportsItem(
            onTap: () {
              return Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ReportDetailsView();
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
