import 'package:first_app/views/constants/colors.dart';
import 'package:first_app/views/pages/home/widgets/notification_button.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w400
      ),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: MyFirstAppColors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Location",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.4),
                          fontSize: 14
                        )
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          Icon(Icons.location_on_rounded, color: Colors.orange),
                          SizedBox(width: 10),
                          Text("New Yourk, USA"),
                          Icon(Icons.keyboard_arrow_down_rounded, color: Colors.yellow),
                        ],
                      )
                    ],
                  ),
      
                  const NotificationButton()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}