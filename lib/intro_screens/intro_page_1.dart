import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:signalsync/theme/colors.dart';

class IntroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryGreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              'Welcome to SignalSync!',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Lottie.network(
            'https://lottie.host/d590c461-018d-4ebc-8b4e-14db5769855f/HneLtTPMlA.json',
            width: 350,
            height: 350,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'Get ready for unmatched speed',
              style: GoogleFonts.roboto(
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
