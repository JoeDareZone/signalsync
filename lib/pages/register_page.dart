import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:signalsync/components/my_button.dart';
import 'package:signalsync/components/my_textfield.dart';
import 'package:signalsync/components/square_tile.dart';
import 'package:signalsync/pages/login_page.dart';
import 'package:signalsync/services/auth_service.dart';
import 'package:signalsync/theme/colors.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      print(e.code);
      if (e.code == 'invalid-email') {
        wrongEmailMessage();
      } else if (e.code == 'wrong-password') {
        wrongPasswordMessage();
      }
    }
  }

  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: AppColors.accentOrange,
          title: Center(
            child: Text(
              'User not found.\n\nPlease check your email and password combination.',
              style: TextStyle(color: AppColors.white),
            ),
          ),
        );
      },
    );
  }

  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              'Incorrect Password',
              style: TextStyle(color: AppColors.white),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 50),
              Text(
                'Sign Up Here!',
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
              const SizedBox(height: 10),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 35),
              MyButton(
                buttonType: 'primary',
                onTap: signUserIn,
                buttonText: 'Sign Up',
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(
                      onTap: () => AuthService().signInWithGoogle(),
                      imagePath: 'lib/assets/google.png'),
                  SizedBox(width: 25),
                  SquareTile(
                      onTap: () => print('hi'),
                      imagePath: 'lib/assets/apple.png')
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already a member?',
                    style: TextStyle(color: AppColors.black),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    })),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        // fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColors.accentOrange,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
