import 'package:bookia_118/core/functions/navigation.dart';
import 'package:bookia_118/core/theming/app_colors.dart';
import 'package:bookia_118/core/theming/styles.dart';
import 'package:bookia_118/core/widgets/back_button.dart';
import 'package:bookia_118/core/widgets/reusable_rich_text.dart';
import 'package:bookia_118/core/widgets/reusable_text_form_field.dart';
import 'package:bookia_118/feature/login/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/main_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 11,
              ),
              const AppBackButton(),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 39,
                width: 240,
                child: Text(
                  AppString.forgotPassword,
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
                  AppString.forgotPasswordMessage,
                  style: font15RegularGray,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const ReusableTextFormField(
                  hintText: "", labelText: AppString.enterYourEmail, obscureText: false,keyboardType: TextInputType.emailAddress,),
              const SizedBox(height: 38),
              const MainButton(
                title: AppString.sendCode,
              ),
              const SizedBox(
                height: 345,
              ),
              ReusableRichText(
                text1: AppString.rememberPassword,
                text2: AppString.login,
                onPressed: () {
                  push(context, const LoginScreen());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
