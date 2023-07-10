import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sky_view_weather_app/core/constants/constants.dart';
import 'package:sky_view_weather_app/presentation/screens/home/home_screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaY: 3, sigmaX: 3),
            child: Image.asset(
              kHomeImage,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          const HomeScreen()
        ],
      ),
    );
  }
}
