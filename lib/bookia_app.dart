import 'package:flutter/material.dart';
import 'core/theming/theming.dart';
import 'feature/on_boarding/presentation/on_boarding_screen.dart';


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
