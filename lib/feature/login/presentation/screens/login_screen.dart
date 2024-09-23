import 'package:bookia_118/core/theming/app_colors.dart';
import 'package:bookia_118/core/widgets/back_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                SizedBox(height: 11,),
                AppBackButton(),
                /////Login
              ],
            ),
          ),
        ),
      ),
    );
  }
}
