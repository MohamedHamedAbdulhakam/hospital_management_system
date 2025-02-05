import 'package:flutter/material.dart';
import 'package:hospital_system/features/auth/presentation/views/widgets/custom_auth_button.dart';
import 'package:hospital_system/features/auth/presentation/views/widgets/custom_dropdown_button_form_field.dart';
import 'package:hospital_system/features/auth/presentation/views/widgets/custom_password_text_field.dart';

import '../../../../../core/widgets/custom_app_bar.dart';
import 'custom_auth_text_field.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomAppBar(
            title: 'New User',
          ),
          SizedBox(
            height: 28,
          ),
          CustomAuthTextField(
            iconPath: 'assets/icons/person.png',
            hintText: 'First name',
          ),
          SizedBox(
            height: 28,
          ),
          CustomAuthTextField(
            iconPath: 'assets/icons/person.png',
            hintText: 'Last name',
          ),
          SizedBox(
            height: 28,
          ),
          CustomDropdownButtonFormField(
            iconPath: 'assets/icons/gender.png',
            hintText: 'Gender',
            items: ["Male", "Female"],
          ),
          SizedBox(
            height: 28,
          ),
          CustomDropdownButtonFormField(
            iconPath: 'assets/icons/specialist.png',
            hintText: 'Specialist',
            items: [
              "Doctor",
              "Receptionist",
              "Nurse",
              "Analysis Employee",
              "Manger",
              "HR",
            ],
          ),
          SizedBox(
            height: 28,
          ),
          CustomAuthTextField(
            isDate: true,
            hintText: 'Date of birth',
          ),
          SizedBox(
            height: 28,
          ),
          CustomDropdownButtonFormField(
            iconPath: 'assets/icons/statues.png',
            hintText: 'Statues',
            items: [
              "Single",
              "Married",
            ],
          ),
          SizedBox(
            height: 28,
          ),
          CustomAuthTextField(
            iconPath: 'assets/icons/phone.png',
            hintText: 'Phone Number',
          ),
          SizedBox(
            height: 28,
          ),
          CustomAuthTextField(
            iconPath: 'assets/icons/email.png',
            hintText: 'E-mail',
          ),
          SizedBox(
            height: 28,
          ),
          CustomPasswordTextField(
            hintText: 'Password',
          ),
          SizedBox(
            height: 20,
          ),
          CustomAuthButton(
            text: 'Login',
          ),
        ],
      ),
    );
  }
}
