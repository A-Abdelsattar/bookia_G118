import 'package:flutter/material.dart';

import '../theming/app_colors.dart';
import '../theming/styles.dart';


class MainButton extends StatelessWidget {
  final String title;
  const MainButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return             Container(
      width: 331,
      height: 56,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.primary,
      ),
      child: Text(title,style: font15RegularWhite,),
    )
    ;
  }
}
