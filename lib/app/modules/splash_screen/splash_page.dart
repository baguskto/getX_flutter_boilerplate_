import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isee/app/routes/app_pages.dart';
import 'package:splashscreen/splashscreen.dart';

import 'splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SplashScreen(
            imageBackground: AssetImage(
              'assets/img/splash.png',
            ),
            seconds: 3,
            gradientBackground: RadialGradient(colors: [
              Color(0xFF6485C1),
              Color(0xFF3A5A97),
            ]),
            navigateAfterSeconds: AppRoutes.ONBOARDING,
            loaderColor: Colors.transparent,
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/dollar.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
