import 'package:bookia_118/bookia_app.dart';
import 'package:bookia_118/core/theming/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.blue, // navigation bar color
    statusBarColor: AppColors.primary, // status bar color:
  statusBarIconBrightness: Brightness.light
  ));

  runApp(BookiaApp());
}