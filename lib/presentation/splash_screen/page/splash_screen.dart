import 'package:flutter/material.dart';
import 'package:movie_app/core/configs/assets/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage(AppImages.splashBackground),
                fit: BoxFit.none)),
      ),
    );
  }
}
