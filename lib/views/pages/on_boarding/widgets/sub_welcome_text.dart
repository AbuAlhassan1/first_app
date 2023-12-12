import 'package:first_app/views/constants/colors.dart';
import 'package:flutter/material.dart';

class SubWelcomeText extends StatelessWidget {
  const SubWelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "asjdhga sjdga sjdg ajsdajgpteur pariatur.\nEst sunt ex pariatur in officia excepteur pariatur. asd",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16,
        color: MyFirstAppColors.grey
      ),
    );
  }
}