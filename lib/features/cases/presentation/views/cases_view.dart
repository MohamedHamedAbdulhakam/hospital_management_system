import 'package:flutter/material.dart';
import 'package:hospital_system/features/cases/presentation/views/widgets/cases_view_body.dart';

class CasesView extends StatelessWidget {
  const CasesView({super.key, required this.specialist});

  final String specialist;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CasesViewBody(
        specialist: specialist,
      ),
    );
  }
}
