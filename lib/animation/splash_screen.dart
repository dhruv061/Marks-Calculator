import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:gtu_marks/pages/HomePage.dart';
import 'package:hexcolor/hexcolor.dart';

class splashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: AnimatedSplashScreen(
          splash: Image.asset(
            "assets/images/Splach_Screen_Logo.png",
          ),
          nextScreen: HomePage(),
          //for image size
          splashIconSize: 250,
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: HexColor("#242E38"),
          duration: 3500,
        ),
      ),
    );
  }
}
