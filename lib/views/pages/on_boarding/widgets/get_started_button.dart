import 'package:first_app/views/constants/colors.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {

  final Function onTap;

  const GetStartedButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: MyFirstAppColors.blue,
      borderRadius: BorderRadius.circular(1000000),
      child: InkWell(
        onTap: (){
          onTap();
        },
        borderRadius: BorderRadius.circular(1000000),
        child: const SizedBox(
          height: 53, width: double.infinity,
          child: Center(
            child: Text(
              "Let's Get Started",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 18
              ),
            ),
          ),
        ),
      ),
    );
  }
}