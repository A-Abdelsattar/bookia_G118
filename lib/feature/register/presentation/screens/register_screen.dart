import 'package:bookia_118/core/constants/app_strings.dart';
import 'package:bookia_118/core/constants/constants.dart';
import 'package:bookia_118/core/functions/navigation.dart';
import 'package:bookia_118/core/theming/app_colors.dart';
import 'package:bookia_118/core/theming/styles.dart';
import 'package:bookia_118/core/widgets/back_button.dart';
import 'package:bookia_118/core/widgets/centered_text_divider.dart';
import 'package:bookia_118/core/widgets/main_button.dart';
import 'package:bookia_118/core/widgets/reusable_rich_text.dart';
import 'package:bookia_118/core/widgets/reusable_text_form_field.dart';
import 'package:bookia_118/core/widgets/social_auth.dart';
import 'package:bookia_118/feature/login/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backGround,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 11,
                ),
                const AppBackButton(),
                const SizedBox(height: 29),
                SizedBox(
                  width: 331,
                  height: 78, // it's 78 in figma but it doesn't fit.
                  child: Text(AppString.registerWelcomeMessage, style: font30RegularDark),
                ),
                const SizedBox(
                  height: 32,
                ),
                ///-------the user name field-------->
                const ReusableTextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  hintText: "",
                  labelText: AppString.userName,
                ),
                const SizedBox(
                  height: 12,
                ),
                ///-------the email field-------->
                const ReusableTextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  hintText: "",
                  labelText: AppString.email,
                ),
                const SizedBox(
                  height: 12,
                ),
                ///-------the password field-------->
                const ReusableTextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  hintText: "",
                  labelText: AppString.password,
                ),
                const SizedBox(
                  height: 12,
                ),
                ///-------the confirm password field-------->
                const ReusableTextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  hintText: "",
                  labelText: AppString.confirmPassword,
                ),
                const SizedBox(
                  height: 30,
                ),

                MainButton(
                    onTap: () {
                      push(context, const LoginScreen());
                    },
                    title: AppString.register),
                const SizedBox(
                  height: 35,
                ),
                const CenteredTextDivider(
                  color: AppColors.border,
                  text: AppString.orRegisterWith,
                  thickness: 2,
                ),
                const SizedBox(
                  height: 21,
                ),
                const Row(
                  children: [
                    SocialAuth(
                      image: AppImages.facebookSVG,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    SocialAuth(
                      image: AppImages.googleSVG,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    SocialAuth(
                      image: AppImages.appleSVG,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 54,
                ),
                ReusableRichText(
                  text1: AppString.alreadyHaveAnAccount,
                  text2: AppString.loginNow ,
                  onPressed: () {
                    push(context, const LoginScreen());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
