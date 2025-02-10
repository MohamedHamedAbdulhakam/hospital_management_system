import 'package:flutter/material.dart';
import 'package:hospital_system/core/utils/colors.dart';
import 'package:hospital_system/core/widgets/custom_app_bar.dart';
import 'package:hospital_system/features/auth/presentation/views/widgets/custom_auth_button.dart';
import 'package:hospital_system/features/reports/presentation/views/widgets/custom_replay_text_field.dart';
import 'package:hospital_system/features/reports/presentation/views/widgets/custom_report_body.dart';
import 'package:hospital_system/features/reports/presentation/views/widgets/custom_report_text_field_bar.dart';

import 'custom_replay.dart';

class ReportDetailsViewBody extends StatelessWidget {
  const ReportDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const CustomAppBar(title: 'Report Details'),
                const SizedBox(
                  height: 36,
                ),
                const CustomReportTextFieldBar(),
                const SizedBox(
                  height: 30,
                ),
                const CustomReportBody(),
                const SizedBox(
                  height: 25,
                ),
                const CustomReplay(specialist: 'Manager'),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                      width: 1,
                      height: 280,
                      color: kLightGrey,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomReportBody(),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(
                            'assets/images/img.png',
                          ),
                        ),
                      ],
                    )),
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Column(
                children: [
                  CustomReplayTextField(),
                  SizedBox(
                    height: 16,
                  ),
                  CustomAuthButton(text: 'Send'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
