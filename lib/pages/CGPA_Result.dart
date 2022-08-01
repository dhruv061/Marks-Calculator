// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gtu_marks/pages/HomePage.dart';
import 'package:hexcolor/hexcolor.dart';

class CGPAResult extends StatefulWidget {
  //store value from CGPA.dart Page
  String getEarnedGreadPoint;
  String getEarnedCreaditPoint;

  CGPAResult({
    Key? key,
    required this.getEarnedGreadPoint,
    required this.getEarnedCreaditPoint,
  }) : super(key: key);

  @override
  State<CGPAResult> createState() => _CGPAResultState();
}

class _CGPAResultState extends State<CGPAResult> {
  //converted Variable
  double final_EarnedGreadPoint = 0.0;

  double final_EarneCreaditPoint = 0.0;

  //final Result
  double CGPA = 0.0;

  //Convert String Value to Double Type Value
  void Convert() {
    final_EarnedGreadPoint = double.parse(widget.getEarnedGreadPoint);
    final_EarneCreaditPoint = double.parse(widget.getEarnedCreaditPoint);

    //final Result
    double result = (final_EarnedGreadPoint / final_EarneCreaditPoint);

    //rounded into 2 number in double after .
    double temp = double.parse((result).toStringAsFixed(2));

    CGPA = temp;

    if (mounted) {
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    Convert();
  }

//******************************************************************************************************* */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#3D5A80"),
      body: SafeArea(
        child: Column(
          children: [
            //for Image
            Container(
              margin: EdgeInsets.only(top: 50, left: 88, right: 40),
              height: 262,
              width: 220,
              // color: Colors.white,
              child: Image.asset(
                "assets/images/CGPA_Result.png",
                fit: BoxFit.cover,
              ),
            ),

            //circule box
            Container(
              margin: EdgeInsets.only(left: 10, top: 30),

              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: HexColor("#98C1D9"),
                shape: BoxShape.circle,
              ),

              //for CGPA text and getting Result
              child: Column(
                children: [
                  //for Geeting CGPA Result
                  Container(
                    padding: EdgeInsets.only(left: 9, top: 40),
                    child: Text(
                      "$CGPA",
                      style: TextStyle(
                          fontFamily: "RobotoSlab",
                          color: HexColor("#242E38"),
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          shadows: const [
                            Shadow(color: Colors.white, blurRadius: 15)
                          ]),
                    ),
                  ),

                  //for CGPA text
                  Container(
                    padding: EdgeInsets.only(top: 3, left: 8),
                    child: Text(
                      "CGPA",
                      style: TextStyle(
                          fontFamily: "RobotoSlab",
                          color: HexColor("#242E38"),
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          shadows: const [
                            Shadow(color: Colors.white, blurRadius: 12)
                          ]),
                    ),
                  ),
                ],
              ),
            ),

            //for home button
            Container(
              margin: EdgeInsets.only(top: 30, left: 15),

              height: 48,
              width: 95,
              // color: Colors.white,
              child: TextButton(
                //goto SPI Page
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },

                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(HexColor("#242E38")),

                  //for circular border radius for button
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),

                //for button text
                child: const Text(
                  "Home",
                  style: TextStyle(
                    letterSpacing: 0.4,
                    fontFamily: "RobotoSlab",
                    fontSize: 24,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 8,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
