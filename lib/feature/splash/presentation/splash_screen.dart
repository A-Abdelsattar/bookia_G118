import 'package:bookia_118/core/constants/app_strings.dart';
import 'package:bookia_118/core/constants/constants.dart';
import 'package:bookia_118/core/functions/navigation.dart';
import 'package:bookia_118/core/theming/styles.dart';
import 'package:bookia_118/core/widgets/main_button.dart';
import 'package:bookia_118/feature/login/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/app_colors.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill,image: Image.asset(AppImages.splashImage).image)
        ),
        child: Column(
          children: [
            SizedBox(height: 230,),
            Text(AppString.introSplash,style: font20RegularDark,),
            SizedBox(height: 333,),
            MainButton(
            onTap: (){
              push(context, LoginScreen());
            }
            ,title: AppString.login),
            SizedBox(height: 15,),
            Container(
              width: 331,
              height: 56,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.dark),
                color: Colors.white
              ),
              child: Text(AppString.register,style: font15RegularWhite.copyWith(
                color: AppColors.dark
              ),),
            )
          ],
        ),
      ),
    );
  }
}
