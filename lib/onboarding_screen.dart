import 'package:flutter/material.dart';
import 'package:signalsync/intro_screens/intro_page_1.dart';
import 'package:signalsync/intro_screens/intro_page_2.dart';
import 'package:signalsync/intro_screens/intro_page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController();

    return Scaffold(
        body: Stack(children: [
      PageView(controller: _controller, children: [
        IntroPage1(),
        IntroPage2(),
        IntroPage3(),
      ]),
      Container(
          alignment: Alignment(0, 0.75),
          child: SmoothPageIndicator(controller: _controller, count: 3))
    ]));
  }
}
