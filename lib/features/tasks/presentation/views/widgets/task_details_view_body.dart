import 'package:flutter/material.dart';
import 'package:hospital_system/core/utils/colors.dart';
import 'package:hospital_system/core/widgets/custom_app_bar.dart';
import 'package:hospital_system/features/auth/presentation/views/widgets/custom_auth_button.dart';
import 'package:hospital_system/features/reports/presentation/views/widgets/custom_report_body.dart';

import '../../../../reports/presentation/views/widgets/custom_replay.dart';
import 'custom_task_text_field_bar.dart';

class TaskDetailsViewBody extends StatelessWidget {
  const TaskDetailsViewBody({super.key, required this.specialist});

  final String specialist;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomAppBar(title: 'Task Details'),
                  const SizedBox(
                    height: 36,
                  ),
                  const CustomTaskTextFieldBar(
                    hintText: 'Task Name',
                  ),
                  const SizedBox(
                    height: 30,
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
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(alignment: Alignment.centerLeft, child: Text('To Do')),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (value) {},
                            shape: const CircleBorder(),
                            activeColor: kMainColor,
                          ),
                          const Text('Lorem Ipsum is simply dummy text of'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                            shape: const CircleBorder(
                              side: BorderSide(
                                color: kMainColor,
                              ),
                            ),
                            activeColor: kMainColor,
                          ),
                          const Text('Lorem Ipsum is simply dummy text of'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                            shape: const CircleBorder(),
                            activeColor: kMainColor,
                          ),
                          const Text('Lorem Ipsum is simply dummy text of'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (value) {},
                            shape: const CircleBorder(),
                            activeColor: kMainColor,
                          ),
                          const Text('Lorem Ipsum is simply dummy text of'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  specialist == 'Manger'
                      ? Column(
                          children: [
                            CustomReplay(specialist: specialist),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 1,
                                  height: 100,
                                  color: kLightGrey,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Expanded(
                                  child: Column(
                                    children: [
                                      CustomReportBody(),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      : const CustomTaskTextFieldBar(
                          hintText: 'Add Note',
                          maxLines: 4,
                        ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Column(
                  children: [
                    CustomAuthButton(
                      text: 'Finish Task',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
