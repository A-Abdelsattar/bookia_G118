import 'package:bookia_118/core/constants/app_strings.dart';
import 'package:bookia_118/core/functions/navigation.dart';
import 'package:bookia_118/core/theming/app_colors.dart';
import 'package:bookia_118/core/theming/styles.dart';
import 'package:bookia_118/core/widgets/back_button.dart';
import 'package:bookia_118/core/widgets/main_button.dart';
import 'package:bookia_118/core/widgets/reusable_rich_text.dart';
import 'package:bookia_118/feature/create_new_password/presentation/screens/create_new_password.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/reusable_0TP_field.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
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
                height: 39,
                child: Text(
                  AppString.otpVerification,
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
                    AppString.otpMessage,
                  style: font15RegularGray.copyWith(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const Row(
                children: [
                  ReusableOtpField1(),
                  SizedBox(
                    width: 17,
                  ),
                  ReusableOtpField1(),
                  SizedBox(
                    width: 17,
                  ),
                  ReusableOtpField1(),
                  SizedBox(
                    width: 17,
                  ),
                  ReusableOtpField1()
                ],
              ),
              const SizedBox(
                height: 38,
              ),
               MainButton(
                onTap: (){push(context, const CreateNewPassword());},
                title: AppString.verify,
              ),
              const SizedBox(
                height: 357,
              ),
              ReusableRichText(
                text1:  AppString.didNotReceivedCode,
                text2:  AppString.resend,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
