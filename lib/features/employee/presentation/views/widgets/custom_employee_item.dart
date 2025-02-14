import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class CustomEmployeeItem extends StatelessWidget {
  const CustomEmployeeItem({
    super.key,
    required this.employeeImage,
    required this.status,
    required this.specialist,
    required this.name,
  });

  final String employeeImage;
  final bool status;
  final String specialist;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        bottom: 20,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 54,
            width: 62,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 54,
                  width: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.asset(
                    employeeImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: status == true ? kGreen : kBrown,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Styles.regular14,
              ),
              Text(
                'Specialist - $specialist',
                style: Styles.regular12.copyWith(
                  color: kLightGrey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
