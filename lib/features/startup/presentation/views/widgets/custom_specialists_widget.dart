import 'package:flutter/material.dart';
import 'package:hospital_system/features/startup/presentation/views/widgets/custom_specialist_button.dart';

class CustomSpecialistsWidget extends StatelessWidget {
  const CustomSpecialistsWidget({super.key, required this.specialists});

  final List<String> specialists;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10, // Horizontal space
      runSpacing: 16,
      alignment: WrapAlignment.spaceBetween,
      crossAxisAlignment: WrapCrossAlignment.center, // Vertical space
      children: specialists.map((specialist) {
        return CustomSpecialistButton(specialist: specialist);
      }).toList(),
    );
  }
}
