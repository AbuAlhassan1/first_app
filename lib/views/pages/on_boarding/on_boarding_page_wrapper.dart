import 'package:first_app/views/pages/on_boarding/widgets/get_started_button.dart';
import 'package:first_app/views/pages/on_boarding/widgets/sign_in_hint_link.dart';
import 'package:first_app/views/pages/on_boarding/widgets/sub_welcome_text.dart';
import 'package:first_app/views/pages/on_boarding/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class OnBoardingPageWrapper extends StatelessWidget {
  const OnBoardingPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              
              Expanded(
                flex: 3,
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/cute_girl.jpg",
                    fit: BoxFit.cover,
                  ),
                )
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                child: Column(
                  children: [
                    // Big Text ...
                    WelcomeText(),
              
                    SizedBox(height: 20),
              
                    // Small Text ...
                    SubWelcomeText(),
              
                    SizedBox(height: 20),
              
                    // Button ...
                    GetStartedButton(),
              
                    SizedBox(height: 20),
                    
                    // Sign in Hint Link ...
                    SignInHintLink(),
                  ],
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}