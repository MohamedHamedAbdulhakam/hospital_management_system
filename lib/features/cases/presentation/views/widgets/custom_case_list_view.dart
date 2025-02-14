import 'package:flutter/material.dart';

class CustomCaseListView extends StatelessWidget {
  const CustomCaseListView({super.key, required this.widget});

  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: 10,
        itemBuilder: (context, index) {
          return widget;
        },
      ),
    );
  }
}
