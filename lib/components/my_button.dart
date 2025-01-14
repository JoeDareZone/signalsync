import 'package:flutter/material.dart';
import 'package:signalsync/theme/colors.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String buttonType;
  final String buttonText;

  const MyButton({
    super.key,
    required this.onTap,
    required this.buttonType,
    required this.buttonText,
  }) : assert(
          buttonType == 'primary' || buttonType == 'secondary',
          'buttonType must be "primary" or "secondary"',
        );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: buttonType == 'primary'
              ? AppColors.black
              : AppColors.accentOrange,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
