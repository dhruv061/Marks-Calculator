import "package:flutter/material.dart";
import 'package:gtu_marks/animation/splash_screen.dart';

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
