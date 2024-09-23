import 'package:flutter/material.dart';

import '../theming/app_colors.dart';


class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return                 InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.border)
        ),
        child: Icon(Icons.arrow_back_ios_new),
      ),
    )
    ;
  }
}
