import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:signalsync/theme/colors.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryGreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 55.0),
            child: Text(
              'Connection Anywhere',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Center(
            child: Lottie.network(
              'https://lottie.host/e7b1b266-1c9b-4796-8d5a-40678bcf86ab/fd4mv2CaXu.json',
              width: 280,
              height: 280,
              fit: BoxFit.scaleDown,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 60, bottom: 20, left: 50, right: 50),
            child: Text(
              'Direct to Cell technology for global connectivity',
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
