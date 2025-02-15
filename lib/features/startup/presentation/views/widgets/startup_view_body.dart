import 'package:flutter/material.dart';
import 'package:hospital_system/core/utils/colors.dart';
import 'package:hospital_system/core/utils/styles.dart';
import 'package:hospital_system/core/widgets/background_widget.dart';
import 'package:hospital_system/features/startup/presentation/views/widgets/custom_specialists_widget.dart';

class StartupViewBody extends StatelessWidget {
  const StartupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Prototype Map',
                style: Styles.semiBold20.copyWith(
                  color: kMainColor,
                ),
              ),
              const SizedBox(
                height: 42,
              ),
              CustomSpecialistsWidget(specialists: [
                "Doctor",
                "Receptionist",
                "Nurse",
                "Analysis Employee",
                "Manger",
                "HR",
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
