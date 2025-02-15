import 'package:flutter/material.dart';
import 'package:hospital_system/features/cases/presentation/views/widgets/case_detail_item.dart';

class CaseDetailsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CaseDetailItem(label: "Patient Name", value: "Ebrahem Khaled"),
        CaseDetailItem(label: "Age", value: "24 years"),
        CaseDetailItem(label: "Phone Number", value: "254110241423"),
        CaseDetailItem(label: "Date", value: "24 . 04 . 2021"),
        CaseDetailItem(label: "Doctor", value: "Salma Ahmed"),
        CaseDetailItem(label: "Nurse", value: "Ali Islam"),
       const  SizedBox(height: 16),
       const Text(
          "Case Description",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 4),
        Text(
          "Details note: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text.",
          style: TextStyle(fontSize: 14, color: Colors.grey[700]),
        ),
      ],
    );
  }
}