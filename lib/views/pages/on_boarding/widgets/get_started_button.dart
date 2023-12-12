import 'package:first_app/views/constants/colors.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53, width: double.infinity,
      decoration: BoxDecoration(
        color: MyFirstAppColors.blue,
        borderRadius: BorderRadius.circular(1000000),
      ),
      child: const Center(
        child: Text(
          "Let's Get Started",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 18
          ),
        ),
      ),
    );
  }
}