import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signalsync/intro_screens/intro_page_1.dart';
import 'package:signalsync/intro_screens/intro_page_2.dart';
import 'package:signalsync/intro_screens/intro_page_3.dart';
import 'package:signalsync/pages/auth_page.dart';
import 'package:signalsync/pages/home_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      PageView(
          controller: _controller,
          onPageChanged: (index) => {
                setState(() {
                  isLastPage = (index == 2);
                })
              },
          children: [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ]),
      Container(
        alignment: Alignment(0, 0.75),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => _controller.jumpToPage(2),
              child: Text(
                'Skip',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: WormEffect(
                dotColor: Colors.white70,
                activeDotColor: Colors.white,
              ),
            ),
            isLastPage
                ? GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AuthPage();
                    })),
                    child: Text(
                      'Done',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  )
                : GestureDetector(
                    onTap: () => _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn),
                    child: Text(
                      'Next',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  )
          ],
        ),
      )
    ]));
  }
}
