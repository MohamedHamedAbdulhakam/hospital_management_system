import 'package:flutter/material.dart';
import 'package:hospital_system/features/cases/presentation/views/widgets/medical_detai_item.dart';
import 'package:hospital_system/features/reports/presentation/views/widgets/custom_user_details_bar.dart';

class MedicalRecordContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomUserDetailsBar(profileImagePath: 'assets/images/human.png', specialist: 'Doctor', name: 'Ahmed Mohamed'),
       
        const Text(
          "Details Note",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
         const SizedBox(height: 4),
        Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text.",
          style: TextStyle(fontSize: 14, color: Colors.grey[700]),
        ),
        SizedBox(height: 30,),
         const Text(
          "Medical Record",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
         const MedicalDetailItem(label: "Blood Pressure", value: "120-129"),
        const MedicalDetailItem(label: "Sugar Analysis", value: "120-129"),
        const SizedBox(height: 16),
      ],
    );
  }
}
