import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:signalsync/theme/colors.dart';

class IntroPage3 extends StatelessWidget {
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
              'Connection Anywhere',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Lottie.network(
            'https://lottie.host/e7b1b266-1c9b-4796-8d5a-40678bcf86ab/fd4mv2CaXu.json',
            width: 350,
            height: 350,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'With direct satellite connection',
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
