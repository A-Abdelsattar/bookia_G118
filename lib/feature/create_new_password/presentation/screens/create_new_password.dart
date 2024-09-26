import 'package:bookia_118/core/constants/app_strings.dart';
import 'package:bookia_118/core/functions/navigation.dart';
import 'package:bookia_118/core/theming/app_colors.dart';
import 'package:bookia_118/core/theming/styles.dart';
import 'package:bookia_118/core/widgets/back_button.dart';
import 'package:bookia_118/core/widgets/main_button.dart';
import 'package:bookia_118/core/widgets/reusable_text_form_field.dart';
import 'package:bookia_118/feature/create_new_password/presentation/screens/password_changed.dart';
import 'package:flutter/material.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 12,
              ),
              const AppBackButton(),
              const SizedBox(
                height: 28,
              ),
              SizedBox(
                // width: 279,
                height: 39,
                child: Text(
                  AppString.createNewPassword,
                  style: font30RegularDark,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 48,
                width: 331,
                child: Text(
                  AppString.createNewPasswordMessage,
                  style: font15RegularGray.copyWith(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const ReusableTextFormField(
                hintText: "",
                labelText: AppString.newPassword,
                obscureText: false,
              ),
              const SizedBox(height: 18),
              const ReusableTextFormField(
                hintText: "",
                labelText: AppString.confirmPassword,
                obscureText: false,
              ),
              const SizedBox(
                height: 38,
              ),
              MainButton(
                onTap: () {
                  push(context, const PasswordChanged());
                },
                title: AppString.resetPassword,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
