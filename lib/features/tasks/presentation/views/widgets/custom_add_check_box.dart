import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomAddCheckBox extends StatelessWidget {
  const CustomAddCheckBox({super.key, required this.description});

  final String description;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.all(6),
          child: Icon(
            CupertinoIcons.delete_simple,
            color: Colors.red,
            size: 16,
          ),
        ),
        Text(
          description,
          style: Styles.regular12,
        ),
      ],
    );
  }
}
