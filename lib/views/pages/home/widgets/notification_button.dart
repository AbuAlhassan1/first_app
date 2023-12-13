import 'package:flutter/material.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50, width: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Stack(
        children: [
          const Center(child: Icon(Icons.notifications, color: Colors.white)),

          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Container(
              margin: const EdgeInsets.all(15),
              height: 8, width: 8,
              decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(100)),
            ),
          ),

        ],
      ),
    );
  }
}