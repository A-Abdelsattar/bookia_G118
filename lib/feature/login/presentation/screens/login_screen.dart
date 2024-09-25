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
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  width: 280,
                  height: 82, // it's 78 in figma but it doesn't fit.
                  child: Text(AppString.loginWelcomeMessage, style: font30RegularDark),
                ),
                const SizedBox(
                  height: 32,
                ),
                const ReusableTextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  hintText: "",
                  labelText: AppString.enterYourEmail,
                ),
                const SizedBox(
                  height: 12,
                ),
                ReusableTextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  hintText: "",
                  labelText: AppString.enterYourPassword,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_red_eye),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      AppString.forgotPassword,
                      style: font14RegularDarkGray,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                MainButton(
                    onTap: () {
                      push(context, const LoginScreen());
                    },
                    title: AppString.login),
                const SizedBox(
                  height: 34,
                ),
                const CenteredTextDivider(
                  color: AppColors.border,
                  text: AppString.orLogIn,
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
                  height: 140,
                ),
                ReusableRichText(
                  text1: AppString.doNotHaveAnAccount,
                  text2: AppString.registerNow,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
