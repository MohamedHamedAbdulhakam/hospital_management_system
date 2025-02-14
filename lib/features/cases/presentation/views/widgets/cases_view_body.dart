import 'package:flutter/material.dart';
import 'package:hospital_system/core/widgets/custom_app_bar.dart';
import 'package:hospital_system/features/cases/presentation/views/widgets/custom_case_list_view.dart';

import 'custom_case_item.dart';
import 'custom_request_item.dart';

class CasesViewBody extends StatelessWidget {
  const CasesViewBody({super.key, required this.specialist});

  final String specialist;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const CustomAppBar(title: 'Cases'),
          const SizedBox(
            height: 24,
          ),
          CustomCaseListView(
            widget: specialist == 'Analysis Employee'
                ? CustomRequestItem(
                    onTap: () {},
                  )
                : CustomCaseItem(
                    onTap: () {},
                  ),
          ),
        ],
      ),
    );
  }
}
