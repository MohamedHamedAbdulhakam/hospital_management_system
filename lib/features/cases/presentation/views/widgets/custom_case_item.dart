import 'package:flutter/material.dart';
import 'package:hospital_system/core/utils/styles.dart';
import 'package:hospital_system/features/cases/presentation/views/case_details_view.dart';

import '../../../../../core/utils/colors.dart';

class CustomCaseItem extends StatelessWidget {
  const CustomCaseItem({super.key, required this.onTap});

  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 180,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xff0000001A),
                  blurRadius: 20,
                  offset: Offset(
                    0,
                    10,
                  ),
                ),
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            color: kMainColor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Icon(
                            Icons.person_outline_rounded,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        const Text(
                          'Ebrahim Khaled',
                          style: Styles.regular14,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            color: kMainColor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Image.asset(
                            'assets/icons/calendar.png',
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        const Text(
                          '24.04.2021',
                          style: Styles.regular14,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 64, vertical: 16),
                  child: Container(
                    height: 40,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                      color: kGreen,
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CaseDetailsScreen()),
                          );
                        },
                        child: Text(
                          'Show Details',
                          style: Styles.regular14.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
