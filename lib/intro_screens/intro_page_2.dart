import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text above the Lottie animation
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              'Stay Connected!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          // Lottie animation
          Lottie.network(
            'https://lottie.host/aab5a171-df87-4abe-8d50-7c4d1766ae97/GF2XGSbnRm.json',
            width: 400,
            height: 400,
          ),
          // Text below the Lottie animation
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'Connect with friends and family effortlessly.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
