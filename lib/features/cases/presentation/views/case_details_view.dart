import 'package:flutter/material.dart';
import 'package:hospital_system/core/utils/colors.dart';

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
        title: const Text("Case Details"),
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

// Tag Button Widget with Clickable Functionality
class TagButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  TagButton({required this.text, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? kMainColor : Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// Case Details Content
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

// Medical Record Content
class MedicalRecordContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Medical Record", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        SizedBox(height: 8),
        Text("This section contains medical records of the patient."),
      ],
    );
  }
}

// Medical Measurement Content
class MedicalMeasurementContent extends StatelessWidget {
  const MedicalMeasurementContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Medical Measurements", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        SizedBox(height: 8),
        Text("This section contains patient’s medical measurements."),
      ],
    );
  }
}

// Case Detail Item Widget
class CaseDetailItem extends StatelessWidget {
  final String label;
  final String value;

  const CaseDetailItem({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            child: Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}