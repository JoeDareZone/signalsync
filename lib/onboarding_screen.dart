import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(color: Colors.blue[800],),
          Container(color: Colors.yellow[800],),
          Container(color: Colors.green[800],),
        ]
      )
    );
  }
}