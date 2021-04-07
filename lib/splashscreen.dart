import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {},
        child: Scaffold(
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                  gradient: RadialGradient(colors: [
                Color(0xFF6485C1),
                Color(0xFF3A5A97),
              ])),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/img/splash.png',
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
