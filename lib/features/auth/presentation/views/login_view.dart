import 'package:flutter/material.dart';
import 'package:hospital_system/core/widgets/background_widget.dart';
import 'package:hospital_system/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key, required this.specialist});

  final String specialist;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: LoginViewBody(
          specialist: specialist,
        ),
      ),
    );
  }
}
