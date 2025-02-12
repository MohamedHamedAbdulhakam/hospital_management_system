import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/background_top.png',
                  fit: BoxFit.cover,
                  width: width * 0.7,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'assets/images/background_bottom.png',
                  fit: BoxFit.cover,
                  width: width * 0.7,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height,
          width: width,
          child: child,
        ),
      ],
    );
  }
}
