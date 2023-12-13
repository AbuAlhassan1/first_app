import 'package:first_app/views/pages/home/widgets/home_header.dart';
import 'package:first_app/views/pages/home/widgets/recomended_slider.dart';
import 'package:first_app/views/pages/home/widgets/services_bar.dart';
import 'package:flutter/material.dart';

class HomePagesWrapper extends StatelessWidget {
  const HomePagesWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Home Header -- Start --
          const HomeHeader(),
          // Home Header -- End --

          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: const [
                // Recomended -- Start --
                RecomendedSlider(),
                // Recomended -- End --

                SizedBox(height: 20),

                // Services -- Start --
                ServicesBar(),
                // Services -- End --
              ]
              +
              List<Widget>.generate(
                10,
                (index) => Container(
                  height: 200, width: double.infinity,
                  margin: const EdgeInsets.all(10),
                  color: Colors.yellow,
                )
              ),
            )
          )
        ],
      ),
    );
  }
}