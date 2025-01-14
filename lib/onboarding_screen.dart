import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController();

    return Scaffold(
        body: Stack(children: [
      PageView(controller: _controller, children: [
        Container(
          color: Colors.blue[800],
        ),
        Container(
          color: Colors.yellow[800],
        ),
        Container(
          color: Colors.green[800],
        ),
      ]),
      Container(alignment: Alignment(0, 0.75),
        child: SmoothPageIndicator(controller: _controller, count: 3))
    ]));
  }
}
