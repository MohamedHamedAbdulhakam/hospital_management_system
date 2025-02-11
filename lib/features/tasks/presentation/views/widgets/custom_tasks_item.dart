import 'package:flutter/material.dart';
import 'package:hospital_system/core/utils/styles.dart';

import '../../../../../core/utils/colors.dart';

class CustomTasksItem extends StatelessWidget {
  const CustomTasksItem({super.key, required this.onTap});

  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 100,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Image.asset(
                              'assets/icons/checkbox.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        const Text(
                          'Task Name',
                          style: Styles.regular14,
                        ),
                      ],
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
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(4),
                        ),
                        color: kBrown.withOpacity(0.16),
                      ),
                      child: Center(
                        child: Text(
                          'Process',
                          style: Styles.regular10.copyWith(color: kBrown),
                        ),
                      ),
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
