import "package:flutter/material.dart";
import 'package:gtu_marks/animation/splash_screen.dart';
import 'package:gtu_marks/pages/AboutMe.dart';
import 'package:gtu_marks/pages/CGPA.dart';
import 'package:gtu_marks/pages/CPI.dart';
import 'package:gtu_marks/pages/HomePage.dart';
import 'package:gtu_marks/pages/PercentagePage.dart';
import 'package:gtu_marks/pages/SPI.dart';

void main() {
  return runApp(GTU_Marks_Caluculator());
}

class GTU_Marks_Caluculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splashScreen(),
    );
  }
}
