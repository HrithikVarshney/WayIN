import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wayin/Features/Authentication/Screens/Signup.dart';
import 'Intropage1.dart';
import 'Intropage2.dart';
import 'Intropage3.dart';

class Onboarding extends StatefulWidget {
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  //controller is to keep track on which page we are
  final PageController _controller = PageController();

  //keep track whether we are on last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        PageView(
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          controller: _controller,
          children: const [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
        Container(
            alignment: const Alignment(0, 0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(3);
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const WormEffect(
                    type: WormType.normal,
                    activeDotColor: Colors.black,
                  ),
                ),
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Signup()));
                        },
                        child: const Text(
                          'Signup',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        },
                        child: const Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )
              ],
            ))
      ],
    )));
  }
}
