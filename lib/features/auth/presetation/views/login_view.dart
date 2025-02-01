import 'package:flutter/material.dart';
import 'package:hospital_system/core/background_widget.dart';
import 'package:hospital_system/core/utils/colors.dart';
import 'package:hospital_system/core/utils/styles.dart';
import 'package:hospital_system/features/auth/presetation/views/widgets/custom_password_text_field.dart';
import 'package:hospital_system/features/auth/presetation/views/widgets/custom_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 150,
            ),
            Image.asset(
              'assets/images/logo.png',
              height: 105,
              width: 105,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Welcome back !',
              style: Styles.semiBold20.copyWith(
                color: kMainColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Text(
                'To Continue , Login Now',
                style: Styles.regular14.copyWith(
                  color: kLightGrey,
                ),
              ),
            ),
            const SizedBox(
              height: 85,
            ),
            const CustomTextField(
              iconPath: 'assets/icons/phone.png',
              hintText: 'Phone Number',
            ),
            const SizedBox(
              height: 28,
            ),
            const CustomPasswordTextField(
              hintText: 'Password',
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 8,
                ),
                child: Text(
                  'Forget Password ?',
                  style: Styles.regular12.copyWith(
                    color: kLightGrey,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kMainColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: Styles.regular14.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
