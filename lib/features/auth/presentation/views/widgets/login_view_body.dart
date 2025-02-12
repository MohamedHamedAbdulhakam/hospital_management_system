import 'package:flutter/material.dart';
import 'package:hospital_system/features/auth/presentation/views/widgets/custom_auth_button.dart';
import 'package:hospital_system/features/home/presentation/views/home_view.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_auth_text_field.dart';
import 'custom_password_text_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key, required this.specialist});

  final String specialist;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
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
            const CustomAuthTextField(
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
                  horizontal: 15,
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
            const SizedBox(
              height: 30,
            ),
            CustomAuthButton(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return HomeView(specialist: specialist);
                  },
                ));
              },
              text: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}
