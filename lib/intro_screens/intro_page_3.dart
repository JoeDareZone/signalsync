import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text above the Lottie animation
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              'Achieve Your Goals!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          // Lottie animation
          Lottie.network(
            'https://lottie.host/e7b1b266-1c9b-4796-8d5a-40678bcf86ab/fd4mv2CaXu.json',
            width: 400,
            height: 400,
          ),
          // Text below the Lottie animation
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'Track your progress and reach new heights every day.',
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
