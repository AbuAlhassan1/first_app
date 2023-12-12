import 'package:first_app/views/constants/colors.dart';
import 'package:flutter/material.dart';

class SignInHintLink extends StatelessWidget {
  const SignInHintLink({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          color: MyFirstAppColors.offBlack,
          fontSize: 19,
          fontWeight: FontWeight.w400,
        ),
        children: [
          const TextSpan(text: "Already have an account?"),
          TextSpan(
            text: " Sign In",
            style: TextStyle(
              color: MyFirstAppColors.blue,
              decoration: TextDecoration.underline
            )
          ),
        ]
      )
    );
  }
}