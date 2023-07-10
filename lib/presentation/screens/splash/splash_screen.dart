import 'package:flutter/material.dart';
import 'package:sky_view_weather_app/core/constants/constants.dart';
import 'package:sky_view_weather_app/presentation/screens/main_page/main_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the home screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainPage()),
      );
    });

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(kLogoImage),
              ),
            ),
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 250),
                CircularProgressIndicator(
                  color: Colors.white70,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
