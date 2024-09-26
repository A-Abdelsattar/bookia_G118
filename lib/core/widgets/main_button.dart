import 'package:flutter/material.dart';

import '../theming/app_colors.dart';
import '../theming/styles.dart';

class MainButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const MainButton({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8),
      color: AppColors.primary,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 331,
          height: 56,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            title,
            style: font15RegularWhite,
          ),
        ),
      ),
    );
  }
}
