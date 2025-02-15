import 'package:flutter/material.dart';

class MedicalDetailItem extends StatelessWidget {
  final String label;
  final String value;

  const MedicalDetailItem({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 5,
                backgroundColor: Colors.teal,
              ),
              const SizedBox(width: 8),
              Text(
                label,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
