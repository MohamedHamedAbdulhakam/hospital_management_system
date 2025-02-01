import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../cubit/password_visiblity/password_cubit.dart';
import '../../cubit/password_visiblity/password_state.dart';

class CustomPasswordTextField extends StatelessWidget {
  const CustomPasswordTextField({
    super.key,
    this.isObscure = false,
    required this.hintText,
  });

  final bool isObscure;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: BlocProvider(
        create: (context) {
          return PasswordCubit();
        },
        child: BlocBuilder<PasswordCubit, PasswordState>(
            builder: (context, state) {
          return TextFormField(
            validator: (data) {
              if (data!.isEmpty) {
                return 'Field Is Required';
              }
              return null;
            },
            cursorColor: kMainColor,
            obscureText: state.isPasswordVisible,
            decoration: InputDecoration(
              prefixIcon: SizedBox(
                width: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/lock.png',
                      fit: BoxFit.fitHeight,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/icons/cursor.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ],
                ),
              ),
              hintText: hintText,
              hintStyle: Styles.regular14.copyWith(color: kLightGrey),
              suffixIcon: GestureDetector(
                onTap: () {
                  context.read<PasswordCubit>().togglePasswordVisibility();
                },
                child: state.isPasswordVisible
                    ? Image.asset('assets/icons/visible.png')
                    : const Icon(
                        Icons.visibility_off_outlined,
                        color: kMainColor,
                      ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: kLightGrey,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: kLightGrey,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 2,
                  color: kMainColor,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          );
        }),
      ),
    );
  }
}
