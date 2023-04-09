import 'package:flutter/material.dart';
import 'package:wayin/Features/Splash/Splash_Screen.dart';

void main() {
  runApp(const WayIn());
}

class WayIn extends StatelessWidget {
  const WayIn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
