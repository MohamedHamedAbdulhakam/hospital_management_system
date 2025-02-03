import 'package:flutter/material.dart';
import 'package:hospital_system/core/widgets/background_widget.dart';
import 'package:hospital_system/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackgroundWidget(
        child: LoginViewBody(),
      ),
    );
  }
}
