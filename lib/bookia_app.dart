import 'package:bookia_118/feature/splash/presentation/splash_screen.dart';
import 'package:flutter/material.dart';

import 'core/theming/theming.dart';


class BookiaApp extends StatelessWidget {
  const BookiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: lightTheme,
     home: const SplashScreen(),
    );
  }
}
