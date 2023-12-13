import 'dart:developer';

import 'package:first_app/views/pages/on_boarding/widgets/get_started_button.dart';
import 'package:first_app/views/pages/on_boarding/widgets/sign_in_hint_link.dart';
import 'package:first_app/views/pages/on_boarding/widgets/sub_welcome_text.dart';
import 'package:first_app/views/pages/on_boarding/widgets/welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingPageWrapper extends StatelessWidget {
  const OnBoardingPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            
            Expanded(
              flex: 3,
              child: SafeArea(
                child: ClipPath(
                  clipper: ImageClipper(),
                  child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      "assets/images/cute_girl.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 50),
              child: Column(
                children: [
                  // Big Text ...
                  const WelcomeText(),
            
                  const SizedBox(height: 20),
            
                  // Small Text ...
                  const SubWelcomeText(),
            
                  const SizedBox(height: 20),
            
                  // Button ...
                  GetStartedButton(onTap: (){
                    context.push("/");
                  }),
            
                  const SizedBox(height: 20),
                  
                  // Sign in Hint Link ...
                  const SignInHintLink(),
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}

class ImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();

    path.lineTo(0, size.height - (size.height * 0.1));
    path.quadraticBezierTo((size.width * 0.5), size.height, size.width, (size.height - (size.height * 0.1)));
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;

}