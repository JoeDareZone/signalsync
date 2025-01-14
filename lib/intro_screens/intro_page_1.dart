import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text above the Lottie animation
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              'Unmatched Speeds!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          // Lottie animation
          Lottie.network(
            'https://lottie.host/d590c461-018d-4ebc-8b4e-14db5769855f/HneLtTPMlA.json',
            width: 400,
            height: 400,
          ),
          // Text below the Lottie animation
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'For all your needs',
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
