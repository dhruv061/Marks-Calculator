// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gtu_marks/pages/AboutMe.dart';
import 'package:gtu_marks/pages/CGPA.dart';
import 'package:gtu_marks/pages/CPI.dart';
import 'package:gtu_marks/pages/PercentagePage.dart';
import 'package:gtu_marks/pages/SPI.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor("#242E38"),

        //for multiple Container
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //for Title
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 42, right: 25),
                  width: 380,
                  height: 64,
                  // color: Colors.white,
                  child: Text(
                    "Marks Calculator",
                    style: TextStyle(
                        fontFamily: "RobotoSlab",
                        fontSize: 35,
                        color: HexColor("#EE6C4D")),
                  ),
                ),

                // //for Myinfo Button
                // Container(
                //   // margin: EdgeInsets.symmetric(horizontal: 19),
                //   height: 70,
                //   width: 70,
                //   color: Colors.white,
                //   child: IconButton(
                //     //goto About Me Page
                //     onPressed: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => About_Me_Page()));
                //     },

                //     icon: Image.asset("assets/images/AboutMeIcone.png"),
                //   ),
                // ),

                //for image and About ME Button
                Container(
                  //this is for container
                  width: 200,
                  height: 400,
                  // color: Colors.white,
                  margin: const EdgeInsets.only(left: 20, top: 20),

                  //this is for image
                  // child: Image.asset("assets/images/Homepage.png"),
                  child: Column(
                    children: [
                      //for Myinfo Button
                      Container(
                        margin: EdgeInsets.only(left: 100),
                        height: 60,
                        width: 60,
                        // color: Colors.white,
                        child: IconButton(
                          //goto About Me Page
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => About_Me_Page()));
                          },

                          icon: Image.asset("assets/images/AboutMeIcone.png"),
                        ),
                      ),

                      //for image
                      Container(
                        child: Image.asset("assets/images/Homepage.png"),
                      ),
                    ],
                  ),
                ),

                //for first two Button
                Container(
                  margin: const EdgeInsets.only(top: 15, left: 20, right: 25),

                  // color: Colors.white,

                  //for first two button SPI & CPI
                  child: Row(
                    children: [
                      //SPI Button
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 15),
                        // color: Colors.white,
                        child: SizedBox(
                          height: 50,
                          width: 128,
                          child: TextButton(
                            //goto SPI Page
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SPI_Page()));
                            },

                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  HexColor("#3D5A80")),

                              //for circular border radius for button
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                              ),

                              //for change the button colour
                              //here getColor is metohd
                              overlayColor: getColor(
                                  HexColor("#3D5A80"), HexColor("#EE6C4D")),
                            ),

                            //for button text
                            child: const Text(
                              "SPI",
                              style: TextStyle(
                                letterSpacing: 0.4,
                                fontFamily: "RobotoSlab",
                                fontSize: 24,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Colors.black,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      //for gap between SPI & CPI button
                      const SizedBox(
                        width: 8,
                      ),

                      //for CPI Button
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 15),
                        // color: Colors.white,
                        child: SizedBox(
                          height: 50,
                          width: 128,
                          child: TextButton(
                            //goto CPI Page
                            //goto SPI Page
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CPI_Page()));
                            },

                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  HexColor("#3D5A80")),

                              //for circular border radius for button
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                              ),

                              //for change the button colour
                              //here getColor is metohd
                              overlayColor: getColor(
                                  HexColor("#3D5A80"), HexColor("#EE6C4D")),
                            ),

                            //for button text
                            child: const Text(
                              "CPI",
                              style: TextStyle(
                                letterSpacing: 0.4,
                                fontFamily: "RobotoSlab",
                                fontSize: 24,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Colors.black,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //for secound two button
                Container(
                  margin: const EdgeInsets.only(top: 30, left: 20, right: 25),
                  // color: Colors.white,/

                  //for secound two button CGPA & ME
                  child: Row(
                    children: [
                      //for CGPA button
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 7),
                        // color: Colors.white,
                        child: SizedBox(
                          height: 50,
                          width: 128,
                          child: TextButton(
                            //goto CGPA page
                            //goto SPI Page
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CGPA_Page()));
                            },

                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  HexColor("#3D5A80")),

                              //for circular border radius for button
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                              ),

                              //for change the button colour
                              //here getColor is metohd
                              overlayColor: getColor(
                                  HexColor("#3D5A80"), HexColor("#EE6C4D")),
                            ),

                            //for button text
                            child: const Text(
                              "CGPA",
                              style: TextStyle(
                                letterSpacing: 0.4,
                                fontFamily: "RobotoSlab",
                                fontSize: 24,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Colors.black,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      //for gap between CGPA & Me button
                      const SizedBox(
                        width: 8,
                      ),

                      //for Percentage button
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 7),
                        // color: Colors.white,
                        child: SizedBox(
                          height: 50,
                          width: 128,
                          child: TextButton(
                            //goto Percentage Page

                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PercentagePage()));
                            },

                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  HexColor("#3D5A80")),

                              //for circular border radius for button
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                              ),

                              //for change the button colour
                              //here getColor is metohd
                              overlayColor: getColor(
                                  HexColor("#3D5A80"), HexColor("#EE6C4D")),
                            ),

                            //for button text
                            child: const Text(
                              "%",
                              style: TextStyle(
                                letterSpacing: 0.4,
                                fontFamily: "RobotoSlab",
                                fontSize: 24,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Colors.black,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //for change the button  colour method
  MaterialStateProperty<HexColor> getColor(
      HexColor hexColor, HexColor colorPressed) {
    final getColor = (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return colorPressed;
      } else {
        return hexColor;
      }
    };
    return MaterialStateProperty.resolveWith(getColor);
  }
}
