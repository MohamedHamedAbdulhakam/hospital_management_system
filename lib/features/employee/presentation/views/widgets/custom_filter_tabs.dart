import 'package:flutter/material.dart';
import 'package:hospital_system/core/utils/colors.dart';
import 'package:hospital_system/core/utils/styles.dart';

class CustomFilterTabs extends StatelessWidget {
  final List<String> tabList = [
    'All',
    'Doctor',
    'Nurse',
    'HR Employee',
    'Analysis Employee',
    'Receptionist',
    'Manger',
  ];
  final ValueNotifier<String> selectedFilter = ValueNotifier<String>('All');

  CustomFilterTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
      valueListenable: selectedFilter,
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tabList.length,
              itemBuilder: (context, index) {
                bool isSelected = tabList[index] == value;
                return GestureDetector(
                  onTap: () {
                    selectedFilter.value = tabList[index];
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      decoration: BoxDecoration(
                          color: isSelected ? kMainColor : Colors.white,
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(
                            color: isSelected ? kMainColor : kLightGrey,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 6,
                        ),
                        child: Center(
                          child: Text(
                            tabList[index],
                            style: Styles.regular12.copyWith(
                              color: isSelected ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
