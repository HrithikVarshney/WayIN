import 'dart:async';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:wayin/Features/Onboarding/Onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 7), () {
      Navigator.push(
          context,
          PageTransition(
              duration: const Duration(milliseconds: 1200),
              type: PageTransitionType.rightToLeft,
              alignment: Alignment.centerRight,
              child: const Onboarding()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: const Color(0xFFFFFFFF),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Center(
                child: Container(
                    alignment: Alignment.center,
                    child: const Image(
                      image: AssetImage(
                        'assets/Favicon.png',
                      ),
                    )),
              ),
            ),
            /* Text(
              'WayIN',
              style: GoogleFonts.(
                  textStyle: const TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),*/
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Container(
                  child: LoadingAnimationWidget.dotsTriangle(
                      color: Colors.teal, size: 35)),
            )
          ],
        ),
      ),
    ));
  }
}
