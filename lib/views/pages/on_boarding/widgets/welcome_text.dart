import 'package:first_app/views/constants/colors.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          color: MyFirstAppColors.black,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        children: [
          const TextSpan(text: "Let's"),
          TextSpan(
            text: " Find the Top-notch\nLaundry",
            style: TextStyle(color: MyFirstAppColors.blue)
          ),
          const TextSpan(
            text: " Services",
          ),
        ]
      )
    );
  }
}