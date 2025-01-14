import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signalsync/components/my_button.dart';
import 'package:signalsync/pages/login_page.dart';
import 'package:signalsync/pages/register_page.dart';
import 'package:signalsync/theme/colors.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/assets/logo.png',
                    height: 160,
                    width: 160,
                    color: Colors.teal,
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'SignalSync',
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                    buttonType: 'secondary',
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    })),
                    buttonText: 'Log in',
                  ),
                  const SizedBox(height: 25),
                  MyButton(
                    buttonType: 'primary',
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegisterPage();
                    })),
                    buttonText: 'Sign Up',
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
