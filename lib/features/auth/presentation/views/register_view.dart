import 'package:flutter/material.dart';
import 'package:hospital_system/features/auth/presentation/views/widgets/register_view_body.dart';

import '../../../../core/widgets/background_widget.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackgroundWidget(
        child: RegisterViewBody(),
      ),
    );
  }
}
