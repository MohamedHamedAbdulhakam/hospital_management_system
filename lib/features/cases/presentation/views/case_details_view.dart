import 'package:flutter/material.dart';
import 'package:hospital_system/features/cases/presentation/views/widgets/case_detailed_content.dart';
import 'package:hospital_system/features/cases/presentation/views/widgets/medical_measurement_content.dart';
import 'package:hospital_system/features/cases/presentation/views/widgets/medical_recorded_content.dart';
import 'package:hospital_system/features/cases/presentation/views/widgets/tag_button.dart';

class CaseDetailsScreen extends StatefulWidget {
  const CaseDetailsScreen({super.key});

  @override

  _CaseDetailsScreenState createState() => _CaseDetailsScreenState();
}

class _CaseDetailsScreenState extends State<CaseDetailsScreen> {
  String selectedTab = "Case";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("Case Details")),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tag Buttons
            Row(
              children: [
                TagButton(
                  text: "Case",
                  isSelected: selectedTab == "Case",
                  onTap: () {
                    setState(() {
                      selectedTab = "Case";
                    });
                  },
                ),
              const  SizedBox(width: 8),
                TagButton(
                  text: "Medical record",
                  isSelected: selectedTab == "Medical record",
                  onTap: () {
                    setState(() {
                      selectedTab = "Medical record";
                    });
                  },
                ),
                const SizedBox(width: 8),
                TagButton(
                  text: "Medical measurement",
                  isSelected: selectedTab == "Medical measurement",
                  onTap: () {
                    setState(() {
                      selectedTab = "Medical measurement";
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16),

            // Render different content based on selectedTab
            if (selectedTab == "Case") CaseDetailsContent(),
            if (selectedTab == "Medical record") MedicalRecordContent(),
            if (selectedTab == "Medical measurement") MedicalMeasurementContent(),
          ],
        ),
      ),
    );
  }
}